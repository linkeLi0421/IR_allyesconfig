; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm85.c_pt.bc'
source_filename = "../drivers/hwmon/lm85.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
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
%struct.lm85_data = type { ptr, [6 x ptr], ptr, i32, i32, i8, %struct.mutex, i8, i32, i32, [8 x i8], [8 x i8], [8 x i8], [3 x i8], [3 x i8], [3 x i8], [4 x i16], [4 x i16], [3 x i8], [3 x i8], [3 x i8], [8 x i8], i8, i8, i32, i8, [3 x %struct.lm85_autofan], [3 x %struct.lm85_zone] }
%struct.lm85_autofan = type { i8, i8, i8 }
%struct.lm85_zone = type { i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm85__336_1707_lm85_driver_init6 = internal global ptr @lm85_driver_init, section ".initcall6.init", align 4
@lm85_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm85_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm85_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm85_id, ptr @lm85_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm85_driver_exit = internal global ptr @lm85_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file337 = internal constant [29 x i8] c"lm85.file=drivers/hwmon/lm85\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [17 x i8] c"lm85.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author339 = internal constant [155 x i8] c"lm85.author=Philip Pokorny <ppokorny@penguincomputing.com>, Margit Schubert-While <margitsw@t-online.de>, Justin Thiessen <jthiessen@penguincomputing.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [39 x i8] c"lm85.description=LM85-B, LM85-C driver\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm85\00", [27 x i8] zeroinitializer }, align 32
@lm85_of_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adm1027\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7463\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7468\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm85\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm85b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm85c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm96000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,emc6d100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,emc6d101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,emc6d102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,emc6d103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,emc6d103s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@lm85_id = internal constant { [13 x %struct.i2c_device_id], [72 x i8] } { [13 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1027\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"adt7463\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"adt7468\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"lm85\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm85b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm85c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm96000\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"emc6d100\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"emc6d101\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"emc6d102\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"emc6d103\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"emc6d103s\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@lm85_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@adm1027_freq_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 11, i32 15, i32 22, i32 29, i32 35, i32 44, i32 59, i32 88], [32 x i8] zeroinitializer }, align 32
@lm96000_freq_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 10, i32 15, i32 23, i32 30, i32 38, i32 47, i32 61, i32 94, i32 22500, i32 24000, i32 25700, i32 25700, i32 27700, i32 27700, i32 30000, i32 30000], [32 x i8] zeroinitializer }, align 32
@lm85_freq_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 10, i32 15, i32 23, i32 30, i32 38, i32 47, i32 61, i32 94], [32 x i8] zeroinitializer }, align 32
@lm85_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm85_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm85_group_minctl = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm85_attributes_minctl, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm85_group_temp_off = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm85_attributes_temp_off, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm85_group_in4 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm85_attributes_in4, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm85_group_in567 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm85_attributes_in567, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm85_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Starting monitoring\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm85_init_client\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm85.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm85_init_client._entry_ptr = internal global ptr @lm85_init_client._entry, section ".printk_index", align 4
@lm85_init_client._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1440, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device configuration is locked\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lm85_init_client._entry_ptr.10 = internal global ptr @lm85_init_client._entry.7, section ".printk_index", align 4
@lm85_init_client._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1442, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device is not ready\0A\00", [43 x i8] zeroinitializer }, align 32
@lm85_init_client._entry_ptr.13 = internal global ptr @lm85_init_client._entry.11, section ".printk_index", align 4
@lm85_attributes = internal global { [70 x ptr], [72 x i8] } { [70 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_pwm1_auto_channels, ptr @sensor_dev_attr_pwm2_auto_channels, ptr @sensor_dev_attr_pwm3_auto_channels, ptr @sensor_dev_attr_pwm1_auto_pwm_min, ptr @sensor_dev_attr_pwm2_auto_pwm_min, ptr @sensor_dev_attr_pwm3_auto_pwm_min, ptr @sensor_dev_attr_temp1_auto_temp_min, ptr @sensor_dev_attr_temp2_auto_temp_min, ptr @sensor_dev_attr_temp3_auto_temp_min, ptr @sensor_dev_attr_temp1_auto_temp_max, ptr @sensor_dev_attr_temp2_auto_temp_max, ptr @sensor_dev_attr_temp3_auto_temp_max, ptr @sensor_dev_attr_temp1_auto_temp_crit, ptr @sensor_dev_attr_temp2_auto_temp_crit, ptr @sensor_dev_attr_temp3_auto_temp_crit, ptr @dev_attr_vrm, ptr @dev_attr_cpu0_vid, ptr @dev_attr_alarms, ptr null], [72 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_freq_show, ptr @pwm_freq_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_freq_show, ptr @pwm_freq_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_freq_show, ptr @pwm_freq_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_channels = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_channels_show, ptr @pwm_auto_channels_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_channels = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_channels_show, ptr @pwm_auto_channels_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_channels = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_channels_show, ptr @pwm_auto_channels_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_pwm_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_pwm_min_show, ptr @pwm_auto_pwm_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_pwm_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_pwm_min_show, ptr @pwm_auto_pwm_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_pwm_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_pwm_min_show, ptr @pwm_auto_pwm_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_temp_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_min_show, ptr @temp_auto_temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_temp_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_min_show, ptr @temp_auto_temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_temp_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_min_show, ptr @temp_auto_temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_temp_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_max_show, ptr @temp_auto_temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_temp_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_max_show, ptr @temp_auto_temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_temp_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_max_show, ptr @temp_auto_temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_temp_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_crit_show, ptr @temp_auto_temp_crit_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_temp_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_crit_show, ptr @temp_auto_temp_crit_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_temp_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_crit_show, ptr @temp_auto_temp_crit_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lm85_update_device.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm85_update_device\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reading sensor values\0A\00", [41 x i8] zeroinitializer }, align 32
@lm85_update_device.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reading config values\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@lm85_zone_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 3, i32 -1, i32 0, i32 23, i32 123, i32 -2], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@lm85_scaling = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2500, i32 2250, i32 3300, i32 5000, i32 12000, i32 3300, i32 1500, i32 1800], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm1_auto_channels\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm2_auto_channels\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm3_auto_channels\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm1_auto_pwm_min\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm2_auto_pwm_min\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm3_auto_pwm_min\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp1_auto_temp_min\00", [44 x i8] zeroinitializer }, align 32
@lm85_range_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2000, i32 2500, i32 3300, i32 4000, i32 5000, i32 6600, i32 8000, i32 10000, i32 13300, i32 16000, i32 20000, i32 26600, i32 32000, i32 40000, i32 53300, i32 80000], [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp2_auto_temp_min\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp3_auto_temp_min\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp1_auto_temp_max\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp2_auto_temp_max\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp3_auto_temp_max\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp1_auto_temp_crit\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp2_auto_temp_crit\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp3_auto_temp_crit\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@lm85_attributes_minctl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_pwm1_auto_pwm_minctl, ptr @sensor_dev_attr_pwm2_auto_pwm_minctl, ptr @sensor_dev_attr_pwm3_auto_pwm_minctl, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_pwm_minctl = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_pwm_minctl_show, ptr @pwm_auto_pwm_minctl_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_pwm_minctl = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_pwm_minctl_show, ptr @pwm_auto_pwm_minctl_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_pwm_minctl = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_pwm_minctl_show, ptr @pwm_auto_pwm_minctl_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_pwm_minctl\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_pwm_minctl\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_pwm_minctl\00", [43 x i8] zeroinitializer }, align 32
@lm85_attributes_temp_off = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_temp1_auto_temp_off, ptr @sensor_dev_attr_temp2_auto_temp_off, ptr @sensor_dev_attr_temp3_auto_temp_off, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_temp_off = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_off_show, ptr @temp_auto_temp_off_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_temp_off = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_off_show, ptr @temp_auto_temp_off_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_temp_off = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_temp_off_show, ptr @temp_auto_temp_off_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp1_auto_temp_off\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp2_auto_temp_off\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp3_auto_temp_off\00", [44 x i8] zeroinitializer }, align 32
@lm85_attributes_in4 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@lm85_attributes_in567 = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 18 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@lm85_detect.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.4, ptr @.str.112, i8 1, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm85_detect\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Detecting device at 0x%02x with COMPANY: 0x%02x and VERSTEP: 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lm85c\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lm85b\00", [26 x i8] zeroinitializer }, align 32
@lm85_detect.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.4, ptr @.str.115, i8 1, i8 118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Found Winbond WPCD377I, ignoring\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm96000\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1027\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7463\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7468\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emc6d100\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emc6d102\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emc6d103\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emc6d103s\00", [22 x i8] zeroinitializer }, align 32
@switch.table.lm85_probe = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @lm96000_freq_map, ptr @adm1027_freq_map, ptr @adm1027_freq_map, ptr @adm1027_freq_map, ptr @adm1027_freq_map, ptr @adm1027_freq_map, ptr @adm1027_freq_map, ptr @adm1027_freq_map], [32 x i8] zeroinitializer }, align 32
@switch.table.lm85_probe.124 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.lm85_detect = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.120, ptr @.str.120, ptr @.str.120, ptr @.str.120, ptr @.str.120, ptr @.str.121, ptr @.str.120, ptr @.str.120, ptr @.str.122, ptr @.str.122, ptr @.str.123], [52 x i8] zeroinitializer }, align 32
@switch.table.pwm_enable_show = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.pwm_enable_store = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 96, i32 224, i32 192], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 65, i64 92]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 32, i64 96, i64 98, i64 104, i64 105]
@__sancov_gen_cov_switch_values.126 = internal global [7 x i64] [i64 5, i64 32, i64 96, i64 98, i64 106, i64 113, i64 114]
@__sancov_gen_cov_switch_values.127 = internal global [11 x i64] [i64 9, i64 8, i64 40, i64 42, i64 44, i64 46, i64 65, i64 84, i64 86, i64 88, i64 90]
@__sancov_gen_cov_switch_values.128 = internal global [10 x i64] [i64 8, i64 8, i64 40, i64 42, i64 44, i64 46, i64 84, i64 86, i64 88, i64 90]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.130 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.132 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 23, i64 123, i64 4294967294, i64 4294967295]
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"lm85_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1695, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1698, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"lm85_of_match\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1642, i32 49 }
@___asan_gen_.142 = private unnamed_addr constant [8 x i8] c"lm85_id\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1625, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 28, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1565, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"adm1027_freq_map\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 196, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"lm96000_freq_map\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 191, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"lm85_freq_map\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 187, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"lm85_group\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1369, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"lm85_group_minctl\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1380, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"lm85_group_temp_off\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1391, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"lm85_group_in4\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1403, i32 37 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"lm85_group_in567\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1423, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1434, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1440, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1442, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"lm85_attributes\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1290, i32 26 }
@___asan_gen_.214 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_freq\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_freq\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_freq\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_pwm1_auto_channels\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_pwm2_auto_channels\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_pwm3_auto_channels\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm1_auto_pwm_min\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm2_auto_pwm_min\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm3_auto_pwm_min\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp1_auto_temp_min\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp2_auto_temp_min\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp3_auto_temp_min\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp1_auto_temp_max\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp2_auto_temp_max\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp3_auto_temp_max\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_temp1_auto_temp_crit\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_temp2_auto_temp_crit\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_temp3_auto_temp_crit\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 589, i32 8 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 557, i32 22 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 379, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 472, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 591, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 593, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 595, i32 8 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 590, i32 8 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 592, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 594, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 596, i32 8 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 676, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 660, i32 22 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 677, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 678, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 679, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 831, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 834, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 837, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 832, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant [14 x i8] c"lm85_zone_map\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 224, i32 18 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 835, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 838, i32 8 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 833, i32 8 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 836, i32 8 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 839, i32 8 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 908, i32 8 }
@___asan_gen_.505 = private unnamed_addr constant [13 x i8] c"lm85_scaling\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 120, i32 18 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 911, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 914, i32 8 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 917, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 909, i32 8 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 912, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 915, i32 8 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 918, i32 8 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 910, i32 8 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 913, i32 8 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 916, i32 8 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 919, i32 8 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 663, i32 8 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 664, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 665, i32 8 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 666, i32 8 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1008, i32 8 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1011, i32 8 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1014, i32 8 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1009, i32 8 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1012, i32 8 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1015, i32 8 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1010, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1013, i32 8 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1016, i32 8 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 671, i32 8 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 673, i32 8 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 674, i32 8 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 672, i32 8 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 675, i32 8 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1117, i32 8 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1120, i32 8 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1123, i32 8 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1118, i32 8 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1121, i32 8 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1124, i32 8 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1278, i32 8 }
@___asan_gen_.616 = private unnamed_addr constant [15 x i8] c"lm85_range_map\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 175, i32 18 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1282, i32 8 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1286, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1279, i32 8 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1283, i32 8 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1287, i32 8 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1280, i32 8 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1284, i32 8 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1288, i32 8 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 644, i32 8 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 623, i32 22 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 617, i32 8 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 653, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant [23 x i8] c"lm85_attributes_minctl\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1373, i32 26 }
@___asan_gen_.658 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_pwm_minctl\00", align 1
@___asan_gen_.661 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_pwm_minctl\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_pwm_minctl\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1119, i32 8 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1122, i32 8 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1125, i32 8 }
@___asan_gen_.676 = private unnamed_addr constant [25 x i8] c"lm85_attributes_temp_off\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1384, i32 26 }
@___asan_gen_.679 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp1_auto_temp_off\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp2_auto_temp_off\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_temp3_auto_temp_off\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1277, i32 8 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1281, i32 8 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1285, i32 8 }
@___asan_gen_.697 = private unnamed_addr constant [20 x i8] c"lm85_attributes_in4\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1395, i32 26 }
@___asan_gen_.700 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 920, i32 8 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 921, i32 8 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 922, i32 8 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 667, i32 8 }
@___asan_gen_.724 = private unnamed_addr constant [22 x i8] c"lm85_attributes_in567\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1407, i32 26 }
@___asan_gen_.727 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.730 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.733 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.742 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.745 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.748 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.751 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.754 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.757 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.760 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 923, i32 8 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 926, i32 8 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 929, i32 8 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 924, i32 8 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 927, i32 8 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 930, i32 8 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 925, i32 8 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 928, i32 8 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 931, i32 8 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 668, i32 8 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 669, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 670, i32 8 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1482, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1489, i32 16 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1492, i32 16 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1498, i32 5 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1502, i32 16 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1508, i32 16 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1512, i32 16 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1516, i32 16 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1524, i32 16 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1527, i32 16 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1531, i32 16 }
@___asan_gen_.835 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.836 = private constant [24 x i8] c"../drivers/hwmon/lm85.c\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1534, i32 16 }
@___asan_gen_.838 = private unnamed_addr constant [24 x i8] c"switch.table.lm85_probe\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [28 x i8] c"switch.table.lm85_probe.124\00", align 1
@___asan_gen_.840 = private unnamed_addr constant [25 x i8] c"switch.table.lm85_detect\00", align 1
@___asan_gen_.841 = private unnamed_addr constant [29 x i8] c"switch.table.pwm_enable_show\00", align 1
@___asan_gen_.842 = private unnamed_addr constant [30 x i8] c"switch.table.pwm_enable_store\00", align 1
@llvm.compiler.used = appending global [250 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_lm85_driver_exit, ptr @__initcall__kmod_lm85__336_1707_lm85_driver_init6, ptr @lm85_driver_exit, ptr @lm85_init_client._entry, ptr @lm85_init_client._entry.11, ptr @lm85_init_client._entry.7, ptr @lm85_init_client._entry_ptr, ptr @lm85_init_client._entry_ptr.10, ptr @lm85_init_client._entry_ptr.13, ptr @lm85_driver, ptr @.str, ptr @lm85_of_match, ptr @lm85_id, ptr @normal_i2c, ptr @lm85_probe.__key, ptr @.str.1, ptr @adm1027_freq_map, ptr @lm96000_freq_map, ptr @lm85_freq_map, ptr @lm85_group, ptr @lm85_group_minctl, ptr @lm85_group_temp_off, ptr @lm85_group_in4, ptr @lm85_group_in567, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @lm85_attributes, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_pwm1_auto_channels, ptr @sensor_dev_attr_pwm2_auto_channels, ptr @sensor_dev_attr_pwm3_auto_channels, ptr @sensor_dev_attr_pwm1_auto_pwm_min, ptr @sensor_dev_attr_pwm2_auto_pwm_min, ptr @sensor_dev_attr_pwm3_auto_pwm_min, ptr @sensor_dev_attr_temp1_auto_temp_min, ptr @sensor_dev_attr_temp2_auto_temp_min, ptr @sensor_dev_attr_temp3_auto_temp_min, ptr @sensor_dev_attr_temp1_auto_temp_max, ptr @sensor_dev_attr_temp2_auto_temp_max, ptr @sensor_dev_attr_temp3_auto_temp_max, ptr @sensor_dev_attr_temp1_auto_temp_crit, ptr @sensor_dev_attr_temp2_auto_temp_crit, ptr @sensor_dev_attr_temp3_auto_temp_crit, ptr @dev_attr_vrm, ptr @dev_attr_cpu0_vid, ptr @dev_attr_alarms, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @lm85_zone_map, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @lm85_scaling, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @lm85_range_map, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @lm85_attributes_minctl, ptr @sensor_dev_attr_pwm1_auto_pwm_minctl, ptr @sensor_dev_attr_pwm2_auto_pwm_minctl, ptr @sensor_dev_attr_pwm3_auto_pwm_minctl, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @lm85_attributes_temp_off, ptr @sensor_dev_attr_temp1_auto_temp_off, ptr @sensor_dev_attr_temp2_auto_temp_off, ptr @sensor_dev_attr_temp3_auto_temp_off, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @lm85_attributes_in4, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @lm85_attributes_in567, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @switch.table.lm85_probe, ptr @switch.table.lm85_probe.124, ptr @switch.table.lm85_detect, ptr @switch.table.pwm_enable_show, ptr @switch.table.pwm_enable_store], section "llvm.metadata"
@0 = internal global [240 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_of_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_id to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1027_freq_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm96000_freq_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_freq_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_group_minctl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_group_temp_off to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_group_in4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_group_in567 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_init_client._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_init_client._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_attributes to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_channels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_channels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_channels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_pwm_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_pwm_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_pwm_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_temp_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_temp_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_temp_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_temp_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_temp_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_temp_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_temp_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_temp_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_temp_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_zone_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_scaling to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_range_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_attributes_minctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_pwm_minctl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_pwm_minctl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_pwm_minctl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_attributes_temp_off to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_temp_off to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_temp_off to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_temp_off to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_attributes_in4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm85_attributes_in567 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lm85_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lm85_probe.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lm85_detect to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pwm_enable_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pwm_enable_store to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm85_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm85_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm85_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @lm85_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm85_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 252, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %3 = ptrtoint ptr %call7 to i32
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm85_id, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call8, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then5
  %.sink = phi i32 [ %5, %if.else ], [ %3, %if.then5 ]
  %6 = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %6, align 4
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm85_probe.__key) #9
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %6, align 4
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 8
  br i1 %10, label %switch.lookup, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.lm85_probe, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep98 = getelementptr inbounds [8 x i32], ptr @switch.table.lm85_probe.124, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep98 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load99 = load i32, ptr %switch.gep98, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.body.sw.epilog_crit_edge
  %lm85_freq_map.sink = phi ptr [ %switch.load, %switch.lookup ], [ @lm85_freq_map, %do.body.sw.epilog_crit_edge ]
  %.sink97 = phi i32 [ %switch.load99, %switch.lookup ], [ 8, %do.body.sw.epilog_crit_edge ]
  %freq_map15 = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %freq_map15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lm85_freq_map.sink, ptr %freq_map15, align 4
  %freq_map_size16 = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %freq_map_size16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink97, ptr %freq_map_size16, align 4
  %call17 = tail call zeroext i8 @vid_which_vrm() #9
  %vrm = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 23
  %15 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call17, ptr %vrm, align 4
  %call4.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #9
  %and.i = and i32 %call4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %sw.epilog.if.end.i_crit_edge

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  %16 = trunc i32 %call4.i.i to i8
  %conv6.i.i = or i8 %16, 1
  %call7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %conv6.i.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.epilog.if.end.i_crit_edge
  %and1.i = and i32 %call4.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end6.i, %if.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %call4.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.end14.i, label %if.end8.i.lm85_init_client.exit_crit_edge

if.end8.i.lm85_init_client.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lm85_init_client.exit

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %lm85_init_client.exit

lm85_init_client.exit:                            ; preds = %do.end14.i, %if.end8.i.lm85_init_client.exit_crit_edge
  %groups = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lm85_group, ptr %groups, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp.not = icmp eq i32 %19, 8
  br i1 %cmp.not, label %lm85_init_client.exit.if.end26_crit_edge, label %if.then19

lm85_init_client.exit.if.end26_crit_edge:         ; preds = %lm85_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %lm85_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22 = getelementptr %struct.lm85_data, ptr %call.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @lm85_group_minctl, ptr %arrayidx22, align 4
  %arrayidx25 = getelementptr %struct.lm85_data, ptr %call.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lm85_group_temp_off, ptr %arrayidx25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %lm85_init_client.exit.if.end26_crit_edge
  %idx.0 = phi i32 [ 3, %if.then19 ], [ 1, %lm85_init_client.exit.if.end26_crit_edge ]
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 4
  %.off = add i32 %23, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then31, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then31:                                        ; preds = %if.end26
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 67) #9
  %and = and i32 %call4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then35

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %has_vid5 = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %has_vid5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %has_vid5, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then31.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %has_vid538 = getelementptr inbounds %struct.lm85_data, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %has_vid538 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_vid538, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool39.not = icmp eq i8 %26, 0
  br i1 %tobool39.not, label %if.then40, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %inc42 = add nuw nsw i32 %idx.0, 1
  %arrayidx43 = getelementptr %struct.lm85_data, ptr %call.i, i32 0, i32 1, i32 %idx.0
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @lm85_group_in4, ptr %arrayidx43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge
  %idx.1 = phi i32 [ %idx.0, %if.end37.if.end44_crit_edge ], [ %inc42, %if.then40 ]
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp46 = icmp eq i32 %29, 5
  br i1 %cmp46, label %if.then48, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx51 = getelementptr %struct.lm85_data, ptr %call.i, i32 0, i32 1, i32 %idx.1
  %30 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @lm85_group_in567, ptr %arrayidx51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end44.if.end52_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call55 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #9
  %cmp.i.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  %31 = ptrtoint ptr %call55 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %31, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end52 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm85_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #9
  %call4.i81 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm85_detect.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm85_detect, %do.end)) #9
          to label %if.then9 [label %do.end], !srcloc !395

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm85_detect.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.112, i32 noundef %conv, i32 noundef %call4.i, i32 noundef %call4.i81) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %8 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %do.end.cleanup_crit_edge [
    i32 1, label %if.then12
    i32 65, label %if.then40
    i32 92, label %if.then48
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %do.end
  %9 = zext i32 %call4.i81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call4.i81, label %if.then12.cleanup_crit_edge [
    i32 96, label %if.then12.if.end59_crit_edge
    i32 98, label %sw.bb13
    i32 104, label %if.then12.sw.bb14_crit_edge
    i32 105, label %if.then12.sw.bb14_crit_edge91
  ]

if.then12.sw.bb14_crit_edge91:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14

if.then12.sw.bb14_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14

if.then12.if.end59_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb13:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb14:                                          ; preds = %if.then12.sw.bb14_crit_edge, %if.then12.sw.bb14_crit_edge91
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 32) #9
  %call4.i82 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 40) #9
  %conv6.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i)
  %cmp7.not.i = icmp eq i32 %conv6.i, 0
  %conv9.i = and i32 %call4.i82, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.i)
  %cmp10.not.i = icmp eq i32 %conv9.i, 255
  %or.cond.i = select i1 %cmp7.not.i, i1 %cmp10.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.i, label %sw.bb14.if.end59_crit_edge

sw.bb14.if.end59_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond.i:                                       ; preds = %sw.bb14
  %call.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 33) #9
  %call4.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 41) #9
  %conv6.1.i = and i32 %call.1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.1.i)
  %cmp7.not.1.i = icmp eq i32 %conv6.1.i, 0
  %conv9.1.i = and i32 %call4.1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.1.i)
  %cmp10.not.1.i = icmp eq i32 %conv9.1.i, 255
  %or.cond.1.i = select i1 %cmp7.not.1.i, i1 %cmp10.not.1.i, i1 false
  br i1 %or.cond.1.i, label %for.cond.1.i, label %for.cond.i.if.end59_crit_edge

for.cond.i.if.end59_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 34) #9
  %call4.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 42) #9
  %conv6.2.i = and i32 %call.2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.2.i)
  %cmp7.not.2.i = icmp eq i32 %conv6.2.i, 0
  %conv9.2.i = and i32 %call4.2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.2.i)
  %cmp10.not.2.i = icmp eq i32 %conv9.2.i, 255
  %or.cond.2.i = select i1 %cmp7.not.2.i, i1 %cmp10.not.2.i, i1 false
  br i1 %or.cond.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end59_crit_edge

for.cond.1.i.if.end59_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 35) #9
  %call4.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 43) #9
  %conv6.3.i = and i32 %call.3.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.3.i)
  %cmp7.not.3.i = icmp eq i32 %conv6.3.i, 0
  %conv9.3.i = and i32 %call4.3.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.3.i)
  %cmp10.not.3.i = icmp eq i32 %conv9.3.i, 255
  %or.cond.3.i = select i1 %cmp7.not.3.i, i1 %cmp10.not.3.i, i1 false
  br i1 %or.cond.3.i, label %for.cond.3.i, label %for.cond.2.i.if.end59_crit_edge

for.cond.2.i.if.end59_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 36) #9
  %call4.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 44) #9
  %conv6.4.i = and i32 %call.4.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.4.i)
  %cmp7.not.4.i = icmp eq i32 %conv6.4.i, 0
  %conv9.4.i = and i32 %call4.4.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.4.i)
  %cmp10.not.4.i = icmp eq i32 %conv9.4.i, 255
  %or.cond.4.i = select i1 %cmp7.not.4.i, i1 %cmp10.not.4.i, i1 false
  br i1 %or.cond.4.i, label %for.cond.4.i, label %for.cond.3.i.if.end59_crit_edge

for.cond.3.i.if.end59_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 37) #9
  %call4.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 45) #9
  %conv6.5.i = and i32 %call.5.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.5.i)
  %cmp7.not.5.i = icmp eq i32 %conv6.5.i, 0
  %conv9.5.i = and i32 %call4.5.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.5.i)
  %cmp10.not.5.i = icmp eq i32 %conv9.5.i, 255
  %or.cond.5.i = select i1 %cmp7.not.5.i, i1 %cmp10.not.5.i, i1 false
  br i1 %or.cond.5.i, label %for.cond.5.i, label %for.cond.4.i.if.end59_crit_edge

for.cond.4.i.if.end59_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call.6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 38) #9
  %call4.6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 46) #9
  %conv6.6.i = and i32 %call.6.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.6.i)
  %cmp7.not.6.i = icmp eq i32 %conv6.6.i, 0
  %conv9.6.i = and i32 %call4.6.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.6.i)
  %cmp10.not.6.i = icmp eq i32 %conv9.6.i, 255
  %or.cond.6.i = select i1 %cmp7.not.6.i, i1 %cmp10.not.6.i, i1 false
  br i1 %or.cond.6.i, label %lm85_is_fake.exit, label %for.cond.5.i.if.end59_crit_edge

for.cond.5.i.if.end59_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

lm85_is_fake.exit:                                ; preds = %for.cond.5.i
  %call.7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 39) #9
  %call4.7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 47) #9
  %conv6.7.i = and i32 %call.7.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.7.i)
  %cmp7.not.7.i = icmp ne i32 %conv6.7.i, 0
  %conv9.7.i = and i32 %call4.7.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv9.7.i)
  %cmp10.not.7.i = icmp ne i32 %conv9.7.i, 255
  %or.cond.7.i = select i1 %cmp7.not.7.i, i1 true, i1 %cmp10.not.7.i
  br i1 %or.cond.7.i, label %lm85_is_fake.exit.if.end59_crit_edge, label %do.body18

lm85_is_fake.exit.if.end59_crit_edge:             ; preds = %lm85_is_fake.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

do.body18:                                        ; preds = %lm85_is_fake.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm85_detect.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm85_detect, %cleanup)) #9
          to label %if.then32 [label %cleanup], !srcloc !395

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %dev33 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm85_detect.__UNIQUE_ID_ddebug335, ptr noundef %dev33, ptr noundef nonnull @.str.115) #9
  br label %cleanup

if.then40:                                        ; preds = %do.end
  %10 = zext i32 %call4.i81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call4.i81, label %if.then40.cleanup_crit_edge [
    i32 96, label %if.then40.if.end59_crit_edge
    i32 98, label %if.then40.sw.bb42_crit_edge
    i32 106, label %if.then40.sw.bb42_crit_edge92
    i32 113, label %if.then40.sw.bb43_crit_edge
    i32 114, label %if.then40.sw.bb43_crit_edge93
  ]

if.then40.sw.bb43_crit_edge93:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43

if.then40.sw.bb43_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43

if.then40.sw.bb42_crit_edge92:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

if.then40.sw.bb42_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

if.then40.if.end59_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb42:                                          ; preds = %if.then40.sw.bb42_crit_edge, %if.then40.sw.bb42_crit_edge92
  br label %if.end59

sw.bb43:                                          ; preds = %if.then40.sw.bb43_crit_edge, %if.then40.sw.bb43_crit_edge93
  br label %if.end59

if.then48:                                        ; preds = %do.end
  %switch.tableidx = add i32 %call4.i81, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 11
  br i1 %11, label %switch.hole_check, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.then48
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1827, %switch.maskindex
  %12 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %switch.lobit.not = icmp eq i16 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.lm85_detect, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end59

if.end59:                                         ; preds = %switch.lookup, %sw.bb43, %sw.bb42, %if.then40.if.end59_crit_edge, %lm85_is_fake.exit.if.end59_crit_edge, %for.cond.5.i.if.end59_crit_edge, %for.cond.4.i.if.end59_crit_edge, %for.cond.3.i.if.end59_crit_edge, %for.cond.2.i.if.end59_crit_edge, %for.cond.1.i.if.end59_crit_edge, %for.cond.i.if.end59_crit_edge, %sw.bb14.if.end59_crit_edge, %sw.bb13, %if.then12.if.end59_crit_edge
  %type_name.0.ph = phi ptr [ @.str.116, %lm85_is_fake.exit.if.end59_crit_edge ], [ @.str.114, %sw.bb13 ], [ @.str.118, %sw.bb42 ], [ @.str.119, %sw.bb43 ], [ @.str.113, %if.then12.if.end59_crit_edge ], [ @.str.116, %sw.bb14.if.end59_crit_edge ], [ @.str.116, %for.cond.i.if.end59_crit_edge ], [ @.str.116, %for.cond.1.i.if.end59_crit_edge ], [ @.str.116, %for.cond.2.i.if.end59_crit_edge ], [ @.str.116, %for.cond.3.i.if.end59_crit_edge ], [ @.str.116, %for.cond.4.i.if.end59_crit_edge ], [ @.str.116, %for.cond.5.i.if.end59_crit_edge ], [ @.str.117, %if.then40.if.end59_crit_edge ], [ %switch.load, %switch.lookup ]
  %call60 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %type_name.0.ph, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %switch.hole_check.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.then32, %do.body18, %if.then12.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then32 ], [ -19, %do.end.cleanup_crit_edge ], [ -19, %if.then40.cleanup_crit_edge ], [ -19, %if.then48.cleanup_crit_edge ], [ -19, %if.then12.cleanup_crit_edge ], [ -19, %do.body18 ], [ -19, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm85_read_value(ptr noundef %client, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %reg, label %sw.default [
    i8 40, label %entry.sw.bb_crit_edge
    i8 42, label %entry.sw.bb_crit_edge11
    i8 44, label %entry.sw.bb_crit_edge12
    i8 46, label %entry.sw.bb_crit_edge13
    i8 84, label %entry.sw.bb_crit_edge14
    i8 86, label %entry.sw.bb_crit_edge15
    i8 88, label %entry.sw.bb_crit_edge16
    i8 90, label %entry.sw.bb_crit_edge17
    i8 65, label %entry.sw.bb_crit_edge18
  ]

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %reg) #9
  %and = and i32 %call, 255
  %add = add nuw nsw i8 %reg, 1
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %add) #9
  %shl = shl i32 %call3, 8
  %or = or i32 %shl, %and
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %reg) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %res.0 = phi i32 [ %call4, %sw.default ], [ %or, %sw.bb ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lm85_write_value(ptr noundef %client, i8 noundef zeroext %reg, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %reg, label %entry.sw.epilog_crit_edge [
    i8 40, label %entry.sw.bb_crit_edge
    i8 42, label %entry.sw.bb_crit_edge15
    i8 44, label %entry.sw.bb_crit_edge16
    i8 46, label %entry.sw.bb_crit_edge17
    i8 84, label %entry.sw.bb_crit_edge18
    i8 86, label %entry.sw.bb_crit_edge19
    i8 88, label %entry.sw.bb_crit_edge20
    i8 90, label %entry.sw.bb_crit_edge21
  ]

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21
  %conv1 = trunc i32 %value to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %conv1) #9
  %add = add nuw nsw i8 %reg, 1
  %1 = lshr i32 %value, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %value.sink = phi i32 [ %1, %sw.bb ], [ %value, %entry.sw.epilog_crit_edge ]
  %reg.sink = phi i8 [ %add, %sw.bb ], [ %reg, %entry.sw.epilog_crit_edge ]
  %conv6 = trunc i32 %value.sink to i8
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg.sink, i8 noundef zeroext %conv6) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.129)
  switch i16 %3, label %cond.false8 [
    i16 0, label %entry.cond.end12_crit_edge
    i16 -1, label %cond.end12.fold.split
  ]

entry.cond.end12_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end12

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %3 to i32
  %div = udiv i32 5400000, %conv
  br label %cond.end12

cond.end12.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end12.fold.split, %cond.false8, %entry.cond.end12_crit_edge
  %cond13 = phi i32 [ -1, %entry.cond.end12_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end12.fold.split ]
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %cond13)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lm85_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %valid = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %last_reading = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %last_reading to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_reading, align 4
  %add = add i32 %7, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end176_crit_edge

lor.lhs.false.if.end176_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm85_update_device.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm85_update_device, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !395

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm85_update_device.__UNIQUE_ID_ddebug292, ptr noundef %dev8, ptr noundef nonnull @.str.17) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %type = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %.off = add i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then16, label %do.end.if.end35_crit_edge

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 118) #9
  %call4.i580 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 119) #9
  %shl = shl i32 %call4.i, 8
  %add19 = add i32 %shl, %call4.i580
  %shr.tr = trunc i32 %add19 to i8
  %11 = shl i8 %shr.tr, 2
  %conv = and i8 %11, 12
  %arrayidx = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %13 = trunc i32 %add19 to i8
  %conv.1 = and i8 %13, 12
  %arrayidx.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %15 = trunc i32 %add19 to i8
  %16 = lshr i8 %15, 2
  %conv.2 = and i8 %16, 12
  %arrayidx.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %18 = trunc i32 %add19 to i8
  %19 = lshr i8 %18, 4
  %conv.3 = and i8 %19, 12
  %arrayidx.3 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  %21 = lshr i32 %add19, 8
  %shr.tr.4 = trunc i32 %21 to i8
  %22 = shl i8 %shr.tr.4, 2
  %conv.4 = and i8 %22, 12
  %arrayidx.4 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 4
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.4, ptr %arrayidx.4, align 1
  %conv30 = and i8 %shr.tr.4, 12
  %arrayidx31 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 20, i32 0
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv30, ptr %arrayidx31, align 1
  %25 = lshr i32 %add19, 10
  %26 = trunc i32 %25 to i8
  %conv30.1 = and i8 %26, 12
  %arrayidx31.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 20, i32 1
  %27 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv30.1, ptr %arrayidx31.1, align 1
  %28 = lshr i32 %add19, 12
  %29 = trunc i32 %28 to i8
  %conv30.2 = and i8 %29, 12
  %arrayidx31.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 20, i32 2
  %30 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv30.2, ptr %arrayidx31.2, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then16, %do.end.if.end35_crit_edge
  %call4.i581 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 67) #9
  %conv37 = trunc i32 %call4.i581 to i8
  %vid = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 22
  %31 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv37, ptr %vid, align 1
  %call44 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 32)
  %conv45 = trunc i32 %call44 to i8
  %arrayidx46 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 0
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv45, ptr %arrayidx46, align 1
  %call50 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 40)
  %conv51 = trunc i32 %call50 to i16
  %arrayidx52 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 16, i32 0
  %33 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv51, ptr %arrayidx52, align 2
  %call44.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 33)
  %conv45.1 = trunc i32 %call44.1 to i8
  %arrayidx46.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv45.1, ptr %arrayidx46.1, align 1
  %call50.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 42)
  %conv51.1 = trunc i32 %call50.1 to i16
  %arrayidx52.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 16, i32 1
  %35 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv51.1, ptr %arrayidx52.1, align 2
  %call44.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 34)
  %conv45.2 = trunc i32 %call44.2 to i8
  %arrayidx46.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 2
  %36 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv45.2, ptr %arrayidx46.2, align 1
  %call50.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 44)
  %conv51.2 = trunc i32 %call50.2 to i16
  %arrayidx52.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 16, i32 2
  %37 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv51.2, ptr %arrayidx52.2, align 2
  %call44.3 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 35)
  %conv45.3 = trunc i32 %call44.3 to i8
  %arrayidx46.3 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 3
  %38 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv45.3, ptr %arrayidx46.3, align 1
  %call50.3 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 46)
  %conv51.3 = trunc i32 %call50.3 to i16
  %arrayidx52.3 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 16, i32 3
  %39 = ptrtoint ptr %arrayidx52.3 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv51.3, ptr %arrayidx52.3, align 2
  %has_vid5 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %has_vid5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_vid5, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool56.not = icmp eq i8 %41, 0
  br i1 %tobool56.not, label %if.then57, label %if.end35.if.end62_crit_edge

if.end35.if.end62_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then57:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i582 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 36) #9
  %conv59 = trunc i32 %call4.i582 to i8
  %arrayidx61 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 4
  %42 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv59, ptr %arrayidx61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end35.if.end62_crit_edge
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp64 = icmp eq i32 %44, 4
  br i1 %cmp64, label %if.then66, label %if.end62.if.end69_crit_edge

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i583 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 124) #9
  %conv68 = trunc i32 %call4.i583 to i8
  %cfg5 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 25
  %45 = ptrtoint ptr %cfg5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv68, ptr %cfg5, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end62.if.end69_crit_edge
  %cfg587 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 25
  %call76 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 37)
  %conv77 = trunc i32 %call76 to i8
  %arrayidx78 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 13, i32 0
  %46 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv77, ptr %arrayidx78, align 1
  %call81 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 48)
  %conv82 = trunc i32 %call81 to i8
  %arrayidx83 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 18, i32 0
  %47 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv82, ptr %arrayidx83, align 1
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp85 = icmp eq i32 %49, 4
  br i1 %cmp85, label %land.lhs.true, label %if.end69.for.inc98_crit_edge

if.end69.for.inc98_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc98

land.lhs.true:                                    ; preds = %if.end69
  %50 = ptrtoint ptr %cfg587 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cfg587, align 4
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool90.not = icmp eq i8 %52, 0
  br i1 %tobool90.not, label %if.then91, label %land.lhs.true.for.inc98_crit_edge

land.lhs.true.for.inc98_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc98

if.then91:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx78, align 1
  %sub95 = add i8 %54, -64
  store i8 %sub95, ptr %arrayidx78, align 1
  br label %for.inc98

for.inc98:                                        ; preds = %if.then91, %land.lhs.true.for.inc98_crit_edge, %if.end69.for.inc98_crit_edge
  %call76.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 38)
  %conv77.1 = trunc i32 %call76.1 to i8
  %arrayidx78.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 13, i32 1
  %55 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv77.1, ptr %arrayidx78.1, align 1
  %call81.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 49)
  %conv82.1 = trunc i32 %call81.1 to i8
  %arrayidx83.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 18, i32 1
  %56 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv82.1, ptr %arrayidx83.1, align 1
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp85.1 = icmp eq i32 %58, 4
  br i1 %cmp85.1, label %land.lhs.true.1, label %for.inc98.for.inc98.1_crit_edge

for.inc98.for.inc98.1_crit_edge:                  ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc98.1

land.lhs.true.1:                                  ; preds = %for.inc98
  %59 = ptrtoint ptr %cfg587 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cfg587, align 4
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool90.not.1 = icmp eq i8 %61, 0
  br i1 %tobool90.not.1, label %if.then91.1, label %land.lhs.true.1.for.inc98.1_crit_edge

land.lhs.true.1.for.inc98.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc98.1

if.then91.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx78.1, align 1
  %sub95.1 = add i8 %63, -64
  store i8 %sub95.1, ptr %arrayidx78.1, align 1
  br label %for.inc98.1

for.inc98.1:                                      ; preds = %if.then91.1, %land.lhs.true.1.for.inc98.1_crit_edge, %for.inc98.for.inc98.1_crit_edge
  %call76.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 39)
  %conv77.2 = trunc i32 %call76.2 to i8
  %arrayidx78.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 13, i32 2
  %64 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv77.2, ptr %arrayidx78.2, align 1
  %call81.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 50)
  %conv82.2 = trunc i32 %call81.2 to i8
  %arrayidx83.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 18, i32 2
  %65 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv82.2, ptr %arrayidx83.2, align 1
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp85.2 = icmp eq i32 %67, 4
  br i1 %cmp85.2, label %land.lhs.true.2, label %for.inc98.1.for.inc98.2_crit_edge

for.inc98.1.for.inc98.2_crit_edge:                ; preds = %for.inc98.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc98.2

land.lhs.true.2:                                  ; preds = %for.inc98.1
  %68 = ptrtoint ptr %cfg587 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cfg587, align 4
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool90.not.2 = icmp eq i8 %70, 0
  br i1 %tobool90.not.2, label %if.then91.2, label %land.lhs.true.2.for.inc98.2_crit_edge

land.lhs.true.2.for.inc98.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc98.2

if.then91.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx78.2, align 1
  %sub95.2 = add i8 %72, -64
  store i8 %sub95.2, ptr %arrayidx78.2, align 1
  br label %for.inc98.2

for.inc98.2:                                      ; preds = %if.then91.2, %land.lhs.true.2.for.inc98.2_crit_edge, %for.inc98.1.for.inc98.2_crit_edge
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 65) #9
  %and.i = and i32 %call.i, 255
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 66) #9
  %shl.i = shl i32 %call3.i, 8
  %or.i = or i32 %shl.i, %and.i
  %alarms = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 24
  %73 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or.i, ptr %alarms, align 4
  %74 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %75, label %for.inc98.2.if.end174_crit_edge [
    i32 5, label %for.body109.preheader
    i32 6, label %for.inc98.2.if.then134_crit_edge
    i32 7, label %for.inc98.2.if.then134_crit_edge605
    i32 8, label %for.inc98.2.if.then134_crit_edge606
  ]

for.inc98.2.if.then134_crit_edge606:              ; preds = %for.inc98.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then134

for.inc98.2.if.then134_crit_edge605:              ; preds = %for.inc98.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then134

for.inc98.2.if.then134_crit_edge:                 ; preds = %for.inc98.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then134

for.inc98.2.if.end174_crit_edge:                  ; preds = %for.inc98.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174

for.body109.preheader:                            ; preds = %for.inc98.2
  call void @__sanitizer_cov_trace_pc() #11
  %call113 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 112)
  %conv114 = trunc i32 %call113 to i8
  %arrayidx116 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 5
  %77 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv114, ptr %arrayidx116, align 1
  %call113.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 113)
  %conv114.1 = trunc i32 %call113.1 to i8
  %arrayidx116.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 6
  %78 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv114.1, ptr %arrayidx116.1, align 1
  %call113.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 114)
  %conv114.2 = trunc i32 %call113.2 to i8
  %arrayidx116.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 10, i32 7
  %79 = ptrtoint ptr %arrayidx116.2 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv114.2, ptr %arrayidx116.2, align 1
  %call4.i584 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 125) #9
  %shl121 = shl i32 %call4.i584, 16
  %80 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %alarms, align 4
  %or = or i32 %81, %shl121
  store i32 %or, ptr %alarms, align 4
  br label %if.end174

if.then134:                                       ; preds = %for.inc98.2.if.then134_crit_edge, %for.inc98.2.if.then134_crit_edge605, %for.inc98.2.if.then134_crit_edge606
  %call4.i585 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -123) #9
  %call4.i586 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -122) #9
  %call4.i587 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -121) #9
  %call4.i588 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -120) #9
  %82 = trunc i32 %call4.i587 to i8
  %conv142 = and i8 %82, 15
  %in_ext143 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 21
  %83 = ptrtoint ptr %in_ext143 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv142, ptr %in_ext143, align 1
  %84 = trunc i32 %call4.i588 to i8
  %conv146 = and i8 %84, 15
  %arrayidx148 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 1
  %85 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv146, ptr %arrayidx148, align 1
  %86 = lshr i32 %call4.i588, 4
  %conv150 = trunc i32 %86 to i8
  %arrayidx152 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 2
  %87 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv150, ptr %arrayidx152, align 1
  %88 = lshr i32 %call4.i587, 4
  %conv154 = trunc i32 %88 to i8
  %arrayidx156 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 3
  %89 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv154, ptr %arrayidx156, align 1
  %90 = lshr i32 %call4.i586, 4
  %conv158 = trunc i32 %90 to i8
  %arrayidx160 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 21, i32 4
  %91 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv158, ptr %arrayidx160, align 1
  %92 = trunc i32 %call4.i585 to i8
  %conv162 = and i8 %92, 15
  %temp_ext163 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 20
  %93 = ptrtoint ptr %temp_ext163 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv162, ptr %temp_ext163, align 4
  %94 = trunc i32 %call4.i586 to i8
  %conv166 = and i8 %94, 15
  %arrayidx168 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 20, i32 1
  %95 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv166, ptr %arrayidx168, align 1
  %96 = lshr i32 %call4.i585, 4
  %conv170 = trunc i32 %96 to i8
  %arrayidx172 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 20, i32 2
  %97 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv170, ptr %arrayidx172, align 2
  br label %if.end174

if.end174:                                        ; preds = %if.then134, %for.body109.preheader, %for.inc98.2.if.end174_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %last_reading175 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 8
  %99 = ptrtoint ptr %last_reading175 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %last_reading175, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.end174, %lor.lhs.false.if.end176_crit_edge
  %100 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %valid, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool178.not = icmp eq i8 %101, 0
  br i1 %tobool178.not, label %if.end176.do.body185_crit_edge, label %lor.lhs.false179

if.end176.do.body185_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body185

lor.lhs.false179:                                 ; preds = %if.end176
  %last_config = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 9
  %102 = ptrtoint ptr %last_config to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %last_config, align 4
  %add180 = add i32 %103, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %sub181 = sub i32 %add180, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub181)
  %cmp182 = icmp slt i32 %sub181, 0
  br i1 %cmp182, label %lor.lhs.false179.do.body185_crit_edge, label %lor.lhs.false179.if.end395_crit_edge

lor.lhs.false179.if.end395_crit_edge:             ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end395

lor.lhs.false179.do.body185_crit_edge:            ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body185

do.body185:                                       ; preds = %lor.lhs.false179.do.body185_crit_edge, %if.end176.do.body185_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm85_update_device.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm85_update_device, %do.end203)) #9
          to label %if.then199 [label %do.end203], !srcloc !395

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #11
  %dev200 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm85_update_device.__UNIQUE_ID_ddebug293, ptr noundef %dev200, ptr noundef nonnull @.str.18) #9
  br label %do.end203

do.end203:                                        ; preds = %if.then199, %do.body185
  %call211 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 68)
  %conv212 = trunc i32 %call211 to i8
  %arrayidx213 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 0
  %105 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv212, ptr %arrayidx213, align 1
  %call217 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 69)
  %conv218 = trunc i32 %call217 to i8
  %arrayidx219 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 0
  %106 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv218, ptr %arrayidx219, align 1
  %call223 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 84)
  %conv224 = trunc i32 %call223 to i16
  %arrayidx225 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 17, i32 0
  %107 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv224, ptr %arrayidx225, align 2
  %call211.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 70)
  %conv212.1 = trunc i32 %call211.1 to i8
  %arrayidx213.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 1
  %108 = ptrtoint ptr %arrayidx213.1 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv212.1, ptr %arrayidx213.1, align 1
  %call217.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 71)
  %conv218.1 = trunc i32 %call217.1 to i8
  %arrayidx219.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 1
  %109 = ptrtoint ptr %arrayidx219.1 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv218.1, ptr %arrayidx219.1, align 1
  %call223.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 86)
  %conv224.1 = trunc i32 %call223.1 to i16
  %arrayidx225.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 17, i32 1
  %110 = ptrtoint ptr %arrayidx225.1 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv224.1, ptr %arrayidx225.1, align 2
  %call211.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 72)
  %conv212.2 = trunc i32 %call211.2 to i8
  %arrayidx213.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 2
  %111 = ptrtoint ptr %arrayidx213.2 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv212.2, ptr %arrayidx213.2, align 1
  %call217.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 73)
  %conv218.2 = trunc i32 %call217.2 to i8
  %arrayidx219.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 2
  %112 = ptrtoint ptr %arrayidx219.2 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv218.2, ptr %arrayidx219.2, align 1
  %call223.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 88)
  %conv224.2 = trunc i32 %call223.2 to i16
  %arrayidx225.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 17, i32 2
  %113 = ptrtoint ptr %arrayidx225.2 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv224.2, ptr %arrayidx225.2, align 2
  %call211.3 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 74)
  %conv212.3 = trunc i32 %call211.3 to i8
  %arrayidx213.3 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 3
  %114 = ptrtoint ptr %arrayidx213.3 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv212.3, ptr %arrayidx213.3, align 1
  %call217.3 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 75)
  %conv218.3 = trunc i32 %call217.3 to i8
  %arrayidx219.3 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 3
  %115 = ptrtoint ptr %arrayidx219.3 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv218.3, ptr %arrayidx219.3, align 1
  %call223.3 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 90)
  %conv224.3 = trunc i32 %call223.3 to i16
  %arrayidx225.3 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 17, i32 3
  %116 = ptrtoint ptr %arrayidx225.3 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv224.3, ptr %arrayidx225.3, align 2
  %has_vid5229 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 5
  %117 = ptrtoint ptr %has_vid5229 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %has_vid5229, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool230.not = icmp eq i8 %118, 0
  br i1 %tobool230.not, label %if.then231, label %do.end203.if.end240_crit_edge

do.end203.if.end240_crit_edge:                    ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end240

if.then231:                                       ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i589 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 76) #9
  %conv233 = trunc i32 %call4.i589 to i8
  %arrayidx235 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 4
  %119 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv233, ptr %arrayidx235, align 4
  %call4.i590 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 77) #9
  %conv237 = trunc i32 %call4.i590 to i8
  %arrayidx239 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 4
  %120 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv237, ptr %arrayidx239, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then231, %do.end203.if.end240_crit_edge
  %type241 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 4
  %121 = ptrtoint ptr %type241 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %type241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %122)
  %cmp242 = icmp eq i32 %122, 5
  br i1 %cmp242, label %for.body248.preheader, label %if.end240.if.end268_crit_edge

if.end240.if.end268_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end268

for.body248.preheader:                            ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  %call253 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 115)
  %conv254 = trunc i32 %call253 to i8
  %arrayidx256 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 5
  %123 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv254, ptr %arrayidx256, align 1
  %call261 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 116)
  %conv262 = trunc i32 %call261 to i8
  %arrayidx264 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 5
  %124 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv262, ptr %arrayidx264, align 1
  %call253.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 117)
  %conv254.1 = trunc i32 %call253.1 to i8
  %arrayidx256.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 6
  %125 = ptrtoint ptr %arrayidx256.1 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv254.1, ptr %arrayidx256.1, align 1
  %call261.1 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 118)
  %conv262.1 = trunc i32 %call261.1 to i8
  %arrayidx264.1 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 6
  %126 = ptrtoint ptr %arrayidx264.1 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv262.1, ptr %arrayidx264.1, align 1
  %call253.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 119)
  %conv254.2 = trunc i32 %call253.2 to i8
  %arrayidx256.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 12, i32 7
  %127 = ptrtoint ptr %arrayidx256.2 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv254.2, ptr %arrayidx256.2, align 1
  %call261.2 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext 120)
  %conv262.2 = trunc i32 %call261.2 to i8
  %arrayidx264.2 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 11, i32 7
  %128 = ptrtoint ptr %arrayidx264.2 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv262.2, ptr %arrayidx264.2, align 1
  br label %if.end268

if.end268:                                        ; preds = %for.body248.preheader, %if.end240.if.end268_crit_edge
  %freq_map_size = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 3
  %cfg5321 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 25
  br label %for.body272

for.body272:                                      ; preds = %if.end348.for.body272_crit_edge, %if.end268
  %i.7604 = phi i32 [ 0, %if.end268 ], [ %inc350, %if.end348.for.body272_crit_edge ]
  %i.7.tr = trunc i32 %i.7604 to i8
  %129 = shl i8 %i.7.tr, 1
  %conv276 = add i8 %129, 78
  %call277 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext %conv276)
  %conv278 = trunc i32 %call277 to i8
  %arrayidx279 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 14, i32 %i.7604
  %130 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv278, ptr %arrayidx279, align 1
  %conv282 = add i8 %129, 79
  %call283 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext %conv282)
  %conv284 = trunc i32 %call283 to i8
  %arrayidx285 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 15, i32 %i.7604
  %131 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv284, ptr %arrayidx285, align 1
  %conv287 = add i8 %i.7.tr, 92
  %call288 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext %conv287)
  %conv289 = trunc i32 %call288 to i8
  %arrayidx290 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 26, i32 %i.7604
  %132 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv289, ptr %arrayidx290, align 1
  %conv292 = add i8 %i.7.tr, 95
  %call293 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext %conv292)
  %133 = ptrtoint ptr %freq_map_size to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %freq_map_size, align 4
  %rem = urem i32 %call293, %134
  %conv294 = trunc i32 %rem to i8
  %arrayidx295 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 19, i32 %i.7604
  %135 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv294, ptr %arrayidx295, align 1
  %136 = lshr i32 %call293, 4
  %conv297 = trunc i32 %136 to i8
  %arrayidx298 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 27, i32 %i.7604
  %range = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 27, i32 %i.7604, i32 2
  %137 = ptrtoint ptr %range to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv297, ptr %range, align 1
  %conv300 = add i8 %i.7.tr, 100
  %call301 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext %conv300)
  %conv302 = trunc i32 %call301 to i8
  %min_pwm = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 26, i32 %i.7604, i32 1
  %138 = ptrtoint ptr %min_pwm to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv302, ptr %min_pwm, align 1
  %conv306 = add i8 %i.7.tr, 103
  %call307 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext %conv306)
  %conv308 = trunc i32 %call307 to i8
  %139 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv308, ptr %arrayidx298, align 1
  %conv312 = add i8 %i.7.tr, 106
  %call313 = tail call fastcc i32 @lm85_read_value(ptr noundef %3, i8 noundef zeroext %conv312)
  %conv314 = trunc i32 %call313 to i8
  %critical = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 27, i32 %i.7604, i32 3
  %140 = ptrtoint ptr %critical to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv314, ptr %critical, align 1
  %141 = ptrtoint ptr %type241 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %type241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp318 = icmp eq i32 %142, 4
  br i1 %cmp318, label %land.lhs.true320, label %for.body272.if.end348_crit_edge

for.body272.if.end348_crit_edge:                  ; preds = %for.body272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end348

land.lhs.true320:                                 ; preds = %for.body272
  %143 = ptrtoint ptr %cfg5321 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %cfg5321, align 4
  %145 = and i8 %144, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool324.not = icmp eq i8 %145, 0
  br i1 %tobool324.not, label %if.then325, label %land.lhs.true320.if.end348_crit_edge

land.lhs.true320.if.end348_crit_edge:             ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end348

if.then325:                                       ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx279, align 1
  %sub329 = add i8 %147, -64
  store i8 %sub329, ptr %arrayidx279, align 1
  %148 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx285, align 1
  %sub334 = add i8 %149, -64
  store i8 %sub334, ptr %arrayidx285, align 1
  %150 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx298, align 1
  %sub340 = add i8 %151, -64
  store i8 %sub340, ptr %arrayidx298, align 1
  %sub346 = add i8 %conv314, -64
  %152 = ptrtoint ptr %critical to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %sub346, ptr %critical, align 1
  br label %if.end348

if.end348:                                        ; preds = %if.then325, %land.lhs.true320.if.end348_crit_edge, %for.body272.if.end348_crit_edge
  %inc350 = add nuw nsw i32 %i.7604, 1
  %exitcond.not = icmp eq i32 %inc350, 3
  br i1 %exitcond.not, label %for.end351, label %if.end348.for.body272_crit_edge

if.end348.for.body272_crit_edge:                  ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body272

for.end351:                                       ; preds = %if.end348
  %153 = ptrtoint ptr %type241 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %type241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %154)
  %cmp353.not = icmp eq i32 %154, 8
  br i1 %cmp353.not, label %for.end351.if.end393_crit_edge, label %if.then355

for.end351.if.end393_crit_edge:                   ; preds = %for.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end393

if.then355:                                       ; preds = %for.end351
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i591 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 98) #9
  %155 = trunc i32 %call4.i591 to i8
  %156 = lshr i8 %155, 5
  %157 = and i8 %156, 1
  %min_off = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 26, i32 0, i32 2
  %158 = ptrtoint ptr %min_off to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %min_off, align 1
  %159 = lshr i8 %155, 6
  %160 = and i8 %159, 1
  %min_off369 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 26, i32 1, i32 2
  %161 = ptrtoint ptr %min_off369 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %min_off369, align 1
  %162 = lshr i8 %155, 7
  %min_off376 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 26, i32 2, i32 2
  %163 = ptrtoint ptr %min_off376 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %min_off376, align 1
  %call4.i592 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 109) #9
  %164 = lshr i32 %call4.i592, 4
  %conv379 = trunc i32 %164 to i8
  %hyst = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 27, i32 0, i32 1
  %165 = ptrtoint ptr %hyst to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv379, ptr %hyst, align 1
  %166 = trunc i32 %call4.i592 to i8
  %conv383 = and i8 %166, 15
  %hyst386 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 27, i32 1, i32 1
  %167 = ptrtoint ptr %hyst386 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv383, ptr %hyst386, align 1
  %call4.i593 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 110) #9
  %168 = lshr i32 %call4.i593, 4
  %conv389 = trunc i32 %168 to i8
  %hyst392 = getelementptr %struct.lm85_data, ptr %1, i32 0, i32 27, i32 2, i32 1
  %169 = ptrtoint ptr %hyst392 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv389, ptr %hyst392, align 1
  br label %if.end393

if.end393:                                        ; preds = %if.then355, %for.end351.if.end393_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %170 = load volatile i32, ptr @jiffies, align 128
  %last_config394 = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 9
  %171 = ptrtoint ptr %last_config394 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %last_config394, align 4
  br label %if.end395

if.end395:                                        ; preds = %if.end393, %lor.lhs.false179.if.end395_crit_edge
  %172 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i16 %3, label %cond.false8 [
    i16 0, label %entry.cond.end12_crit_edge
    i16 -1, label %cond.end12.fold.split
  ]

entry.cond.end12_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end12

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %3 to i32
  %div = udiv i32 5400000, %conv
  br label %cond.end12

cond.end12.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end12.fold.split, %cond.false8, %entry.cond.end12_crit_edge
  %cond13 = phi i32 [ -1, %entry.cond.end12_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end12.fold.split ]
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %cond13)
  ret i32 %call14
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700001, i32 %8)
  %cmp.i = icmp ult i32 %8, 2700001
  br i1 %cmp.i, label %cond.end.i, label %if.end.i.cond.end.thread.i_crit_edge

if.end.i.cond.end.thread.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %if.end.i
  %div.i = udiv i32 5400000, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %8)
  %cmp2.i = icmp ugt i32 %8, 82
  br i1 %cmp2.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i._crit_edge

cond.end.i._crit_edge:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %9

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %if.end.i.cond.end.thread.i_crit_edge
  %cond14.i = phi i32 [ %div.i, %cond.end.i.cond.end.thread.i_crit_edge ], [ 1, %if.end.i.cond.end.thread.i_crit_edge ]
  br label %9

9:                                                ; preds = %cond.end.thread.i, %cond.end.i._crit_edge
  %10 = phi i32 [ %cond14.i, %cond.end.thread.i ], [ 65534, %cond.end.i._crit_edge ]
  %conv.i = trunc i32 %10 to i16
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %9, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %9 ], [ -1, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 17, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %retval.0.i, ptr %arrayidx, align 2
  %.tr = trunc i32 %1 to i8
  %12 = shl i8 %.tr, 1
  %conv = add i8 %12, 84
  %conv6 = zext i16 %retval.0.i to i32
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %conv6)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %conv = trunc i32 %9 to i8
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 18, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %11 = trunc i32 %1 to i8
  %conv10 = add i8 %11, 48
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv10, i32 noundef %9)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 26, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %5 = zext i8 %4 to i32
  %arrayidx1 = getelementptr [8 x i32], ptr @lm85_zone_map, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %switch.tableidx = add i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.pwm_enable_show, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %enable.0 = phi i32 [ %switch.load, %switch.lookup ], [ 2, %entry.sw.epilog_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %enable.0)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.pwm_enable_store, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %11 = trunc i32 %1 to i8
  %conv = add i8 %11, 92
  %call5 = call fastcc i32 @lm85_read_value(ptr noundef %5, i8 noundef zeroext %conv)
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 26, i32 %1
  %and = and i32 %call5, 31
  %or = or i32 %and, %switch.load
  %conv13 = trunc i32 %or to i8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %arrayidx, align 1
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv, i32 noundef %or)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %switch.lookup ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_freq_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %type = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cfg5 = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 25
  %4 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg5, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %freq_map = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %freq_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %freq_map, align 4
  %freq_map_size = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %freq_map_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq_map_size, align 4
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 19, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %12 to i32
  %rem.i = urem i32 %conv.i, %10
  %arrayidx.i = getelementptr i32, ptr %8, i32 %rem.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %freq.0 = phi i32 [ %14, %if.else ], [ 22500, %land.lhs.true.if.end_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %freq.0)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_freq_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11299, i32 %10)
  %cmp3 = icmp ugt i32 %10, 11299
  br i1 %cmp3, label %if.then4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %cfg5 = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 25
  %11 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cfg5, align 4
  %13 = and i8 %12, -3
  store i8 %13, ptr %cfg5, align 4
  br label %if.end27.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %freq_map = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %freq_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %freq_map, align 4
  %freq_map_size = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %freq_map_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %freq_map_size, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %sub.i = add i32 %17, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else
  %__fc_i.0.i = phi i32 [ 0, %if.else ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %__fc_i.0.i, i32 %sub.i)
  %exitcond.not.i = icmp eq i32 %__fc_i.0.i, %sub.i
  br i1 %exitcond.not.i, label %for.cond.i.FREQ_TO_REG.exit_crit_edge, label %for.body.i

for.cond.i.FREQ_TO_REG.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FREQ_TO_REG.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i32, ptr %15, i32 %__fc_i.0.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %__fc_i.0.i, 1
  %arrayidx1.i = getelementptr i32, ptr %15, i32 %add.i
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.i, align 4
  %add2.i = add i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add2.i)
  %cmp3.inv.i = icmp slt i32 %add2.i, 1
  %cond.in.v.i = select i1 %cmp3.inv.i, i32 -1, i32 1
  %cond.in.i = add i32 %cond.in.v.i, %add2.i
  %cond.i = sdiv i32 %cond.in.i, 2
  %cmp13.not.i = icmp ult i32 %cond.i, %19
  br i1 %cmp13.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.FREQ_TO_REG.exit_crit_edge

for.body.i.FREQ_TO_REG.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FREQ_TO_REG.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

FREQ_TO_REG.exit:                                 ; preds = %for.body.i.FREQ_TO_REG.exit_crit_edge, %for.cond.i.FREQ_TO_REG.exit_crit_edge
  %__fc_i.0.lcssa.i = phi i32 [ %__fc_i.0.i, %for.body.i.FREQ_TO_REG.exit_crit_edge ], [ %sub.i, %for.cond.i.FREQ_TO_REG.exit_crit_edge ]
  %conv9 = trunc i32 %__fc_i.0.lcssa.i to i8
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 19, i32 %1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv9, ptr %arrayidx, align 1
  %25 = trunc i32 %1 to i8
  %conv10 = add i8 %25, 95
  %range = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1, i32 2
  %26 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %range, align 1
  %conv12 = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv12, 4
  %conv15 = and i32 %__fc_i.0.lcssa.i, 255
  %or = or i32 %shl, %conv15
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv10, i32 noundef %or)
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp17 = icmp eq i32 %29, 4
  br i1 %cmp17, label %if.then19, label %FREQ_TO_REG.exit.if.end27_crit_edge

FREQ_TO_REG.exit.if.end27_crit_edge:              ; preds = %FREQ_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then19:                                        ; preds = %FREQ_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cfg520 = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 25
  %30 = ptrtoint ptr %cfg520 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cfg520, align 4
  %32 = or i8 %31, 2
  store i8 %32, ptr %cfg520, align 4
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.then19, %if.then4
  %.sink = phi i8 [ %32, %if.then19 ], [ %13, %if.then4 ]
  %call7.i52 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 124, i8 noundef zeroext %.sink) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %FREQ_TO_REG.exit.if.end27_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end27 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %arrayidx1 = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 21, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %add = add nuw nsw i32 %shl, %conv2
  %arrayidx3 = getelementptr [8 x i32], ptr @lm85_scaling, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %mul = mul i32 %add, %7
  %add4 = add i32 %mul, 1536
  %div = sdiv i32 %add4, 3072
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %div)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr [8 x i32], ptr @lm85_scaling, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %5, %conv
  %add = add i32 %mul, 96
  %div = sdiv i32 %add, 192
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %div)
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %arrayidx = getelementptr [8 x i32], ptr @lm85_scaling, i32 0, i32 %1
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
  %arrayidx15 = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 12, i32 %1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx15, align 1
  %.tr = trunc i32 %1 to i8
  %14 = shl i8 %.tr, 1
  %conv18 = add i8 %14, 68
  %conv21 = and i32 %div14, 255
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv18, i32 noundef %conv21)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr [8 x i32], ptr @lm85_scaling, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %5, %conv
  %add = add i32 %mul, 96
  %div = sdiv i32 %add, 192
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %div)
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %arrayidx = getelementptr [8 x i32], ptr @lm85_scaling, i32 0, i32 %1
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
  %arrayidx15 = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 11, i32 %1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx15, align 1
  %.tr = trunc i32 %1 to i8
  %14 = shl i8 %.tr, 1
  %conv18 = add i8 %14, 69
  %conv21 = and i32 %div14, 255
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv18, i32 noundef %conv21)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
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
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %shl = shl nsw i32 %conv, 4
  %arrayidx1 = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 20, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %add = add nsw i32 %shl, %conv2
  %mul = mul nsw i32 %add, 1000
  %add3 = add nsw i32 %mul, 8
  %div = sdiv i32 %add3, 16
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %div)
  ret i32 %call4
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
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %mul)
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %cfg5 = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cfg5, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %add = add i32 %13, 64
  store i32 %add, ptr %val, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 -127000)
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17 = icmp sgt i32 %16, 0
  %cond30.in.v = select i1 %cmp17, i32 500, i32 -500
  %cond30.in = add nsw i32 %cond30.in.v, %17
  %cond30 = sdiv i32 %cond30.in, 1000
  %conv31 = trunc i32 %cond30 to i8
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 14, i32 %1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv31, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %19 = shl i8 %.tr, 1
  %conv33 = add i8 %19, 78
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv33, i32 noundef %cond30)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
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
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %mul)
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %cfg5 = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cfg5, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %add = add i32 %13, 64
  store i32 %add, ptr %val, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 -127000)
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17 = icmp sgt i32 %16, 0
  %cond30.in.v = select i1 %cmp17, i32 500, i32 -500
  %cond30.in = add nsw i32 %cond30.in.v, %17
  %cond30 = sdiv i32 %cond30.in, 1000
  %conv31 = trunc i32 %cond30 to i8
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 15, i32 %1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv31, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %19 = shl i8 %.tr, 1
  %conv33 = add i8 %19, 79
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv33, i32 noundef %cond30)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_channels_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 26, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %5 = zext i8 %4 to i32
  %arrayidx1 = getelementptr [8 x i32], ptr @lm85_zone_map, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %7)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_channels_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 26, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 31
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %11, label %for.inc.7.i [
    i32 1, label %if.end.ZONE_TO_REG.exit_crit_edge
    i32 2, label %for.end.fold.split.i
    i32 3, label %for.end.fold.split10.i
    i32 -1, label %for.end.fold.split11.i
    i32 0, label %for.end.fold.split12.i
    i32 23, label %for.end.fold.split13.i
    i32 123, label %for.end.fold.split14.i
    i32 -2, label %for.end.fold.split15.i
  ]

if.end.ZONE_TO_REG.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.inc.7.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.end.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.end.fold.split10.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.end.fold.split11.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.end.fold.split12.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.end.fold.split13.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.end.fold.split14.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

for.end.fold.split15.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZONE_TO_REG.exit

ZONE_TO_REG.exit:                                 ; preds = %for.end.fold.split15.i, %for.end.fold.split14.i, %for.end.fold.split13.i, %for.end.fold.split12.i, %for.end.fold.split11.i, %for.end.fold.split10.i, %for.end.fold.split.i, %for.inc.7.i, %if.end.ZONE_TO_REG.exit_crit_edge
  %cmp2.i = phi i8 [ 96, %for.inc.7.i ], [ 0, %if.end.ZONE_TO_REG.exit_crit_edge ], [ 32, %for.end.fold.split.i ], [ 64, %for.end.fold.split10.i ], [ 96, %for.end.fold.split11.i ], [ -128, %for.end.fold.split12.i ], [ -96, %for.end.fold.split13.i ], [ -64, %for.end.fold.split14.i ], [ -32, %for.end.fold.split15.i ]
  %conv4 = or i8 %cmp2.i, %9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %arrayidx, align 1
  %14 = trunc i32 %1 to i8
  %conv8 = add i8 %14, 92
  %conv12 = zext i8 %conv4 to i32
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv8, i32 noundef %conv12)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %ZONE_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ZONE_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_pwm_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %min_pwm = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 26, i32 %1, i32 1
  %2 = ptrtoint ptr %min_pwm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %min_pwm, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_pwm_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %conv = trunc i32 %9 to i8
  %min_pwm = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 26, i32 %1, i32 1
  %10 = ptrtoint ptr %min_pwm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %min_pwm, align 1
  %11 = trunc i32 %1 to i8
  %conv10 = add i8 %11, 100
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv10, i32 noundef %9)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 27, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -127000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %conv23 = trunc i32 %cond22 to i8
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx, align 1
  %12 = trunc i32 %1 to i8
  %conv25 = add i8 %12, 103
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv25, i32 noundef %cond22)
  %max_desired = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1, i32 4
  %13 = ptrtoint ptr %max_desired to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_desired, align 1
  %conv32 = zext i8 %14 to i32
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv36 = sext i8 %16 to i32
  %reass.add = sub nsw i32 %conv32, %conv36
  %reass.mul = mul nsw i32 %reass.add, 1000
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %__fc_i.0.i = phi i32 [ 0, %if.end ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %__fc_i.0.i)
  %exitcond.not.i = icmp eq i32 %__fc_i.0.i, 15
  br i1 %exitcond.not.i, label %for.cond.i.RANGE_TO_REG.exit_crit_edge, label %for.body.i

for.cond.i.RANGE_TO_REG.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %RANGE_TO_REG.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i32, ptr @lm85_range_map, i32 %__fc_i.0.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add nuw nsw i32 %__fc_i.0.i, 1
  %arrayidx1.i = getelementptr i32, ptr @lm85_range_map, i32 %add.i
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx1.i, align 4
  %add2.i = add i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add2.i)
  %cmp3.inv.i = icmp slt i32 %add2.i, 1
  %cond.in.v.i = select i1 %cmp3.inv.i, i32 -1, i32 1
  %cond.in.i = add i32 %cond.in.v.i, %add2.i
  %cond.i = sdiv i32 %cond.in.i, 2
  %cmp12.not.i = icmp slt i32 %cond.i, %reass.mul
  br i1 %cmp12.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.RANGE_TO_REG.exit_crit_edge

for.body.i.RANGE_TO_REG.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %RANGE_TO_REG.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

RANGE_TO_REG.exit:                                ; preds = %for.body.i.RANGE_TO_REG.exit_crit_edge, %for.cond.i.RANGE_TO_REG.exit_crit_edge
  %conv40 = trunc i32 %__fc_i.0.i to i8
  %range = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1, i32 2
  %21 = ptrtoint ptr %range to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv40, ptr %range, align 1
  %conv44 = add i8 %12, 95
  %and = shl i32 %__fc_i.0.i, 4
  %shl = and i32 %and, 240
  %arrayidx49 = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 19, i32 %1
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %23 to i32
  %or = or i32 %shl, %conv50
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv44, i32 noundef %or)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %RANGE_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %RANGE_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 27, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %range = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 27, i32 %1, i32 2
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %range, align 1
  %6 = and i8 %5, 15
  %and = zext i8 %6 to i32
  %arrayidx4 = getelementptr [16 x i32], ptr @lm85_range_map, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %mul, %8
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %add)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %mul.neg = mul nsw i32 %conv, -1000
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 -127000)
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp sgt i32 %11, 0
  %cond25.in.v = select i1 %cmp13, i32 500, i32 -500
  %cond25.in = add nsw i32 %cond25.in.v, %12
  %cond25 = sdiv i32 %cond25.in, 1000
  %conv26 = trunc i32 %cond25 to i8
  %max_desired = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1, i32 4
  %13 = ptrtoint ptr %max_desired to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv26, ptr %max_desired, align 1
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %sub29 = add i32 %15, %mul.neg
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %__fc_i.0.i = phi i32 [ 0, %if.end ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %__fc_i.0.i)
  %exitcond.not.i = icmp eq i32 %__fc_i.0.i, 15
  br i1 %exitcond.not.i, label %for.cond.i.RANGE_TO_REG.exit_crit_edge, label %for.body.i

for.cond.i.RANGE_TO_REG.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %RANGE_TO_REG.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i32, ptr @lm85_range_map, i32 %__fc_i.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add nuw nsw i32 %__fc_i.0.i, 1
  %arrayidx1.i = getelementptr i32, ptr @lm85_range_map, i32 %add.i
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.i, align 4
  %add2.i = add i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add2.i)
  %cmp3.inv.i = icmp slt i32 %add2.i, 1
  %cond.in.v.i = select i1 %cmp3.inv.i, i32 -1, i32 1
  %cond.in.i = add i32 %cond.in.v.i, %add2.i
  %cond.i = sdiv i32 %cond.in.i, 2
  %cmp12.not.i = icmp slt i32 %cond.i, %sub29
  br i1 %cmp12.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.RANGE_TO_REG.exit_crit_edge

for.body.i.RANGE_TO_REG.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %RANGE_TO_REG.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

RANGE_TO_REG.exit:                                ; preds = %for.body.i.RANGE_TO_REG.exit_crit_edge, %for.cond.i.RANGE_TO_REG.exit_crit_edge
  %conv31 = trunc i32 %__fc_i.0.i to i8
  %range = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1, i32 2
  %20 = ptrtoint ptr %range to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv31, ptr %range, align 1
  %21 = trunc i32 %1 to i8
  %conv35 = add i8 %21, 95
  %and = shl i32 %__fc_i.0.i, 4
  %shl = and i32 %and, 240
  %arrayidx40 = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 19, i32 %1
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %23 to i32
  %or = or i32 %shl, %conv41
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv35, i32 noundef %or)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %RANGE_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %RANGE_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %critical = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 27, i32 %1, i32 3
  %2 = ptrtoint ptr %critical to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %critical, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_crit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -127000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %conv23 = trunc i32 %cond22 to i8
  %critical = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1, i32 3
  %11 = ptrtoint ptr %critical to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %critical, align 1
  %12 = trunc i32 %1 to i8
  %conv25 = add i8 %12, 106
  call fastcc void @lm85_write_value(ptr noundef %5, i8 noundef zeroext %conv25, i32 noundef %cond22)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %conv)
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
  store i32 -1, ptr %val, align 4, !annotation !396
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
  %vrm = getelementptr inbounds %struct.lm85_data, ptr %1, i32 0, i32 23
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
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %has_vid5 = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %has_vid5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_vid5, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %vid3 = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 22
  %2 = ptrtoint ptr %vid3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vid3, align 1
  %. = select i1 %tobool.not, i8 31, i8 63
  %4 = and i8 %3, %.
  %and5 = zext i8 %4 to i32
  %vrm6 = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 23
  %5 = ptrtoint ptr %vrm6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vrm6, align 4
  %call7 = tail call i32 @vid_from_reg(i32 noundef %and5, i8 noundef zeroext %6) #9
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %call7)
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.lm85_data, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_pwm_minctl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %min_off = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 26, i32 %1, i32 2
  %2 = ptrtoint ptr %min_off to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %min_off, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_pwm_minctl_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i8
  %min_off = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 26, i32 %1, i32 2
  %9 = ptrtoint ptr %min_off to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %min_off, align 1
  %call4.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 98) #9
  %shl = shl i32 32, %1
  %neg = xor i32 %shl, -1
  %and = and i32 %call4.i, %neg
  %10 = ptrtoint ptr %min_off to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %min_off, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  %or = or i32 %call4.i, %shl
  %tmp2.0 = select i1 %tobool11.not, i32 %and, i32 %or
  %conv6.i = trunc i32 %tmp2.0 to i8
  %call7.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 98, i8 noundef zeroext %conv6.i) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_off_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm85_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 27, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %hyst = getelementptr %struct.lm85_data, ptr %call, i32 0, i32 27, i32 %1, i32 1
  %4 = ptrtoint ptr %hyst to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hyst, align 1
  %conv3 = zext i8 %5 to i32
  %reass.add = sub nsw i32 %conv, %conv3
  %reass.mul = mul nsw i32 %reass.add, 1000
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %reass.mul)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_temp_off_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !396
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %mul = mul nsw i32 %conv, 1000
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %sub = sub i32 %mul, %10
  %add = add i32 %sub, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %add)
  %cmp = icmp sgt i32 %add, 999
  %div = sdiv i32 %add, 1000
  %11 = call i32 @llvm.smin.i32(i32 %div, i32 15)
  %12 = trunc i32 %11 to i8
  %conv12 = select i1 %cmp, i8 %12, i8 0
  %hyst = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 %1, i32 1
  %13 = ptrtoint ptr %hyst to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv12, ptr %hyst, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hyst22 = getelementptr inbounds %struct.lm85_data, ptr %3, i32 0, i32 27, i32 0, i32 1
  %14 = ptrtoint ptr %hyst22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hyst22, align 1
  %shl = shl i8 %15, 4
  %hyst26 = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 1, i32 1
  %16 = ptrtoint ptr %hyst26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hyst26, align 1
  %or = or i8 %shl, %17
  %call7.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 109, i8 noundef zeroext %or) #9
  br label %if.end33

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hyst30 = getelementptr %struct.lm85_data, ptr %3, i32 0, i32 27, i32 2, i32 1
  %18 = ptrtoint ptr %hyst30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hyst30, align 1
  %shl32 = shl i8 %19, 4
  %call7.i57 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 110, i8 noundef zeroext %shl32) #9
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then19
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end33 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 240)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 240)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !266, !267, !269, !270, !272, !274, !276, !277, !279, !280, !282, !283, !285, !287, !289, !290, !292, !293, !295, !296, !298, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !316, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342, !343, !345, !346, !348, !349, !351, !352, !354, !356, !358, !359, !360, !362, !364, !366, !367, !369, !371, !373, !375, !377, !379, !381, !383}
!llvm.module.flags = !{!385, !386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @__initcall__kmod_lm85__336_1707_lm85_driver_init6, !1, !"__initcall__kmod_lm85__336_1707_lm85_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm85.c", i32 1707, i32 1}
!2 = !{ptr @__exitcall_lm85_driver_exit, !1, !"__exitcall_lm85_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file337, !4, !"__UNIQUE_ID_file337", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm85.c", i32 1709, i32 1}
!5 = !{ptr @__UNIQUE_ID_license338, !4, !"__UNIQUE_ID_license338", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author339, !7, !"__UNIQUE_ID_author339", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/lm85.c", i32 1710, i32 1}
!8 = !{ptr @__UNIQUE_ID_description340, !9, !"__UNIQUE_ID_description340", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/lm85.c", i32 1713, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm85.c", i32 1698, i32 13}
!12 = !{ptr @lm85_driver, !13, !"lm85_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm85.c", i32 1695, i32 26}
!14 = !{ptr @lm85_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm85.c", i32 1565, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adm1027_freq_map, !18, !"adm1027_freq_map", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm85.c", i32 196, i32 18}
!19 = !{ptr @lm96000_freq_map, !20, !"lm96000_freq_map", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/lm85.c", i32 191, i32 18}
!21 = !{ptr @lm85_freq_map, !22, !"lm85_freq_map", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/lm85.c", i32 187, i32 18}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/lm85.c", i32 1434, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lm85_init_client._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @lm85_init_client._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/lm85.c", i32 1440, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lm85_init_client._entry.7, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @lm85_init_client._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/lm85.c", i32 1442, i32 3}
!38 = !{ptr @lm85_init_client._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lm85_init_client._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @lm85_group, !41, !"lm85_group", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/lm85.c", i32 1369, i32 37}
!42 = !{ptr @lm85_attributes, !43, !"lm85_attributes", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/lm85.c", i32 1290, i32 26}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/lm85.c", i32 589, i32 8}
!46 = !{ptr @sensor_dev_attr_fan1_input, !45, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/lm85.c", i32 557, i32 22}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/lm85.c", i32 379, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lm85_update_device.__UNIQUE_ID_ddebug292, !50, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/lm85.c", i32 472, i32 3}
!55 = !{ptr @lm85_update_device.__UNIQUE_ID_ddebug293, !54, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/lm85.c", i32 591, i32 8}
!58 = !{ptr @sensor_dev_attr_fan2_input, !57, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/lm85.c", i32 593, i32 8}
!61 = !{ptr @sensor_dev_attr_fan3_input, !60, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/lm85.c", i32 595, i32 8}
!64 = !{ptr @sensor_dev_attr_fan4_input, !63, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/lm85.c", i32 590, i32 8}
!67 = !{ptr @sensor_dev_attr_fan1_min, !66, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/lm85.c", i32 592, i32 8}
!70 = !{ptr @sensor_dev_attr_fan2_min, !69, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/lm85.c", i32 594, i32 8}
!73 = !{ptr @sensor_dev_attr_fan3_min, !72, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/lm85.c", i32 596, i32 8}
!76 = !{ptr @sensor_dev_attr_fan4_min, !75, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/lm85.c", i32 676, i32 8}
!79 = !{ptr @sensor_dev_attr_fan1_alarm, !78, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/lm85.c", i32 660, i32 22}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/lm85.c", i32 677, i32 8}
!84 = !{ptr @sensor_dev_attr_fan2_alarm, !83, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/lm85.c", i32 678, i32 8}
!87 = !{ptr @sensor_dev_attr_fan3_alarm, !86, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/lm85.c", i32 679, i32 8}
!90 = !{ptr @sensor_dev_attr_fan4_alarm, !89, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/lm85.c", i32 831, i32 8}
!93 = !{ptr @sensor_dev_attr_pwm1, !92, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/lm85.c", i32 834, i32 8}
!96 = !{ptr @sensor_dev_attr_pwm2, !95, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/lm85.c", i32 837, i32 8}
!99 = !{ptr @sensor_dev_attr_pwm3, !98, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/lm85.c", i32 832, i32 8}
!102 = !{ptr @sensor_dev_attr_pwm1_enable, !101, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!103 = !{ptr @lm85_zone_map, !104, !"lm85_zone_map", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/lm85.c", i32 224, i32 18}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/lm85.c", i32 835, i32 8}
!107 = !{ptr @sensor_dev_attr_pwm2_enable, !106, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/lm85.c", i32 838, i32 8}
!110 = !{ptr @sensor_dev_attr_pwm3_enable, !109, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/lm85.c", i32 833, i32 8}
!113 = !{ptr @sensor_dev_attr_pwm1_freq, !112, !"sensor_dev_attr_pwm1_freq", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/lm85.c", i32 836, i32 8}
!116 = !{ptr @sensor_dev_attr_pwm2_freq, !115, !"sensor_dev_attr_pwm2_freq", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/lm85.c", i32 839, i32 8}
!119 = !{ptr @sensor_dev_attr_pwm3_freq, !118, !"sensor_dev_attr_pwm3_freq", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/lm85.c", i32 908, i32 8}
!122 = !{ptr @sensor_dev_attr_in0_input, !121, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!123 = !{ptr @lm85_scaling, !124, !"lm85_scaling", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/lm85.c", i32 120, i32 18}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/lm85.c", i32 911, i32 8}
!127 = !{ptr @sensor_dev_attr_in1_input, !126, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/lm85.c", i32 914, i32 8}
!130 = !{ptr @sensor_dev_attr_in2_input, !129, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/lm85.c", i32 917, i32 8}
!133 = !{ptr @sensor_dev_attr_in3_input, !132, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/lm85.c", i32 909, i32 8}
!136 = !{ptr @sensor_dev_attr_in0_min, !135, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/lm85.c", i32 912, i32 8}
!139 = !{ptr @sensor_dev_attr_in1_min, !138, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!140 = !{ptr @.str.46, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/lm85.c", i32 915, i32 8}
!142 = !{ptr @sensor_dev_attr_in2_min, !141, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!143 = !{ptr @.str.47, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/lm85.c", i32 918, i32 8}
!145 = !{ptr @sensor_dev_attr_in3_min, !144, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!146 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/lm85.c", i32 910, i32 8}
!148 = !{ptr @sensor_dev_attr_in0_max, !147, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/lm85.c", i32 913, i32 8}
!151 = !{ptr @sensor_dev_attr_in1_max, !150, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!152 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/lm85.c", i32 916, i32 8}
!154 = !{ptr @sensor_dev_attr_in2_max, !153, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/lm85.c", i32 919, i32 8}
!157 = !{ptr @sensor_dev_attr_in3_max, !156, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/lm85.c", i32 663, i32 8}
!160 = !{ptr @sensor_dev_attr_in0_alarm, !159, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/lm85.c", i32 664, i32 8}
!163 = !{ptr @sensor_dev_attr_in1_alarm, !162, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!164 = !{ptr @.str.54, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/lm85.c", i32 665, i32 8}
!166 = !{ptr @sensor_dev_attr_in2_alarm, !165, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!167 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/lm85.c", i32 666, i32 8}
!169 = !{ptr @sensor_dev_attr_in3_alarm, !168, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!170 = !{ptr @.str.56, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/lm85.c", i32 1008, i32 8}
!172 = !{ptr @sensor_dev_attr_temp1_input, !171, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/lm85.c", i32 1011, i32 8}
!175 = !{ptr @sensor_dev_attr_temp2_input, !174, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!176 = !{ptr @.str.58, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/lm85.c", i32 1014, i32 8}
!178 = !{ptr @sensor_dev_attr_temp3_input, !177, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!179 = !{ptr @.str.59, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/lm85.c", i32 1009, i32 8}
!181 = !{ptr @sensor_dev_attr_temp1_min, !180, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!182 = !{ptr @.str.60, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/lm85.c", i32 1012, i32 8}
!184 = !{ptr @sensor_dev_attr_temp2_min, !183, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!185 = !{ptr @.str.61, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/lm85.c", i32 1015, i32 8}
!187 = !{ptr @sensor_dev_attr_temp3_min, !186, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!188 = !{ptr @.str.62, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/lm85.c", i32 1010, i32 8}
!190 = !{ptr @sensor_dev_attr_temp1_max, !189, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!191 = !{ptr @.str.63, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hwmon/lm85.c", i32 1013, i32 8}
!193 = !{ptr @sensor_dev_attr_temp2_max, !192, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!194 = !{ptr @.str.64, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/lm85.c", i32 1016, i32 8}
!196 = !{ptr @sensor_dev_attr_temp3_max, !195, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!197 = !{ptr @.str.65, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/lm85.c", i32 671, i32 8}
!199 = !{ptr @sensor_dev_attr_temp1_alarm, !198, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!200 = !{ptr @.str.66, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/lm85.c", i32 673, i32 8}
!202 = !{ptr @sensor_dev_attr_temp2_alarm, !201, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!203 = !{ptr @.str.67, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/lm85.c", i32 674, i32 8}
!205 = !{ptr @sensor_dev_attr_temp3_alarm, !204, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!206 = !{ptr @.str.68, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/lm85.c", i32 672, i32 8}
!208 = !{ptr @sensor_dev_attr_temp1_fault, !207, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!209 = !{ptr @.str.69, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/lm85.c", i32 675, i32 8}
!211 = !{ptr @sensor_dev_attr_temp3_fault, !210, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!212 = !{ptr @.str.70, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/lm85.c", i32 1117, i32 8}
!214 = !{ptr @sensor_dev_attr_pwm1_auto_channels, !213, !"sensor_dev_attr_pwm1_auto_channels", i1 false, i1 false}
!215 = !{ptr @.str.71, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/lm85.c", i32 1120, i32 8}
!217 = !{ptr @sensor_dev_attr_pwm2_auto_channels, !216, !"sensor_dev_attr_pwm2_auto_channels", i1 false, i1 false}
!218 = !{ptr @.str.72, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/lm85.c", i32 1123, i32 8}
!220 = !{ptr @sensor_dev_attr_pwm3_auto_channels, !219, !"sensor_dev_attr_pwm3_auto_channels", i1 false, i1 false}
!221 = !{ptr @.str.73, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/lm85.c", i32 1118, i32 8}
!223 = !{ptr @sensor_dev_attr_pwm1_auto_pwm_min, !222, !"sensor_dev_attr_pwm1_auto_pwm_min", i1 false, i1 false}
!224 = !{ptr @.str.74, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/lm85.c", i32 1121, i32 8}
!226 = !{ptr @sensor_dev_attr_pwm2_auto_pwm_min, !225, !"sensor_dev_attr_pwm2_auto_pwm_min", i1 false, i1 false}
!227 = !{ptr @.str.75, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/lm85.c", i32 1124, i32 8}
!229 = !{ptr @sensor_dev_attr_pwm3_auto_pwm_min, !228, !"sensor_dev_attr_pwm3_auto_pwm_min", i1 false, i1 false}
!230 = !{ptr @.str.76, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/lm85.c", i32 1278, i32 8}
!232 = !{ptr @sensor_dev_attr_temp1_auto_temp_min, !231, !"sensor_dev_attr_temp1_auto_temp_min", i1 false, i1 false}
!233 = !{ptr @lm85_range_map, !234, !"lm85_range_map", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/lm85.c", i32 175, i32 18}
!235 = !{ptr @.str.77, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hwmon/lm85.c", i32 1282, i32 8}
!237 = !{ptr @sensor_dev_attr_temp2_auto_temp_min, !236, !"sensor_dev_attr_temp2_auto_temp_min", i1 false, i1 false}
!238 = !{ptr @.str.78, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/lm85.c", i32 1286, i32 8}
!240 = !{ptr @sensor_dev_attr_temp3_auto_temp_min, !239, !"sensor_dev_attr_temp3_auto_temp_min", i1 false, i1 false}
!241 = !{ptr @.str.79, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hwmon/lm85.c", i32 1279, i32 8}
!243 = !{ptr @sensor_dev_attr_temp1_auto_temp_max, !242, !"sensor_dev_attr_temp1_auto_temp_max", i1 false, i1 false}
!244 = !{ptr @.str.80, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/hwmon/lm85.c", i32 1283, i32 8}
!246 = !{ptr @sensor_dev_attr_temp2_auto_temp_max, !245, !"sensor_dev_attr_temp2_auto_temp_max", i1 false, i1 false}
!247 = !{ptr @.str.81, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/lm85.c", i32 1287, i32 8}
!249 = !{ptr @sensor_dev_attr_temp3_auto_temp_max, !248, !"sensor_dev_attr_temp3_auto_temp_max", i1 false, i1 false}
!250 = !{ptr @.str.82, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hwmon/lm85.c", i32 1280, i32 8}
!252 = !{ptr @sensor_dev_attr_temp1_auto_temp_crit, !251, !"sensor_dev_attr_temp1_auto_temp_crit", i1 false, i1 false}
!253 = !{ptr @.str.83, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/lm85.c", i32 1284, i32 8}
!255 = !{ptr @sensor_dev_attr_temp2_auto_temp_crit, !254, !"sensor_dev_attr_temp2_auto_temp_crit", i1 false, i1 false}
!256 = !{ptr @.str.84, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hwmon/lm85.c", i32 1288, i32 8}
!258 = !{ptr @sensor_dev_attr_temp3_auto_temp_crit, !257, !"sensor_dev_attr_temp3_auto_temp_crit", i1 false, i1 false}
!259 = !{ptr @.str.85, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/lm85.c", i32 644, i32 8}
!261 = !{ptr @dev_attr_vrm, !260, !"dev_attr_vrm", i1 false, i1 false}
!262 = !{ptr @.str.86, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/hwmon/lm85.c", i32 623, i32 22}
!264 = !{ptr @.str.87, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/lm85.c", i32 617, i32 8}
!266 = !{ptr @dev_attr_cpu0_vid, !265, !"dev_attr_cpu0_vid", i1 false, i1 false}
!267 = !{ptr @.str.88, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/lm85.c", i32 653, i32 8}
!269 = !{ptr @dev_attr_alarms, !268, !"dev_attr_alarms", i1 false, i1 false}
!270 = !{ptr @lm85_group_minctl, !271, !"lm85_group_minctl", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/lm85.c", i32 1380, i32 37}
!272 = !{ptr @lm85_attributes_minctl, !273, !"lm85_attributes_minctl", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/lm85.c", i32 1373, i32 26}
!274 = !{ptr @.str.89, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hwmon/lm85.c", i32 1119, i32 8}
!276 = !{ptr @sensor_dev_attr_pwm1_auto_pwm_minctl, !275, !"sensor_dev_attr_pwm1_auto_pwm_minctl", i1 false, i1 false}
!277 = !{ptr @.str.90, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hwmon/lm85.c", i32 1122, i32 8}
!279 = !{ptr @sensor_dev_attr_pwm2_auto_pwm_minctl, !278, !"sensor_dev_attr_pwm2_auto_pwm_minctl", i1 false, i1 false}
!280 = !{ptr @.str.91, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/hwmon/lm85.c", i32 1125, i32 8}
!282 = !{ptr @sensor_dev_attr_pwm3_auto_pwm_minctl, !281, !"sensor_dev_attr_pwm3_auto_pwm_minctl", i1 false, i1 false}
!283 = !{ptr @lm85_group_temp_off, !284, !"lm85_group_temp_off", i1 false, i1 false}
!284 = !{!"../drivers/hwmon/lm85.c", i32 1391, i32 37}
!285 = !{ptr @lm85_attributes_temp_off, !286, !"lm85_attributes_temp_off", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/lm85.c", i32 1384, i32 26}
!287 = !{ptr @.str.92, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/hwmon/lm85.c", i32 1277, i32 8}
!289 = !{ptr @sensor_dev_attr_temp1_auto_temp_off, !288, !"sensor_dev_attr_temp1_auto_temp_off", i1 false, i1 false}
!290 = !{ptr @.str.93, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/hwmon/lm85.c", i32 1281, i32 8}
!292 = !{ptr @sensor_dev_attr_temp2_auto_temp_off, !291, !"sensor_dev_attr_temp2_auto_temp_off", i1 false, i1 false}
!293 = !{ptr @.str.94, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/lm85.c", i32 1285, i32 8}
!295 = !{ptr @sensor_dev_attr_temp3_auto_temp_off, !294, !"sensor_dev_attr_temp3_auto_temp_off", i1 false, i1 false}
!296 = !{ptr @lm85_group_in4, !297, !"lm85_group_in4", i1 false, i1 false}
!297 = !{!"../drivers/hwmon/lm85.c", i32 1403, i32 37}
!298 = !{ptr @lm85_attributes_in4, !299, !"lm85_attributes_in4", i1 false, i1 false}
!299 = !{!"../drivers/hwmon/lm85.c", i32 1395, i32 26}
!300 = !{ptr @.str.95, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/lm85.c", i32 920, i32 8}
!302 = !{ptr @sensor_dev_attr_in4_input, !301, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!303 = !{ptr @.str.96, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hwmon/lm85.c", i32 921, i32 8}
!305 = !{ptr @sensor_dev_attr_in4_min, !304, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!306 = !{ptr @.str.97, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hwmon/lm85.c", i32 922, i32 8}
!308 = !{ptr @sensor_dev_attr_in4_max, !307, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!309 = !{ptr @.str.98, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/hwmon/lm85.c", i32 667, i32 8}
!311 = !{ptr @sensor_dev_attr_in4_alarm, !310, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!312 = !{ptr @lm85_group_in567, !313, !"lm85_group_in567", i1 false, i1 false}
!313 = !{!"../drivers/hwmon/lm85.c", i32 1423, i32 37}
!314 = !{ptr @lm85_attributes_in567, !315, !"lm85_attributes_in567", i1 false, i1 false}
!315 = !{!"../drivers/hwmon/lm85.c", i32 1407, i32 26}
!316 = !{ptr @.str.99, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/lm85.c", i32 923, i32 8}
!318 = !{ptr @sensor_dev_attr_in5_input, !317, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!319 = !{ptr @.str.100, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/hwmon/lm85.c", i32 926, i32 8}
!321 = !{ptr @sensor_dev_attr_in6_input, !320, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!322 = !{ptr @.str.101, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/hwmon/lm85.c", i32 929, i32 8}
!324 = !{ptr @sensor_dev_attr_in7_input, !323, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!325 = !{ptr @.str.102, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/hwmon/lm85.c", i32 924, i32 8}
!327 = !{ptr @sensor_dev_attr_in5_min, !326, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!328 = !{ptr @.str.103, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hwmon/lm85.c", i32 927, i32 8}
!330 = !{ptr @sensor_dev_attr_in6_min, !329, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!331 = !{ptr @.str.104, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/lm85.c", i32 930, i32 8}
!333 = !{ptr @sensor_dev_attr_in7_min, !332, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!334 = !{ptr @.str.105, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/lm85.c", i32 925, i32 8}
!336 = !{ptr @sensor_dev_attr_in5_max, !335, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!337 = !{ptr @.str.106, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/hwmon/lm85.c", i32 928, i32 8}
!339 = !{ptr @sensor_dev_attr_in6_max, !338, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!340 = !{ptr @.str.107, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/lm85.c", i32 931, i32 8}
!342 = !{ptr @sensor_dev_attr_in7_max, !341, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!343 = !{ptr @.str.108, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/hwmon/lm85.c", i32 668, i32 8}
!345 = !{ptr @sensor_dev_attr_in5_alarm, !344, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!346 = !{ptr @.str.109, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/hwmon/lm85.c", i32 669, i32 8}
!348 = !{ptr @sensor_dev_attr_in6_alarm, !347, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!349 = !{ptr @.str.110, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/hwmon/lm85.c", i32 670, i32 8}
!351 = !{ptr @sensor_dev_attr_in7_alarm, !350, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!352 = !{ptr @lm85_of_match, !353, !"lm85_of_match", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/lm85.c", i32 1642, i32 49}
!354 = !{ptr @lm85_id, !355, !"lm85_id", i1 false, i1 false}
!355 = !{!"../drivers/hwmon/lm85.c", i32 1625, i32 35}
!356 = !{ptr @.str.111, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/hwmon/lm85.c", i32 1482, i32 2}
!358 = !{ptr @.str.112, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @lm85_detect.__UNIQUE_ID_ddebug334, !357, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!360 = !{ptr @.str.113, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/hwmon/lm85.c", i32 1489, i32 16}
!362 = !{ptr @.str.114, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/hwmon/lm85.c", i32 1492, i32 16}
!364 = !{ptr @.str.115, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/hwmon/lm85.c", i32 1498, i32 5}
!366 = !{ptr @lm85_detect.__UNIQUE_ID_ddebug335, !365, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!367 = !{ptr @.str.116, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/hwmon/lm85.c", i32 1502, i32 16}
!369 = !{ptr @.str.117, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/hwmon/lm85.c", i32 1508, i32 16}
!371 = !{ptr @.str.118, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/hwmon/lm85.c", i32 1512, i32 16}
!373 = !{ptr @.str.119, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/hwmon/lm85.c", i32 1516, i32 16}
!375 = !{ptr @.str.120, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/hwmon/lm85.c", i32 1524, i32 16}
!377 = !{ptr @.str.121, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/hwmon/lm85.c", i32 1527, i32 16}
!379 = !{ptr @.str.122, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/hwmon/lm85.c", i32 1531, i32 16}
!381 = !{ptr @.str.123, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/hwmon/lm85.c", i32 1534, i32 16}
!383 = !{ptr @normal_i2c, !384, !"normal_i2c", i1 false, i1 false}
!384 = !{!"../drivers/hwmon/lm85.c", i32 28, i32 29}
!385 = !{i32 1, !"wchar_size", i32 2}
!386 = !{i32 1, !"min_enum_size", i32 4}
!387 = !{i32 8, !"branch-target-enforcement", i32 0}
!388 = !{i32 8, !"sign-return-address", i32 0}
!389 = !{i32 8, !"sign-return-address-all", i32 0}
!390 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!391 = !{i32 7, !"uwtable", i32 1}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{i8 0, i8 2}
!395 = !{i64 2149001596, i64 2149001601, i64 2149001614, i64 2149001658, i64 2149001692, i64 2149001713}
!396 = !{!"auto-init"}
