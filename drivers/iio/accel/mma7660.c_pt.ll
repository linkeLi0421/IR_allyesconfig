; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/mma7660.c_pt.bc'
source_filename = "../drivers/iio/accel/mma7660.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mma7660_data = type { ptr, %struct.mutex, i32 }

@__initcall__kmod_mma7660__288_282_mma7660_driver_init6 = internal global ptr @mma7660_driver_init, section ".initcall6.init", align 4
@mma7660_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mma7660_probe, ptr @mma7660_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mma7660_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mma7660_pm_ops, ptr null, ptr null }, ptr @mma7660_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mma7660_driver_exit = internal global ptr @mma7660_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"mma7660.author=Constantin Musca <constantin.musca@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [68 x i8] c"mma7660.description=Freescale MMA7660FC 3-Axis Accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"mma7660.file=drivers/iio/accel/mma7660\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"mma7660.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mma7660\00", [24 x i8] zeroinitializer }, align 32
@mma7660_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mma7660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mma7660_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mma7660_suspend, ptr @mma7660_resume, ptr @mma7660_suspend, ptr @mma7660_resume, ptr @mma7660_suspend, ptr @mma7660_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mma7660_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mma7660\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mma7660_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iio allocation failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mma7660_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/mma7660.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mma7660_probe._entry_ptr = internal global ptr @mma7660_probe._entry, section ".printk_index", align 4
@mma7660_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@mma7660_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mma7660_attribute_group, ptr @mma7660_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mma7660_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 2, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@mma7660_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device_register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@mma7660_probe._entry_ptr.9 = internal global ptr @mma7660_probe._entry.7, section ".printk_index", align 4
@mma7660_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mma7660_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mma7660_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.10, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0.467142857\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@mma7660_read_accel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mma7660_read_accel\00", [45 x i8] zeroinitializer }, align 32
@mma7660_read_accel._entry_ptr = internal global ptr @mma7660_read_accel._entry, section ".printk_index", align 4
@mma7660_read_accel._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"all register read retries failed\0A\00", [62 x i8] zeroinitializer }, align 32
@mma7660_read_accel._entry_ptr.16 = internal global ptr @mma7660_read_accel._entry.14, section ".printk_index", align 4
@mma7660_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read sensor mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mma7660_set_mode\00", [47 x i8] zeroinitializer }, align 32
@mma7660_set_mode._entry_ptr = internal global ptr @mma7660_set_mode._entry, section ".printk_index", align 4
@mma7660_set_mode._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to change sensor mode\0A\00", [34 x i8] zeroinitializer }, align 32
@mma7660_set_mode._entry_ptr.21 = internal global ptr @mma7660_set_mode._entry.19, section ".printk_index", align 4
@mma7660_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 220, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to put device in stand-by mode (%pe), ignoring\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mma7660_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mma7660_remove._entry_ptr = internal global ptr @mma7660_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"mma7660_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 270, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 272, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"mma7660_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 257, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"mma7660_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 244, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"mma7660_i2c_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 251, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 181, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 188, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"mma7660_info\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 167, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"mma7660_channels\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 50, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 203, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"mma7660_attribute_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 74, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"mma7660_attributes\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 69, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 67, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 127, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 133, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 89, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 103, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [31 x i8] c"../drivers/iio/accel/mma7660.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 219, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mma7660_driver_exit, ptr @__initcall__kmod_mma7660__288_282_mma7660_driver_init6, ptr @mma7660_driver_exit, ptr @mma7660_probe._entry, ptr @mma7660_probe._entry.7, ptr @mma7660_probe._entry_ptr, ptr @mma7660_probe._entry_ptr.9, ptr @mma7660_read_accel._entry, ptr @mma7660_read_accel._entry.14, ptr @mma7660_read_accel._entry_ptr, ptr @mma7660_read_accel._entry_ptr.16, ptr @mma7660_remove._entry, ptr @mma7660_remove._entry_ptr, ptr @mma7660_set_mode._entry, ptr @mma7660_set_mode._entry.19, ptr @mma7660_set_mode._entry_ptr, ptr @mma7660_set_mode._entry_ptr.21, ptr @mma7660_driver, ptr @.str, ptr @mma7660_of_match, ptr @mma7660_pm_ops, ptr @mma7660_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mma7660_probe.__key, ptr @.str.6, ptr @mma7660_info, ptr @mma7660_channels, ptr @.str.8, ptr @mma7660_attribute_group, ptr @mma7660_attributes, ptr @iio_const_attr_in_accel_scale_available, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_read_accel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_read_accel._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_set_mode._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma7660_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mma7660_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mma7660_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mma7660_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @mma7660_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma7660_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 100) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mma7660_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mma7660_probe.__key) #4
  %mode = getelementptr inbounds %struct.mma7660_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mma7660_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mma7660_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %num_channels, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %13 = trunc i32 %call.i to i8
  %14 = and i8 %13, -6
  %conv.i = or i8 %14, 1
  %call11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 7, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end19.i

do.end17.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end19.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mode, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end19.i, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i41 = icmp eq i32 %19, 0
  br i1 %cmp.i41, label %do.end15.cleanup_crit_edge, label %if.end.i44

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i44:                                       ; preds = %do.end15
  %call.i42 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp3.i43 = icmp slt i32 %call.i42, 0
  br i1 %cmp3.i43, label %do.end.i46, label %if.end5.i51

do.end.i46:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i45 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i45, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end5.i51:                                      ; preds = %if.end.i44
  %20 = trunc i32 %call.i42 to i8
  %conv.i48 = and i8 %20, -6
  %call11.i49 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 7, i8 noundef zeroext %conv.i48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i49)
  %cmp12.i50 = icmp slt i32 %call11.i49, 0
  br i1 %cmp12.i50, label %do.end17.i53, label %if.end19.i54

do.end17.i53:                                     ; preds = %if.end5.i51
  call void @__sanitizer_cov_trace_pc() #6
  %dev18.i52 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i52, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end19.i54:                                     ; preds = %if.end5.i51
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19.i54, %do.end17.i53, %do.end.i46, %do.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end17.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call10, %do.end15.cleanup_crit_edge ], [ %call10, %do.end.i46 ], [ %call10, %do.end17.i53 ], [ %call10, %if.end19.i54 ], [ %call11.i, %do.end17.i ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma7660_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mode2.i = getelementptr inbounds %struct.mma7660_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.end.i.do.end.sink.split_crit_edge, label %if.end5.i

if.end.i.do.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.sink.split

if.end5.i:                                        ; preds = %if.end.i
  %8 = trunc i32 %call.i to i8
  %conv.i = and i8 %8, -6
  %call11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 7, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end5.i.do.end.sink.split_crit_edge, label %mma7660_set_mode.exit

if.end5.i.do.end.sink.split_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.sink.split

mma7660_set_mode.exit:                            ; preds = %if.end5.i
  %9 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not = icmp eq i32 %call11.i, 0
  br i1 %tobool.not, label %mma7660_set_mode.exit.if.end_crit_edge, label %mma7660_set_mode.exit.do.end_crit_edge

mma7660_set_mode.exit.do.end_crit_edge:           ; preds = %mma7660_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

mma7660_set_mode.exit.if.end_crit_edge:           ; preds = %mma7660_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.sink.split:                                ; preds = %if.end5.i.do.end.sink.split_crit_edge, %if.end.i.do.end.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %if.end.i.do.end.sink.split_crit_edge ], [ @.str.20, %if.end5.i.do.end.sink.split_crit_edge ]
  %retval.0.i9.ph = phi i32 [ %call.i, %if.end.i.do.end.sink.split_crit_edge ], [ %call11.i, %if.end5.i.do.end.sink.split_crit_edge ]
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull %.str.20.sink) #7
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %mma7660_set_mode.exit.do.end_crit_edge
  %retval.0.i9 = phi i32 [ %call11.i, %mma7660_set_mode.exit.do.end_crit_edge ], [ %retval.0.i9.ph, %do.end.sink.split ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %10 = inttoptr i32 %retval.0.i9 to ptr
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %10) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %mma7660_set_mode.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma7660_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.mma7660_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.mma7660_read_accel.exit.thread_crit_edge, label %do.cond3.i

sw.bb.mma7660_read_accel.exit.thread_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_read_accel.exit.thread

do.cond3.i:                                       ; preds = %sw.bb
  %and.i = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.cond3.i.do.end5.i_crit_edge, label %do.body.1.i

do.cond3.i.do.end5.i_crit_edge:                   ; preds = %do.cond3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.body.1.i:                                      ; preds = %do.cond3.i
  %call.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp.1.i, label %do.body.1.i.mma7660_read_accel.exit.thread_crit_edge, label %do.cond3.1.i

do.body.1.i.mma7660_read_accel.exit.thread_crit_edge: ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_read_accel.exit.thread

do.cond3.1.i:                                     ; preds = %do.body.1.i
  %and.1.i = and i32 %call.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %do.cond3.1.i.do.end5.i_crit_edge, label %do.body.2.i

do.cond3.1.i.do.end5.i_crit_edge:                 ; preds = %do.cond3.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.body.2.i:                                      ; preds = %do.cond3.1.i
  %call.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp.2.i, label %do.body.2.i.mma7660_read_accel.exit.thread_crit_edge, label %do.cond3.2.i

do.body.2.i.mma7660_read_accel.exit.thread_crit_edge: ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_read_accel.exit.thread

do.cond3.2.i:                                     ; preds = %do.body.2.i
  %and.2.i = and i32 %call.2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %do.cond3.2.i.do.end5.i_crit_edge, label %do.body.3.i

do.cond3.2.i.do.end5.i_crit_edge:                 ; preds = %do.cond3.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.body.3.i:                                      ; preds = %do.cond3.2.i
  %call.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp.3.i, label %do.body.3.i.mma7660_read_accel.exit.thread_crit_edge, label %do.cond3.3.i

do.body.3.i.mma7660_read_accel.exit.thread_crit_edge: ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_read_accel.exit.thread

do.cond3.3.i:                                     ; preds = %do.body.3.i
  %and.3.i = and i32 %call.3.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %do.cond3.3.i.do.end5.i_crit_edge, label %do.body.4.i

do.cond3.3.i.do.end5.i_crit_edge:                 ; preds = %do.cond3.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.body.4.i:                                      ; preds = %do.cond3.3.i
  %call.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp.4.i, label %do.body.4.i.mma7660_read_accel.exit.thread_crit_edge, label %do.cond3.4.i

do.body.4.i.mma7660_read_accel.exit.thread_crit_edge: ; preds = %do.body.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_read_accel.exit.thread

do.cond3.4.i:                                     ; preds = %do.body.4.i
  %and.4.i = and i32 %call.4.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %do.cond3.4.i.do.end5.i_crit_edge, label %do.body.5.i

do.cond3.4.i.do.end5.i_crit_edge:                 ; preds = %do.cond3.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.body.5.i:                                      ; preds = %do.cond3.4.i
  %call.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp.5.i, label %do.body.5.i.mma7660_read_accel.exit.thread_crit_edge, label %do.body.5.i.do.end5.i_crit_edge

do.body.5.i.do.end5.i_crit_edge:                  ; preds = %do.body.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.body.5.i.mma7660_read_accel.exit.thread_crit_edge: ; preds = %do.body.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_read_accel.exit.thread

do.end5.i:                                        ; preds = %do.body.5.i.do.end5.i_crit_edge, %do.cond3.4.i.do.end5.i_crit_edge, %do.cond3.3.i.do.end5.i_crit_edge, %do.cond3.2.i.do.end5.i_crit_edge, %do.cond3.1.i.do.end5.i_crit_edge, %do.cond3.i.do.end5.i_crit_edge
  %call.lcssa23.i = phi i32 [ %call.i, %do.cond3.i.do.end5.i_crit_edge ], [ %call.1.i, %do.cond3.1.i.do.end5.i_crit_edge ], [ %call.2.i, %do.cond3.2.i.do.end5.i_crit_edge ], [ %call.3.i, %do.cond3.3.i.do.end5.i_crit_edge ], [ %call.4.i, %do.cond3.4.i.do.end5.i_crit_edge ], [ %call.5.i, %do.body.5.i.do.end5.i_crit_edge ]
  %and6.i = and i32 %call.lcssa23.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end, label %do.end5.i.mma7660_read_accel.exit.thread_crit_edge

do.end5.i.mma7660_read_accel.exit.thread_crit_edge: ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_read_accel.exit.thread

mma7660_read_accel.exit.thread:                   ; preds = %do.end5.i.mma7660_read_accel.exit.thread_crit_edge, %do.body.5.i.mma7660_read_accel.exit.thread_crit_edge, %do.body.4.i.mma7660_read_accel.exit.thread_crit_edge, %do.body.3.i.mma7660_read_accel.exit.thread_crit_edge, %do.body.2.i.mma7660_read_accel.exit.thread_crit_edge, %do.body.1.i.mma7660_read_accel.exit.thread_crit_edge, %sw.bb.mma7660_read_accel.exit.thread_crit_edge
  %.str.15.sink.i = phi ptr [ @.str.12, %do.body.5.i.mma7660_read_accel.exit.thread_crit_edge ], [ @.str.12, %do.body.4.i.mma7660_read_accel.exit.thread_crit_edge ], [ @.str.12, %do.body.3.i.mma7660_read_accel.exit.thread_crit_edge ], [ @.str.12, %do.body.2.i.mma7660_read_accel.exit.thread_crit_edge ], [ @.str.12, %do.body.1.i.mma7660_read_accel.exit.thread_crit_edge ], [ @.str.12, %sw.bb.mma7660_read_accel.exit.thread_crit_edge ], [ @.str.15, %do.end5.i.mma7660_read_accel.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.5.i, %do.body.5.i.mma7660_read_accel.exit.thread_crit_edge ], [ %call.4.i, %do.body.4.i.mma7660_read_accel.exit.thread_crit_edge ], [ %call.3.i, %do.body.3.i.mma7660_read_accel.exit.thread_crit_edge ], [ %call.2.i, %do.body.2.i.mma7660_read_accel.exit.thread_crit_edge ], [ %call.1.i, %do.body.1.i.mma7660_read_accel.exit.thread_crit_edge ], [ %call.i, %sw.bb.mma7660_read_accel.exit.thread_crit_edge ], [ -110, %do.end5.i.mma7660_read_accel.exit.thread_crit_edge ]
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull %.str.15.sink.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end:                                           ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock) #4
  %shl.i = shl i32 %call.lcssa23.i, 26
  %shr.i = ashr exact i32 %shl.i, 26
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 467142857, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %if.end, %mma7660_read_accel.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %sw.bb5 ], [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph.i, %mma7660_read_accel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma7660_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mode2.i = getelementptr inbounds %struct.mma7660_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %entry.mma7660_set_mode.exit_crit_edge, label %if.end.i

entry.mma7660_set_mode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_set_mode.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #7
  br label %mma7660_set_mode.exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = trunc i32 %call.i to i8
  %conv.i = and i8 %8, -6
  %call11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 7, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end19.i

do.end17.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.20) #7
  br label %mma7660_set_mode.exit

if.end19.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mode2.i, align 4
  br label %mma7660_set_mode.exit

mma7660_set_mode.exit:                            ; preds = %if.end19.i, %do.end17.i, %do.end.i, %entry.mma7660_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call11.i, %do.end17.i ], [ %call11.i, %if.end19.i ], [ 0, %entry.mma7660_set_mode.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma7660_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mode2.i = getelementptr inbounds %struct.mma7660_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %entry.mma7660_set_mode.exit_crit_edge, label %if.end.i

entry.mma7660_set_mode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mma7660_set_mode.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #7
  br label %mma7660_set_mode.exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = trunc i32 %call.i to i8
  %9 = and i8 %8, -6
  %conv.i = or i8 %9, 1
  %call11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 7, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end19.i

do.end17.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.20) #7
  br label %mma7660_set_mode.exit

if.end19.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode2.i, align 4
  br label %mma7660_set_mode.exit

mma7660_set_mode.exit:                            ; preds = %if.end19.i, %do.end17.i, %do.end.i, %entry.mma7660_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call11.i, %do.end17.i ], [ %call11.i, %if.end19.i ], [ 0, %entry.mma7660_set_mode.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_mma7660__288_282_mma7660_driver_init6, !1, !"__initcall__kmod_mma7660__288_282_mma7660_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/mma7660.c", i32 282, i32 1}
!2 = !{ptr @__exitcall_mma7660_driver_exit, !1, !"__exitcall_mma7660_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/mma7660.c", i32 284, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/mma7660.c", i32 285, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/mma7660.c", i32 286, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/mma7660.c", i32 272, i32 11}
!12 = !{ptr @mma7660_driver, !13, !"mma7660_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/mma7660.c", i32 270, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/mma7660.c", i32 181, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mma7660_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mma7660_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mma7660_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/accel/mma7660.c", i32 188, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/mma7660.c", i32 203, i32 3}
!27 = !{ptr @mma7660_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mma7660_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mma7660_info, !30, !"mma7660_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/mma7660.c", i32 167, i32 30}
!31 = !{ptr @mma7660_attribute_group, !32, !"mma7660_attribute_group", i1 false, i1 false}
!32 = !{!"../drivers/iio/accel/mma7660.c", i32 74, i32 37}
!33 = !{ptr @mma7660_attributes, !34, !"mma7660_attributes", i1 false, i1 false}
!34 = !{!"../drivers/iio/accel/mma7660.c", i32 69, i32 26}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/accel/mma7660.c", i32 67, i32 8}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iio_const_attr_in_accel_scale_available, !36, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/accel/mma7660.c", i32 127, i32 4}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mma7660_read_accel._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mma7660_read_accel._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/mma7660.c", i32 133, i32 3}
!46 = !{ptr @mma7660_read_accel._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mma7660_read_accel._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @mma7660_channels, !49, !"mma7660_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/mma7660.c", i32 50, i32 35}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/accel/mma7660.c", i32 89, i32 3}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mma7660_set_mode._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mma7660_set_mode._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/accel/mma7660.c", i32 103, i32 3}
!57 = !{ptr @mma7660_set_mode._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mma7660_set_mode._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/accel/mma7660.c", i32 219, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mma7660_remove._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @mma7660_remove._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mma7660_of_match, !66, !"mma7660_of_match", i1 false, i1 false}
!66 = !{!"../drivers/iio/accel/mma7660.c", i32 257, i32 34}
!67 = !{ptr @mma7660_pm_ops, !68, !"mma7660_pm_ops", i1 false, i1 false}
!68 = !{!"../drivers/iio/accel/mma7660.c", i32 244, i32 8}
!69 = !{ptr @mma7660_i2c_id, !70, !"mma7660_i2c_id", i1 false, i1 false}
!70 = !{!"../drivers/iio/accel/mma7660.c", i32 251, i32 35}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
