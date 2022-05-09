; ModuleID = '/llk/IR_all_yes/drivers/iio/light/cm3323.c_pt.bc'
source_filename = "../drivers/iio/light/cm3323.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.87 = type { i32, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cm3323_data = type { ptr, i16, %struct.mutex }

@__initcall__kmod_cm3323__288_274_cm3323_driver_init6 = internal global ptr @cm3323_driver_init, section ".initcall6.init", align 4
@cm3323_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cm3323_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cm3323_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cm3323_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cm3323_driver_exit = internal global ptr @cm3323_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"cm3323.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"cm3323.description=Capella CM3323 Color Light Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"cm3323.file=drivers/iio/light/cm3323\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"cm3323.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cm3323\00", [25 x i8] zeroinitializer }, align 32
@cm3323_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"capella,cm3323\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cm3323_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cm3323\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cm3323_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@cm3323_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @cm3323_attribute_group, ptr @cm3323_read_raw, ptr null, ptr null, ptr @cm3323_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cm3323_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 17, i32 8, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 18, i32 9, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 19, i32 10, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 16, i32 11, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [64 x i8] zeroinitializer }, align 32
@cm3323_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cm3323 chip init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm3323_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/light/cm3323.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cm3323_probe._entry_ptr = internal global ptr @cm3323_probe._entry, section ".printk_index", align 4
@cm3323_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cm3323_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cm3323_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.7, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0.04 0.08 0.16 0.32 0.64 1.28\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@cm3323_int_time = internal constant { [6 x %struct.anon.87], [48 x i8] } { [6 x %struct.anon.87] [%struct.anon.87 { i32 0, i32 40000 }, %struct.anon.87 { i32 0, i32 80000 }, %struct.anon.87 { i32 0, i32 160000 }, %struct.anon.87 { i32 0, i32 320000 }, %struct.anon.87 { i32 0, i32 640000 }, %struct.anon.87 { i32 1, i32 280000 }], [48 x i8] zeroinitializer }, align 32
@cm3323_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 86, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_conf\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm3323_init\00", [20 x i8] zeroinitializer }, align 32
@cm3323_init._entry_ptr = internal global ptr @cm3323_init._entry, section ".printk_index", align 4
@cm3323_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 95, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing reg_conf\0A\00", [40 x i8] zeroinitializer }, align 32
@cm3323_init._entry_ptr.13 = internal global ptr @cm3323_init._entry.11, section ".printk_index", align 4
@cm3323_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm3323_disable\00", [17 x i8] zeroinitializer }, align 32
@cm3323_disable._entry_ptr = internal global ptr @cm3323_disable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 32, i64 40000, i64 80000, i64 160000, i64 320000, i64 640000]
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"cm3323_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 265, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 267, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"cm3323_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 259, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"cm3323_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 253, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 232, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"cm3323_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 211, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"cm3323_channels\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 61, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 242, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"cm3323_attribute_group\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 75, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"cm3323_attributes\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 70, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [42 x i8] c"iio_const_attr_integration_time_available\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 68, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"cm3323_int_time\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 37, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 86, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 95, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [30 x i8] c"../drivers/iio/light/cm3323.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 113, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cm3323_driver_exit, ptr @__initcall__kmod_cm3323__288_274_cm3323_driver_init6, ptr @cm3323_disable._entry, ptr @cm3323_disable._entry_ptr, ptr @cm3323_driver_exit, ptr @cm3323_init._entry, ptr @cm3323_init._entry.11, ptr @cm3323_init._entry_ptr, ptr @cm3323_init._entry_ptr.13, ptr @cm3323_probe._entry, ptr @cm3323_probe._entry_ptr, ptr @cm3323_driver, ptr @.str, ptr @cm3323_of_match, ptr @cm3323_id, ptr @cm3323_probe.__key, ptr @.str.1, ptr @cm3323_info, ptr @cm3323_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cm3323_attribute_group, ptr @cm3323_attributes, ptr @iio_const_attr_integration_time_available, ptr @.str.7, ptr @.str.8, ptr @cm3323_int_time, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_int_time to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3323_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3323_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cm3323_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cm3323_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @cm3323_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3323_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 100) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.cm3323_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @cm3323_probe.__key) #4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cm3323_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cm3323_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %num_channels, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %12, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br i1 %cmp.i, label %if.end.do.end7_crit_edge, label %if.end.i

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %15 = trunc i32 %call1.i to i16
  %conv.i = and i16 %15, -4
  %call4.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %14, i8 noundef zeroext 0, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end10.i, label %if.end9

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  br label %do.end7

do.end7:                                          ; preds = %do.end10.i, %if.end.do.end7_crit_edge
  %.sink = phi ptr [ %17, %do.end10.i ], [ %14, %if.end.do.end7_crit_edge ]
  %.str.9.sink = phi ptr [ @.str.12, %do.end10.i ], [ @.str.9, %if.end.do.end7_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call4.i, %do.end10.i ], [ %call1.i, %if.end.do.end7_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.9.sink) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %conv14.i = trunc i32 %call4.i to i16
  %reg_conf.i = getelementptr inbounds %struct.cm3323_data, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %reg_conf.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv14.i, ptr %reg_conf.i, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cm3323_disable, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9.if.end14_crit_edge, label %if.then.i

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then.i:                                        ; preds = %if.end9
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %22, i8 noundef zeroext 0, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.devm_add_action_or_reset.exit_crit_edge

if.then.i.devm_add_action_or_reset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %devm_add_action_or_reset.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12) #7
  br label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %do.end.i.i, %if.then.i.devm_add_action_or_reset.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end14_crit_edge

devm_add_action_or_reset.exit.if.end14_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %devm_add_action_or_reset.exit.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %call16 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %devm_add_action_or_reset.exit.cleanup_crit_edge, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end7 ], [ %call16, %if.end14 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm3323_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 0, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3323_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 18, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.cm3323_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %conv = trunc i32 %6 to i8
  %call1 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup.sink.split_crit_edge, label %if.end

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1, ptr %val, align 4
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  %mutex6 = getelementptr inbounds %struct.cm3323_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex6, i32 noundef 0) #4
  %reg_conf.i = getelementptr inbounds %struct.cm3323_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %reg_conf.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_conf.i, align 4
  %10 = lshr i16 %9, 4
  %11 = and i16 %10, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %11)
  %cmp.i = icmp ugt i16 %11, 5
  br i1 %cmp.i, label %sw.bb5.cleanup.sink.split_crit_edge, label %if.end12

sw.bb5.cleanup.sink.split_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end12:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = zext i16 %11 to i32
  %arrayidx = getelementptr [6 x %struct.anon.87], ptr @cm3323_int_time, i32 0, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  %val215 = getelementptr [6 x %struct.anon.87], ptr @cm3323_int_time, i32 0, i32 %shr.i, i32 1
  %15 = ptrtoint ptr %val215 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val215, align 4
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val2, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %sw.bb5.cleanup.sink.split_crit_edge, %if.end, %sw.bb.cleanup.sink.split_crit_edge
  %mutex6.sink = phi ptr [ %mutex6, %if.end12 ], [ %mutex, %if.end ], [ %mutex, %sw.bb.cleanup.sink.split_crit_edge ], [ %mutex6, %sw.bb5.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 2, %if.end12 ], [ 1, %if.end ], [ %call1, %sw.bb.cleanup.sink.split_crit_edge ], [ -22, %sw.bb5.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex6.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3323_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %mask)
  %cond = icmp eq i32 %mask, 18
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.cm3323_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %val, label %sw.bb.cm3323_set_it_bits.exit_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.5.i
  ]

sw.bb.cm3323_set_it_bits.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cm3323_set_it_bits.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %3 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %val2, label %land.lhs.true.i.cm3323_set_it_bits.exit_crit_edge [
    i32 40000, label %land.lhs.true.i.if.then.i_crit_edge
    i32 80000, label %if.then.fold.split.i
    i32 160000, label %if.then.fold.split31.i
    i32 320000, label %if.then.fold.split32.i
    i32 640000, label %if.then.fold.split33.i
  ]

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

land.lhs.true.i.cm3323_set_it_bits.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cm3323_set_it_bits.exit

if.then.fold.split.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.fold.split31.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.fold.split32.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.fold.split33.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.5.i.if.then.i_crit_edge, %if.then.fold.split33.i, %if.then.fold.split32.i, %if.then.fold.split31.i, %if.then.fold.split.i, %land.lhs.true.i.if.then.i_crit_edge
  %i.027.lcssa.i = phi i16 [ 0, %land.lhs.true.i.if.then.i_crit_edge ], [ 80, %land.lhs.true.5.i.if.then.i_crit_edge ], [ 16, %if.then.fold.split.i ], [ 32, %if.then.fold.split31.i ], [ 48, %if.then.fold.split32.i ], [ 64, %if.then.fold.split33.i ]
  %reg_conf6.i = getelementptr inbounds %struct.cm3323_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_conf6.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_conf6.i, align 4
  %6 = and i16 %5, -113
  %conv9.i = or i16 %6, %i.027.lcssa.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %8, i8 noundef zeroext 0, i16 noundef zeroext %conv9.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %if.then.i.cm3323_set_it_bits.exit_crit_edge, label %if.end.i

if.then.i.cm3323_set_it_bits.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cm3323_set_it_bits.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %reg_conf6.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv9.i, ptr %reg_conf6.i, align 4
  br label %cm3323_set_it_bits.exit

land.lhs.true.5.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 280000, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 280000
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.if.then.i_crit_edge, label %land.lhs.true.5.i.cm3323_set_it_bits.exit_crit_edge

land.lhs.true.5.i.cm3323_set_it_bits.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cm3323_set_it_bits.exit

land.lhs.true.5.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

cm3323_set_it_bits.exit:                          ; preds = %land.lhs.true.5.i.cm3323_set_it_bits.exit_crit_edge, %if.end.i, %if.then.i.cm3323_set_it_bits.exit_crit_edge, %land.lhs.true.i.cm3323_set_it_bits.exit_crit_edge, %sw.bb.cm3323_set_it_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %if.then.i.cm3323_set_it_bits.exit_crit_edge ], [ -22, %land.lhs.true.5.i.cm3323_set_it_bits.exit_crit_edge ], [ -22, %land.lhs.true.i.cm3323_set_it_bits.exit_crit_edge ], [ -22, %sw.bb.cm3323_set_it_bits.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %cm3323_set_it_bits.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cm3323_set_it_bits.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_cm3323__288_274_cm3323_driver_init6, !1, !"__initcall__kmod_cm3323__288_274_cm3323_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/cm3323.c", i32 274, i32 1}
!2 = !{ptr @__exitcall_cm3323_driver_exit, !1, !"__exitcall_cm3323_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/cm3323.c", i32 276, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/cm3323.c", i32 277, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/cm3323.c", i32 278, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/cm3323.c", i32 267, i32 11}
!12 = !{ptr @cm3323_driver, !13, !"cm3323_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/cm3323.c", i32 265, i32 26}
!14 = !{ptr @cm3323_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/cm3323.c", i32 232, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/cm3323.c", i32 242, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cm3323_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cm3323_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @cm3323_info, !26, !"cm3323_info", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/cm3323.c", i32 211, i32 30}
!27 = !{ptr @cm3323_attribute_group, !28, !"cm3323_attribute_group", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/cm3323.c", i32 75, i32 37}
!29 = !{ptr @cm3323_attributes, !30, !"cm3323_attributes", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/cm3323.c", i32 70, i32 26}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/cm3323.c", i32 68, i32 8}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @iio_const_attr_integration_time_available, !32, !"iio_const_attr_integration_time_available", i1 false, i1 false}
!35 = !{ptr @cm3323_int_time, !36, !"cm3323_int_time", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/cm3323.c", i32 37, i32 3}
!37 = !{ptr @cm3323_channels, !38, !"cm3323_channels", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/cm3323.c", i32 61, i32 35}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/cm3323.c", i32 86, i32 3}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cm3323_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cm3323_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/cm3323.c", i32 95, i32 3}
!46 = !{ptr @cm3323_init._entry.11, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cm3323_init._entry_ptr.13, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/cm3323.c", i32 113, i32 3}
!50 = !{ptr @cm3323_disable._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cm3323_disable._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @cm3323_of_match, !53, !"cm3323_of_match", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/cm3323.c", i32 259, i32 34}
!54 = !{ptr @cm3323_id, !55, !"cm3323_id", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/cm3323.c", i32 253, i32 35}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
