; ModuleID = '/llk/IR_all_yes/drivers/hwmon/tmp421.c_pt.bc'
source_filename = "../drivers/hwmon/tmp421.c"
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
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tmp421_data = type { ptr, %struct.mutex, [5 x i32], %struct.hwmon_channel_info, [2 x ptr], %struct.hwmon_chip_info, i8, i32, i32, i8, [4 x %struct.tmp421_channel] }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.tmp421_channel = type { ptr, i8, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tmp421__288_496_tmp421_driver_init6 = internal global ptr @tmp421_driver_init, section ".initcall6.init", align 4
@tmp421_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @tmp421_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tmp421_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tmp421_id, ptr @tmp421_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tmp421_driver_exit = internal global ptr @tmp421_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"tmp421.author=Andre Prendel <andre.prendel@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [86 x i8] c"tmp421.description=Texas Instruments TMP421/422/423/441/442 temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [33 x i8] c"tmp421.file=drivers/hwmon/tmp421\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"tmp421.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp421\00", [25 x i8] zeroinitializer }, align 32
@tmp421_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp421\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp422\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp423\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp441\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp442\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@tmp421_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tmp421\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tmp422\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"tmp423\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tmp441\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tmp442\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 42, i16 76, i16 77, i16 78, i16 79, i16 -2], [20 x i8] zeroinitializer }, align 32
@tmp421_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@tmp421_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @tmp421_is_visible, ptr @tmp421_read, ptr @tmp421_read_string, ptr @tmp421_write }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@tmp421_probe_child_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 375, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing reg property of %pOFn\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tmp421_probe_child_from_dt\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/tmp421.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmp421_probe_child_from_dt._entry_ptr = internal global ptr @tmp421_probe_child_from_dt._entry, section ".printk_index", align 4
@tmp421_probe_child_from_dt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 380, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid reg %d of %pOFn\0A\00", [39 x i8] zeroinitializer }, align 32
@tmp421_probe_child_from_dt._entry_ptr.11 = internal global ptr @tmp421_probe_child_from_dt._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,n-factor\00", [20 x i8] zeroinitializer }, align 32
@tmp421_probe_child_from_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 393, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"n-factor can't be set for internal channel\0A\00", [52 x i8] zeroinitializer }, align 32
@tmp421_probe_child_from_dt._entry_ptr.16 = internal global ptr @tmp421_probe_child_from_dt._entry.14, section ".printk_index", align 4
@tmp421_probe_child_from_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 399, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"n-factor for channel %d invalid (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@tmp421_probe_child_from_dt._entry_ptr.19 = internal global ptr @tmp421_probe_child_from_dt._entry.17, section ".printk_index", align 4
@tmp421_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 287, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not read configuration register (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tmp421_init_client\00", [45 x i8] zeroinitializer }, align 32
@tmp421_init_client._entry_ptr = internal global ptr @tmp421_init_client._entry, section ".printk_index", align 4
@tmp421_init_client._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.6, i32 295, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable monitoring chip\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tmp421_init_client._entry_ptr.25 = internal global ptr @tmp421_init_client._entry.22, section ".printk_index", align 4
@tmp421_enable_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 177, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error reading register, can't disable channels\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tmp421_enable_channels\00", [41 x i8] zeroinitializer }, align 32
@tmp421_enable_channels._entry_ptr = internal global ptr @tmp421_enable_channels._entry, section ".printk_index", align 4
@tmp421_enable_channels._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 191, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error writing register, can't disable channels\0A\00", [48 x i8] zeroinitializer }, align 32
@tmp421_enable_channels._entry_ptr.30 = internal global ptr @tmp421_enable_channels._entry.28, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@TMP421_TEMP_MSB = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\03", [28 x i8] zeroinitializer }, align 32
@TMP421_TEMP_LSB = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\10\11\12\13", [28 x i8] zeroinitializer }, align 32
@tmp421_detect.names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP421\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP422\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP423\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP441\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP442\00", [25 x i8] zeroinitializer }, align 32
@tmp421_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 358, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Detected TI %s chip at 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tmp421_detect\00", [18 x i8] zeroinitializer }, align 32
@tmp421_detect._entry_ptr = internal global ptr @tmp421_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 33, i64 34, i64 35, i64 65, i64 66]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 19, i64 21]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 19]
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"tmp421_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 484, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 487, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"tmp421_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 69, i32 49 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"tmp421_id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 59, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 27, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 448, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"tmp421_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 430, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 417, i32 27 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 373, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 375, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 380, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 384, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 390, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 393, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 398, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 286, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 295, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 177, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 191, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"TMP421_TEMP_MSB\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 44, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"TMP421_TEMP_LSB\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 45, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 307, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 308, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 308, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 308, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 309, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 309, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [26 x i8] c"../drivers/hwmon/tmp421.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 357, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tmp421_driver_exit, ptr @__initcall__kmod_tmp421__288_496_tmp421_driver_init6, ptr @tmp421_detect._entry, ptr @tmp421_detect._entry_ptr, ptr @tmp421_driver_exit, ptr @tmp421_enable_channels._entry, ptr @tmp421_enable_channels._entry.28, ptr @tmp421_enable_channels._entry_ptr, ptr @tmp421_enable_channels._entry_ptr.30, ptr @tmp421_init_client._entry, ptr @tmp421_init_client._entry.22, ptr @tmp421_init_client._entry_ptr, ptr @tmp421_init_client._entry_ptr.25, ptr @tmp421_probe_child_from_dt._entry, ptr @tmp421_probe_child_from_dt._entry.14, ptr @tmp421_probe_child_from_dt._entry.17, ptr @tmp421_probe_child_from_dt._entry.9, ptr @tmp421_probe_child_from_dt._entry_ptr, ptr @tmp421_probe_child_from_dt._entry_ptr.11, ptr @tmp421_probe_child_from_dt._entry_ptr.16, ptr @tmp421_probe_child_from_dt._entry_ptr.19, ptr @tmp421_driver, ptr @.str, ptr @tmp421_of_match, ptr @tmp421_id, ptr @normal_i2c, ptr @tmp421_probe.__key, ptr @.str.1, ptr @tmp421_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @TMP421_TEMP_MSB, ptr @TMP421_TEMP_LSB, ptr @tmp421_detect.names, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_probe_child_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_probe_child_from_dt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_probe_child_from_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_probe_child_from_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_init_client._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_enable_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_enable_channels._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP421_TEMP_MSB to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP421_TEMP_LSB to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_detect.names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp421_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp421_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tmp421_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmp421_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @tmp421_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp421_probe(ptr noundef %client) #2 align 64 {
entry:
  %i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 188, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %update_lock = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tmp421_probe.__key) #9
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %2 = ptrtoint ptr %call6 to i32
  br label %if.end9

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call ptr @i2c_match_id(ptr noundef nonnull @tmp421_id, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call7, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %.sink = phi i32 [ %4, %if.else ], [ %2, %if.then4 ]
  %5 = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %cmp101.not = icmp eq i32 %.sink, 0
  br i1 %cmp101.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tmp421_data, ptr %call.i, i32 0, i32 2, i32 %i.0102
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 524291, ptr %arrayidx, align 4
  %enabled = getelementptr %struct.tmp421_data, ptr %call.i, i32 0, i32 10, i32 %i.0102, i32 1
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %enabled, align 4
  %inc = add nuw i32 %i.0102, 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i69 = tail call ptr @of_get_next_child(ptr noundef %13, ptr noundef null) #9
  %cmp.not40.i = icmp eq ptr %call.i69, null
  br i1 %cmp.not40.i, label %for.end.if.end16_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %child.041.i = phi ptr [ %call7.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i69, %for.end.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %child.041.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %child.041.i, align 4
  %call2.i = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i) #9
  %16 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %i.i.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i, align 4, !annotation !102
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.041.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull %child.041.i) #13
  br label %tmp421_probe_from_dt.exit

if.end.i.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i.i.i, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i.i = icmp ult i32 %19, %21
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %do.end5.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %19, ptr noundef nonnull %child.041.i) #13
  br label %tmp421_probe_from_dt.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.tmp421_data, ptr %call.i, i32 0, i32 10, i32 %19
  %call7.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.041.i, ptr noundef nonnull @.str.12, ptr noundef %arrayidx.i.i) #9
  %22 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.tmp421_data, ptr %call.i, i32 0, i32 10, i32 %23
  %24 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %25, null
  br i1 %tobool11.not.i.i, label %if.end6.i.i.if.end14.i.i_crit_edge, label %if.then12.i.i

if.end6.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.i.i = getelementptr %struct.tmp421_data, ptr %call.i, i32 0, i32 2, i32 %23
  %26 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13.i.i, align 4
  %or.i.i = or i32 %27, 2097152
  store i32 %or.i.i, ptr %arrayidx13.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.end6.i.i.if.end14.i.i_crit_edge
  %call15.i.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.041.i) #9
  %28 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i.i.i, align 4
  %enabled.i.i = getelementptr %struct.tmp421_data, ptr %call.i, i32 0, i32 10, i32 %29, i32 1
  %frombool.i.i = zext i1 %call15.i.i to i8
  %30 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool.i.i, ptr %enabled.i.i, align 4
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.041.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i)
  %tobool19.not.i.i = icmp sgt i32 %call.i.i.i.i.i, -1
  br i1 %tobool19.not.i.i, label %if.then20.i.i, label %if.end14.i.i.tmp421_probe_child_from_dt.exit.i_crit_edge

if.end14.i.i.tmp421_probe_child_from_dt.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmp421_probe_child_from_dt.exit.i

if.then20.i.i:                                    ; preds = %if.end14.i.i
  %31 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp21.i.i = icmp eq i32 %32, 0
  br i1 %cmp21.i.i, label %do.end25.i.i, label %if.end26.i.i

do.end25.i.i:                                     ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #13
  br label %tmp421_probe_from_dt.exit

if.end26.i.i:                                     ; preds = %if.then20.i.i
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i.i, align 4
  %35 = add i32 %34, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %35)
  %36 = icmp ult i32 %35, -256
  br i1 %36, label %do.end32.i.i, label %if.end33.i.i

do.end32.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %32, i32 noundef %34) #13
  br label %tmp421_probe_from_dt.exit

if.end33.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = trunc i32 %32 to i8
  %conv.i.i = add i8 %37, 32
  %conv34.i.i = trunc i32 %34 to i8
  %call35.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv34.i.i) #9
  br label %tmp421_probe_child_from_dt.exit.i

tmp421_probe_child_from_dt.exit.i:                ; preds = %if.end33.i.i, %if.end14.i.i.tmp421_probe_child_from_dt.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %tmp421_probe_child_from_dt.exit.i, %for.body.i.for.inc.i_crit_edge
  %call7.i = call ptr @of_get_next_child(ptr noundef %13, ptr noundef nonnull %child.041.i) #9
  %cmp.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end16_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end16_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

tmp421_probe_from_dt.exit:                        ; preds = %do.end32.i.i, %do.end25.i.i, %do.end5.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %do.end32.i.i ], [ -22, %do.end25.i.i ], [ -22, %do.end5.i.i ], [ %call.i.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  call void @of_node_put(ptr noundef nonnull %child.041.i) #9
  br label %cleanup

if.end16:                                         ; preds = %for.inc.i.if.end16_crit_edge, %for.end.if.end16_crit_edge
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call.i70 = call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 11, i8 noundef zeroext 5) #9
  %call2.i71 = call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i71)
  %cmp.i = icmp slt i32 %call2.i71, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i72

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %call2.i71) #13
  br label %cleanup

if.end.i72:                                       ; preds = %if.end16
  %and.i = and i32 %call2.i71, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %call2.i71)
  %cmp3.not.i = icmp eq i32 %and.i, %call2.i71
  br i1 %cmp3.not.i, label %if.end.i72.if.end10.i_crit_edge, label %do.end7.i

if.end.i72.if.end10.i_crit_edge:                  ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.23) #13
  %conv.i = trunc i32 %and.i to i8
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 9, i8 noundef zeroext %conv.i) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end7.i, %if.end.i72.if.end10.i_crit_edge
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  %call.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end10.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i74

if.end10.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end.i.i74:                                     ; preds = %if.end10.i
  %and.i.i = and i32 %call.i.i, -121
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp336.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp336.not.i.i, label %if.end.i.i74.for.end.i.i_crit_edge, label %if.end.i.i74.for.body.i.i_crit_edge

if.end.i.i74.for.body.i.i_crit_edge:              ; preds = %if.end.i.i74
  br label %for.body.i.i

if.end.i.i74.for.end.i.i_crit_edge:               ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i74.for.body.i.i_crit_edge
  %i.038.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i74.for.body.i.i_crit_edge ]
  %new.037.i.i = phi i32 [ %new.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %and.i.i, %if.end.i.i74.for.body.i.i_crit_edge ]
  %enabled.i.i75 = getelementptr %struct.tmp421_data, ptr %call.i, i32 0, i32 10, i32 %i.038.i.i, i32 1
  %44 = ptrtoint ptr %enabled.i.i75 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enabled.i.i75, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i76 = icmp eq i8 %45, 0
  %add.i.i = add i32 %i.038.i.i, 3
  %shl.i.i = shl nuw i32 1, %add.i.i
  %or.i.i77 = select i1 %tobool.not.i.i76, i32 0, i32 %shl.i.i
  %new.1.i.i = or i32 %or.i.i77, %new.037.i.i
  %inc.i.i = add nuw i32 %i.038.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %43
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i74.for.end.i.i_crit_edge
  %new.0.lcssa.i.i = phi i32 [ %and.i.i, %if.end.i.i74.for.end.i.i_crit_edge ], [ %new.1.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new.0.lcssa.i.i, i32 %call.i.i)
  %cmp6.i.i = icmp eq i32 %new.0.lcssa.i.i, %call.i.i
  br i1 %cmp6.i.i, label %for.end.i.i.if.end20_crit_edge, label %if.end8.i.i

for.end.i.i.if.end20_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end8.i.i:                                      ; preds = %for.end.i.i
  %conv.i.i78 = trunc i32 %new.0.lcssa.i.i to i8
  %call9.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 10, i8 noundef zeroext %conv.i.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %if.end8.i.i.cleanup.sink.split.i.i_crit_edge, label %tmp421_init_client.exit

if.end8.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end8.i.i.cleanup.sink.split.i.i_crit_edge, %if.end10.i.cleanup.sink.split.i.i_crit_edge
  %.str.29.sink.i.i = phi ptr [ @.str.26, %if.end10.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.29, %if.end8.i.i.cleanup.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i, %if.end10.i.cleanup.sink.split.i.i_crit_edge ], [ %call9.i.i, %if.end8.i.i.cleanup.sink.split.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull %.str.29.sink.i.i) #13
  br label %cleanup

tmp421_init_client.exit:                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool18.not = icmp eq i32 %call9.i.i, 0
  br i1 %tobool18.not, label %tmp421_init_client.exit.if.end20_crit_edge, label %tmp421_init_client.exit.cleanup_crit_edge

tmp421_init_client.exit.cleanup_crit_edge:        ; preds = %tmp421_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tmp421_init_client.exit.if.end20_crit_edge:       ; preds = %tmp421_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %tmp421_init_client.exit.if.end20_crit_edge, %for.end.i.i.if.end20_crit_edge
  %chip = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tmp421_ops, ptr %chip, align 4
  %info = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 4
  %info22 = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %info22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %info, ptr %info22, align 4
  %temp_info = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %temp_info, ptr %info, align 4
  %49 = ptrtoint ptr %temp_info to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %temp_info, align 4
  %temp_config26 = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 2
  %config = getelementptr inbounds %struct.tmp421_data, ptr %call.i, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %temp_config26, ptr %config, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call31 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %chip, ptr noundef null) #9
  %cmp.i.i80 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  %51 = ptrtoint ptr %call31 to i32
  %spec.select.i = select i1 %cmp.i.i80, i32 %51, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %tmp421_init_client.exit.cleanup_crit_edge, %cleanup.sink.split.i.i, %do.end.i, %tmp421_probe_from_dt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph.i, %tmp421_probe_from_dt.exit ], [ %call9.i.i, %tmp421_init_client.exit.cleanup_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ], [ %call2.i71, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp421_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr2, align 2
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
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #9
  %conv5 = and i32 %call3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %conv5)
  %cmp.not = icmp eq i32 %conv5, 85
  br i1 %cmp.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 11) #9
  %and = and i32 %call9, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 8) #9
  %and18 = and i32 %call15, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #9
  %trunc = trunc i32 %call22 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end21.cleanup_crit_edge [
    i8 33, label %if.end21.sw.epilog_crit_edge
    i8 34, label %sw.bb25
    i8 35, label %sw.bb30
    i8 65, label %sw.bb37
    i8 66, label %sw.bb38
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb25:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %3)
  %cmp26 = icmp eq i16 %3, 42
  br i1 %cmp26, label %sw.bb25.cleanup_crit_edge, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb30:                                          ; preds = %if.end21
  %9 = and i16 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %9)
  %switch = icmp eq i16 %9, 76
  br i1 %switch, label %sw.bb30.sw.epilog_crit_edge, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end21
  %10 = and i16 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %10)
  %switch70 = icmp eq i16 %10, 76
  br i1 %switch70, label %sw.bb38.sw.epilog_crit_edge, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38.sw.epilog_crit_edge, %sw.bb37, %sw.bb30.sw.epilog_crit_edge, %sw.bb25.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge
  %kind.0 = phi i32 [ 3, %sw.bb37 ], [ 0, %if.end21.sw.epilog_crit_edge ], [ 1, %sw.bb25.sw.epilog_crit_edge ], [ 2, %sw.bb30.sw.epilog_crit_edge ], [ 4, %sw.bb38.sw.epilog_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.i2c_device_id], ptr @tmp421_id, i32 0, i32 %kind.0
  %call47 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef %arrayidx, i32 noundef 20) #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %arrayidx48 = getelementptr [5 x ptr], ptr @tmp421_detect.names, i32 0, i32 %kind.0
  %11 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx48, align 4
  %13 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr2, align 2
  %conv50 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %12, i32 noundef %conv50) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb38.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ], [ -19, %sw.bb25.cleanup_crit_edge ], [ -19, %sw.bb30.cleanup_crit_edge ], [ -19, %sw.bb38.cleanup_crit_edge ], [ -19, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tmp421_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %attr, label %sw.default [
    i32 19, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge3
    i32 21, label %entry.return_crit_edge4
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i16 [ 0, %sw.default ], [ 420, %sw.bb2 ], [ 292, %entry.return_crit_edge ], [ 292, %entry.return_crit_edge3 ], [ 292, %entry.return_crit_edge4 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp421_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
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
  %update_lock.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #9
  %last_updated.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated.i, align 4
  %add.i = add i32 %5, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %valid.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.then.i.tmp421_update_device.exit_crit_edge, label %if.end.i

if.then.i.tmp421_update_device.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmp421_update_device.exit

if.end.i:                                         ; preds = %if.then.i
  %conv.i = trunc i32 %call.i to i8
  %config.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %config.i, align 4
  %channels.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp464.not.i = icmp eq i32 %11, 0
  br i1 %cmp464.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.065.i = phi i32 [ %inc.i, %if.end18.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i8], ptr @TMP421_TEMP_MSB, i32 0, i32 %i.065.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %for.body.i.tmp421_update_device.exit_crit_edge, label %if.end10.i

for.body.i.tmp421_update_device.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmp421_update_device.exit

if.end10.i:                                       ; preds = %for.body.i
  %call6.tr.i = trunc i32 %call6.i to i16
  %conv11.i = shl i16 %call6.tr.i, 8
  %temp.i = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %i.065.i, i32 2
  %14 = ptrtoint ptr %temp.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv11.i, ptr %temp.i, align 2
  %arrayidx13.i = getelementptr [4 x i8], ptr @TMP421_TEMP_LSB, i32 0, i32 %i.065.i
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13.i, align 1
  %call14.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end10.i.tmp421_update_device.exit_crit_edge, label %if.end18.i

if.end10.i.tmp421_update_device.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmp421_update_device.exit

if.end18.i:                                       ; preds = %if.end10.i
  %17 = ptrtoint ptr %temp.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %temp.i, align 2
  %19 = trunc i32 %call14.i to i16
  %conv23.i = or i16 %18, %19
  store i16 %conv23.i, ptr %temp.i, align 2
  %inc.i = add nuw i32 %i.065.i, 1
  %20 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels.i, align 4
  %cmp4.i = icmp ult i32 %inc.i, %21
  br i1 %cmp4.i, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.for.end.i_crit_edge

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end18.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_updated.i, align 4
  %valid25.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %valid25.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %valid25.i, align 4
  br label %if.end

tmp421_update_device.exit:                        ; preds = %if.end10.i.tmp421_update_device.exit_crit_edge, %for.body.i.tmp421_update_device.exit_crit_edge, %if.then.i.tmp421_update_device.exit_crit_edge
  %ret.1.ph.i = phi i32 [ %call.i, %if.then.i.tmp421_update_device.exit_crit_edge ], [ %call14.i, %if.end10.i.tmp421_update_device.exit_crit_edge ], [ %call6.i, %for.body.i.tmp421_update_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #9
  %valid31.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %valid31.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %valid31.i, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end.i, %lor.lhs.false.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #9
  %26 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 19, label %sw.bb10
    i32 0, label %sw.bb24
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %enabled = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %channel, i32 1
  %27 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enabled, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool3.not = icmp eq i8 %28, 0
  br i1 %tobool3.not, label %sw.bb.cleanup_crit_edge, label %if.end5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %temp = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %channel, i32 2
  %29 = ptrtoint ptr %temp to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %temp, align 2
  %config = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %config, align 4
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not = icmp eq i8 %33, 0
  %34 = and i16 %30, -16
  %and.i = zext i16 %34 to i32
  %sub.i45 = add nsw i32 %and.i, -16384
  %conv2.i = sext i16 %34 to i32
  %temp.0.i = select i1 %tobool8.not, i32 %conv2.i, i32 %sub.i45
  %mul.i = mul nsw i32 %temp.0.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %temp.0.i)
  %cmp.i46 = icmp sgt i32 %temp.0.i, 0
  %cond.in.v.i = select i1 %cmp.i46, i32 128, i32 -128
  %cond.in.i = add nsw i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 256
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond.i, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %enabled13 = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %channel, i32 1
  %36 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enabled13, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool14.not = icmp eq i8 %37, 0
  br i1 %tobool14.not, label %sw.bb10.cleanup_crit_edge, label %if.end16

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %temp19 = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %channel, i32 2
  %38 = ptrtoint ptr %temp19 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %temp19, align 2
  %40 = and i16 %39, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool22 = icmp ne i16 %40, 0
  %lnot.ext = zext i1 %tobool22 to i32
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %lnot.ext, ptr %val, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %enabled27 = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %channel, i32 1
  %42 = ptrtoint ptr %enabled27 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enabled27, align 4, !range !103
  %44 = zext i8 %43 to i32
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %if.end16, %sw.bb10.cleanup_crit_edge, %if.end5, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tmp421_update_device.exit
  %retval.0 = phi i32 [ 0, %sw.bb24 ], [ 0, %if.end16 ], [ 0, %if.end5 ], [ %ret.1.ph.i, %tmp421_update_device.exit ], [ -61, %sw.bb.cleanup_crit_edge ], [ -61, %sw.bb10.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tmp421_read_string(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %channel
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %str, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp421_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond = icmp eq i32 %attr, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  %enabled = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %channel, i32 1
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enabled, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup.sink.split.i_crit_edge, label %if.end.i

sw.bb.cleanup.sink.split.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %sw.bb
  %and.i = and i32 %call.i, -121
  %channels.i = getelementptr inbounds %struct.tmp421_data, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp336.not.i = icmp eq i32 %6, 0
  br i1 %cmp336.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %new.037.i = phi i32 [ %new.1.i, %for.body.i.for.body.i_crit_edge ], [ %and.i, %if.end.i.for.body.i_crit_edge ]
  %enabled.i = getelementptr %struct.tmp421_data, ptr %1, i32 0, i32 10, i32 %i.038.i, i32 1
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %add.i = add i32 %i.038.i, 3
  %shl.i = shl nuw i32 1, %add.i
  %or.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %new.1.i = or i32 %or.i, %new.037.i
  %inc.i = add nuw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %new.0.lcssa.i = phi i32 [ %and.i, %if.end.i.for.end.i_crit_edge ], [ %new.1.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new.0.lcssa.i, i32 %call.i)
  %cmp6.i = icmp eq i32 %new.0.lcssa.i, %call.i
  br i1 %cmp6.i, label %for.end.i.sw.epilog_crit_edge, label %if.end8.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end8.i:                                        ; preds = %for.end.i
  %conv.i = trunc i32 %new.0.lcssa.i to i8
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 10, i8 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.cleanup.sink.split.i_crit_edge, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end8.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end8.i.cleanup.sink.split.i_crit_edge, %sw.bb.cleanup.sink.split.i_crit_edge
  %.str.29.sink.i = phi ptr [ @.str.26, %sw.bb.cleanup.sink.split.i_crit_edge ], [ @.str.29, %if.end8.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %sw.bb.cleanup.sink.split.i_crit_edge ], [ %call9.i, %if.end8.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull %.str.29.sink.i) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.sink.split.i, %if.end8.i.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %for.end.i.sw.epilog_crit_edge ], [ %call9.i, %if.end8.i.sw.epilog_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_tmp421__288_496_tmp421_driver_init6, !1, !"__initcall__kmod_tmp421__288_496_tmp421_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/tmp421.c", i32 496, i32 1}
!2 = !{ptr @__exitcall_tmp421_driver_exit, !1, !"__exitcall_tmp421_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/tmp421.c", i32 498, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/tmp421.c", i32 499, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/tmp421.c", i32 500, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/tmp421.c", i32 487, i32 11}
!12 = !{ptr @tmp421_driver, !13, !"tmp421_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/tmp421.c", i32 484, i32 26}
!14 = !{ptr @tmp421_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/tmp421.c", i32 448, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/tmp421.c", i32 417, i32 27}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/tmp421.c", i32 373, i32 36}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/tmp421.c", i32 375, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tmp421_probe_child_from_dt._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @tmp421_probe_child_from_dt._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/tmp421.c", i32 380, i32 3}
!31 = !{ptr @tmp421_probe_child_from_dt._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tmp421_probe_child_from_dt._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/tmp421.c", i32 384, i32 33}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/tmp421.c", i32 390, i32 36}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/tmp421.c", i32 393, i32 4}
!39 = !{ptr @tmp421_probe_child_from_dt._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tmp421_probe_child_from_dt._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/tmp421.c", i32 398, i32 4}
!43 = !{ptr @tmp421_probe_child_from_dt._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tmp421_probe_child_from_dt._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/tmp421.c", i32 286, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tmp421_init_client._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tmp421_init_client._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/tmp421.c", i32 295, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tmp421_init_client._entry.22, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @tmp421_init_client._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/tmp421.c", i32 177, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tmp421_enable_channels._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tmp421_enable_channels._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/tmp421.c", i32 191, i32 3}
!62 = !{ptr @tmp421_enable_channels._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tmp421_enable_channels._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @tmp421_ops, !65, !"tmp421_ops", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/tmp421.c", i32 430, i32 31}
!66 = !{ptr @TMP421_TEMP_MSB, !67, !"TMP421_TEMP_MSB", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/tmp421.c", i32 44, i32 17}
!68 = !{ptr @TMP421_TEMP_LSB, !69, !"TMP421_TEMP_LSB", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/tmp421.c", i32 45, i32 17}
!70 = !{ptr @tmp421_of_match, !71, !"tmp421_of_match", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/tmp421.c", i32 69, i32 49}
!72 = !{ptr @tmp421_id, !73, !"tmp421_id", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/tmp421.c", i32 59, i32 35}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/tmp421.c", i32 308, i32 3}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/tmp421.c", i32 308, i32 13}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/tmp421.c", i32 308, i32 23}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/tmp421.c", i32 309, i32 3}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/tmp421.c", i32 309, i32 13}
!84 = !{ptr @tmp421_detect.names, !85, !"names", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/tmp421.c", i32 307, i32 28}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/tmp421.c", i32 357, i32 2}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @tmp421_detect._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @tmp421_detect._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @normal_i2c, !92, !"normal_i2c", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/tmp421.c", i32 27, i32 29}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i8 0, i8 2}
