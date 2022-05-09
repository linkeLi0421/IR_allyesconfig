; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/icp10100.c_pt.bc'
source_filename = "../drivers/iio/pressure/icp10100.c"
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.icp10100_command = type { i16, i32, i32, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.icp10100_state = type { %struct.mutex, ptr, ptr, i32, [4 x i16] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_icp10100__296_655_icp10100_driver_init6 = internal global ptr @icp10100_driver_init, section ".initcall6.init", align 4
@icp10100_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @icp10100_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @icp10100_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icp10100_pm, ptr null, ptr null }, ptr @icp10100_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_icp10100_driver_exit = internal global ptr @icp10100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [33 x i8] c"icp10100.author=InvenSense, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [48 x i8] c"icp10100.description=InvenSense icp10100 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [44 x i8] c"icp10100.file=drivers/iio/pressure/icp10100\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [21 x i8] c"icp10100.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icp10100\00", [23 x i8] zeroinitializer }, align 32
@icp10100_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"invensense,icp10100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@icp10100_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @icp10100_suspend, ptr @icp10100_resume, ptr @icp10100_suspend, ptr @icp10100_resume, ptr @icp10100_suspend, ptr @icp10100_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icp10100_suspend, ptr @icp10100_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@icp10100_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"icp10100\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@icp10100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"plain i2c transactions not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"icp10100_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/pressure/icp10100.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@icp10100_probe._entry_ptr = internal global ptr @icp10100_probe._entry, section ".printk_index", align 4
@icp10100_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 33554432, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 33554432, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@icp10100_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @icp10100_read_raw, ptr null, ptr @icp10100_read_avail, ptr @icp10100_write_raw, ptr null, ptr @icp10100_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@icp10100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@icp10100_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@icp10100_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init chip error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@icp10100_probe._entry_ptr.10 = internal global ptr @icp10100_probe._entry.8, section ".printk_index", align 4
@icp10100_cmd_measure = internal constant { [4 x %struct.icp10100_command], [32 x i8] } { [4 x %struct.icp10100_command] [%struct.icp10100_command { i16 16410, i32 1800, i32 2000, i32 3 }, %struct.icp10100_command { i16 18595, i32 6300, i32 6500, i32 3 }, %struct.icp10100_command { i16 20569, i32 23800, i32 24000, i32 3 }, %struct.icp10100_command { i16 22752, i32 94500, i32 94700, i32 3 }], [32 x i8] zeroinitializer }, align 32
@icp10100_send_cmd.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icp10100_send_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sending cmd %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@icp10100_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"crc error recv=%#x calc=%#x\0A\00", [35 x i8] zeroinitializer }, align 32
@icp10100_send_cmd._entry_ptr = internal global ptr @icp10100_send_cmd._entry, section ".printk_index", align 4
@icp10100_get_pressure.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"icp10100_get_pressure\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"raw: pressure = %u, temp = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@icp10100_get_pressure.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"p_lut = [%d, %d, %d]\0A\00", [42 x i8] zeroinitializer }, align 32
@icp10100_get_pressure.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.17, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"val1 = %lld, val2 = %lld, c = %lld\0A\00", [60 x i8] zeroinitializer }, align 32
@icp10100_get_pressure.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.18, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"val1 = %lld, val2 = %lld, a = %lld\0A\00", [60 x i8] zeroinitializer }, align 32
@icp10100_get_pressure.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.19, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"b = %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@icp10100_read_avail.oversamplings = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@icp10100_disable_regulator_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error %d disabling vdd\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"icp10100_disable_regulator_action\00", [62 x i8] zeroinitializer }, align 32
@icp10100_disable_regulator_action._entry_ptr = internal global ptr @icp10100_disable_regulator_action._entry, section ".printk_index", align 4
@icp10100_cmd_read_id = internal constant { %struct.icp10100_command, [16 x i8] } { %struct.icp10100_command { i16 -4152, i32 0, i32 0, i32 1 }, [16 x i8] zeroinitializer }, align 32
@icp10100_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid id %#x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"icp10100_init_chip\00", [45 x i8] zeroinitializer }, align 32
@icp10100_init_chip._entry_ptr = internal global ptr @icp10100_init_chip._entry, section ".printk_index", align 4
@icp10100_cmd_soft_reset = internal constant { %struct.icp10100_command, [16 x i8] } { %struct.icp10100_command { i16 -32675, i32 170, i32 200, i32 0 }, [16 x i8] zeroinitializer }, align 32
@icp10100_switch_mode_otp = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C5\95\00f\9C", [27 x i8] zeroinitializer }, align 32
@icp10100_cmd_read_otp = internal constant { %struct.icp10100_command, [16 x i8] } { %struct.icp10100_command { i16 -14345, i32 0, i32 0, i32 1 }, [16 x i8] zeroinitializer }, align 32
@icp10100_read_cal_otp.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"icp10100_read_cal_otp\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cal[%d] = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 25]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"icp10100_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 646, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 648, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"icp10100_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 632, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"icp10100_pm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 629, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"icp10100_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 640, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 541, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"icp10100_channels\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 484, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"icp10100_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 477, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 557, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 561, i32 45 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"icp10100_crc8_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 103, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 579, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"icp10100_cmd_measure\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 73, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 152, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 183, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 288, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 301, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 315, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 322, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 325, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"oversamplings\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 423, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 523, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"icp10100_cmd_read_id\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 61, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 233, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [24 x i8] c"icp10100_cmd_soft_reset\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 54, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant [25 x i8] c"icp10100_switch_mode_otp\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 100, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"icp10100_cmd_read_otp\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 67, i32 38 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [35 x i8] c"../drivers/iio/pressure/icp10100.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 215, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_icp10100_driver_exit, ptr @__initcall__kmod_icp10100__296_655_icp10100_driver_init6, ptr @icp10100_disable_regulator_action._entry, ptr @icp10100_disable_regulator_action._entry_ptr, ptr @icp10100_driver_exit, ptr @icp10100_init_chip._entry, ptr @icp10100_init_chip._entry_ptr, ptr @icp10100_probe._entry, ptr @icp10100_probe._entry.8, ptr @icp10100_probe._entry_ptr, ptr @icp10100_probe._entry_ptr.10, ptr @icp10100_send_cmd._entry, ptr @icp10100_send_cmd._entry_ptr, ptr @icp10100_driver, ptr @.str, ptr @icp10100_of_match, ptr @icp10100_pm, ptr @icp10100_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @icp10100_channels, ptr @icp10100_info, ptr @icp10100_probe.__key, ptr @.str.6, ptr @.str.7, ptr @icp10100_crc8_table, ptr @.str.9, ptr @icp10100_cmd_measure, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @icp10100_read_avail.oversamplings, ptr @.str.20, ptr @.str.21, ptr @icp10100_cmd_read_id, ptr @.str.22, ptr @.str.23, ptr @icp10100_cmd_soft_reset, ptr @icp10100_switch_mode_otp, ptr @icp10100_cmd_read_otp, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_cmd_measure to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_read_avail.oversamplings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_disable_regulator_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_cmd_read_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_cmd_soft_reset to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_switch_mode_otp to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp10100_cmd_read_otp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @icp10100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @icp10100_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @icp10100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @icp10100_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp10100_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
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
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %7 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %name6, align 8
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @icp10100_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @icp10100_info, ptr %info, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull @icp10100_probe.__key) #9
  %client11 = getelementptr inbounds %struct.icp10100_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %client11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %client11, align 4
  %mode = getelementptr inbounds %struct.icp10100_state, ptr %13, i32 0, i32 3
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mode, align 4
  %call13 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %vdd = getelementptr inbounds %struct.icp10100_state, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %vdd, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %call.i = tail call i32 @regulator_enable(ptr noundef %call13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  tail call void @msleep(i32 noundef 100) #9
  %call.i96 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @icp10100_disable_regulator_action, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end28, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  %18 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdd, align 4
  %call.i107 = tail call i32 @regulator_disable(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %client11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client11, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %call.i107) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  tail call void @crc8_populate_msb(ptr noundef nonnull @icp10100_crc8_table, i8 noundef zeroext 49) #9
  %call29 = tail call fastcc i32 @icp10100_init_chip(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call29) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !112
  %call.i99 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i100 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  %call.i101 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @icp10100_pm_disable, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end50, label %devm_add_action_or_reset.exit105

devm_add_action_or_reset.exit105:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %devm_add_action_or_reset.exit105, %do.end34, %do.end.i, %if.then.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %17, %if.then16 ], [ %call29, %do.end34 ], [ %call52, %if.end50 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i101, %devm_add_action_or_reset.exit105 ], [ %call.i, %if.end19.cleanup_crit_edge ], [ %call.i96, %do.end.i ], [ %call.i96, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icp10100_disable_regulator_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.icp10100_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.icp10100_state, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icp10100_init_chip(ptr nocapture noundef %st) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !113
  %call = call fastcc i32 @icp10100_send_cmd(ptr noundef %st, ptr noundef nonnull @icp10100_cmd_read_id, ptr noundef nonnull %val, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = and i16 %2, 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp.not = icmp eq i16 %3, 8
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv2 = zext i16 %3 to i32
  %client = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv2) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #9
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i, align 2, !annotation !113
  %client.i = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull @icp10100_switch_mode_otp, i32 noundef 5, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end6.icp10100_read_cal_otp.exit.thread_crit_edge, label %if.end.i

if.end6.icp10100_read_cal_otp.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %icp10100_read_cal_otp.exit.thread

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 5
  br i1 %cmp1.not.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.icp10100_read_cal_otp.exit.thread_crit_edge

if.end.i.icp10100_read_cal_otp.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %icp10100_read_cal_otp.exit.thread

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call5.i = call fastcc i32 @icp10100_send_cmd(ptr noundef %st, ptr noundef nonnull @icp10100_cmd_read_otp, ptr noundef nonnull %val.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %for.body.i.icp10100_read_cal_otp.exit.thread_crit_edge

for.body.i.icp10100_read_cal_otp.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %icp10100_read_cal_otp.exit.thread

if.end7.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val.i, align 2
  %arrayidx.i = getelementptr %struct.icp10100_state, ptr %st, i32 0, i32 4, i32 %i.032.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icp10100_read_cal_otp.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icp10100_init_chip, %if.then12.i)) #9
          to label %for.inc.i [label %if.then12.i], !srcloc !114

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %conv.i = sext i16 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icp10100_read_cal_otp.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %i.032.i, i32 noundef %conv.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %if.end7.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %if.end10, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

icp10100_read_cal_otp.exit.thread:                ; preds = %for.body.i.icp10100_read_cal_otp.exit.thread_crit_edge, %if.end.i.icp10100_read_cal_otp.exit.thread_crit_edge, %if.end6.icp10100_read_cal_otp.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.icp10100_read_cal_otp.exit.thread_crit_edge ], [ %call.i.i, %if.end6.icp10100_read_cal_otp.exit.thread_crit_edge ], [ %call5.i, %for.body.i.icp10100_read_cal_otp.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #9
  br label %cleanup

if.end10:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #9
  %call11 = call fastcc i32 @icp10100_send_cmd(ptr noundef %st, ptr noundef nonnull @icp10100_cmd_soft_reset, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %icp10100_read_cal_otp.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call11, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %icp10100_read_cal_otp.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icp10100_pm_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp10100_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %measures.i.i = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge21
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 25, label %sw.bb8
  ]

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  %call1.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %measures.i.i) #9
  %3 = ptrtoint ptr %measures.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %measures.i.i, align 2, !annotation !113
  %4 = getelementptr inbounds [3 x i16], ptr %measures.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !113
  %6 = getelementptr inbounds [3 x i16], ptr %measures.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !113
  %client.i.i = getelementptr inbounds %struct.icp10100_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %usage_count.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #9, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.icp10100_get_measures.exit.thread.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.icp10100_get_measures.exit.thread.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %icp10100_get_measures.exit.thread.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !117
  br label %icp10100_get_measures.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %mode.i.i = getelementptr inbounds %struct.icp10100_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x %struct.icp10100_command], ptr @icp10100_cmd_measure, i32 0, i32 %12
  %call1.i.i = call fastcc i32 @icp10100_send_cmd(ptr noundef %1, ptr noundef %arrayidx.i.i, ptr noundef nonnull %measures.i.i, i32 noundef 6) #9
  call void @mutex_unlock(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i, label %icp10100_get_measures.exit.i

icp10100_get_measures.exit.thread.i:              ; preds = %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.icp10100_get_measures.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %measures.i.i) #9
  br label %error_release.i

icp10100_get_measures.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i.i, align 4
  %dev12.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %call.i26.i.i = call i32 @__pm_runtime_suspend(ptr noundef %dev12.i.i, i32 noundef 13) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %measures.i.i) #9
  br label %error_release.i

if.end5.i:                                        ; preds = %if.end.i.i
  %15 = ptrtoint ptr %measures.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %measures.i.i, align 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %4, align 2
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %6, align 2
  %21 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i.i, align 4
  %call.i25.i.i = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i25.i.i, ptr %last_busy.i.i.i, align 8
  %24 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i.i, align 4
  %dev12.i28.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %call.i26.i29.i = call i32 @__pm_runtime_suspend(ptr noundef %dev12.i28.i, i32 noundef 13) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %measures.i.i) #9
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %27, label %if.end5.i.error_release.i_crit_edge [
    i32 17, label %sw.bb.i
    i32 9, label %sw.bb7.i
  ]

if.end5.i.error_release.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release.i

sw.bb.i:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %16 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %29 = lshr i16 %18, 8
  %30 = zext i16 %29 to i32
  %or.i.i = or i32 %shl.i.i, %30
  %call6.i = call fastcc i32 @icp10100_get_pressure(ptr noundef %1, i32 noundef %or.i.i, i16 noundef zeroext %20) #9
  %call6.i.frozen = freeze i32 %call6.i
  %div.i = udiv i32 %call6.i.frozen, 1000000
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div.i, ptr %val, align 4
  %32 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %call6.i.frozen, %32
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rem.i.decomposed, ptr %val2, align 4
  br label %error_release.i

sw.bb7.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %20 to i32
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i, ptr %val, align 4
  br label %error_release.i

error_release.i:                                  ; preds = %sw.bb7.i, %sw.bb.i, %if.end5.i.error_release.i_crit_edge, %icp10100_get_measures.exit.i, %icp10100_get_measures.exit.thread.i
  %ret.0.i = phi i32 [ %call1.i.i, %icp10100_get_measures.exit.i ], [ 1, %sw.bb7.i ], [ 2, %sw.bb.i ], [ -22, %if.end5.i.error_release.i_crit_edge ], [ %call.i.i.i, %icp10100_get_measures.exit.thread.i ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %35 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %36)
  %cond11 = icmp eq i32 %36, 9
  br i1 %cond11, label %sw.bb3, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %val, align 4
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 670288, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %39 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %40)
  %cond = icmp eq i32 %40, 9
  br i1 %cond, label %sw.bb6, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -45000, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %mode = getelementptr inbounds %struct.icp10100_state, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode, align 4
  %shl = shl nuw i32 1, %43
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb6, %sw.bb4.cleanup_crit_edge, %sw.bb3, %sw.bb2.cleanup_crit_edge, %error_release.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb8 ], [ 1, %sw.bb6 ], [ 2, %sw.bb3 ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %error_release.i ], [ %call1.i, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @icp10100_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cond = icmp eq i32 %mask, 25
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @icp10100_read_avail.oversamplings, ptr %vals, align 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %length, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp10100_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cond19 = icmp eq i32 %mask, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp sgt i32 %val, 0
  %or.cond.not = and i1 %cmp, %cond19
  %2 = tail call i32 @llvm.ctpop.i32(i32 %val) #9, !range !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1.i = icmp ult i32 %2, 2
  %or.cond35 = and i1 %cmp1.i, %or.cond.not
  br i1 %or.cond35, label %cond.end6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end6:                                        ; preds = %entry
  %3 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #9, !range !118
  %cond7 = xor i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond7)
  %cmp8 = icmp ugt i32 %cond7, 3
  br i1 %cmp8, label %cond.end6.cleanup_crit_edge, label %if.end11

cond.end6.cleanup_crit_edge:                      ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %cond.end6
  %call12 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %mode15 = getelementptr inbounds %struct.icp10100_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mode15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond7, ptr %mode15, align 4
  tail call void @mutex_unlock(ptr noundef %1) #9
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end11.cleanup_crit_edge, %cond.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %cond.end6.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icp10100_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cond = icmp eq i32 %mask, 25
  %. = select i1 %cond, i32 1, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icp10100_get_pressure(ptr nocapture noundef readonly %st, i32 noundef %raw_pressure, i16 noundef zeroext %raw_temp) unnamed_addr #2 align 64 {
entry:
  %remainder.i239 = alloca i32, align 4
  %remainder.i237 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icp10100_get_pressure, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv = zext i16 %raw_temp to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icp10100_get_pressure.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %raw_pressure, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i16 %raw_temp to i32
  %sub = add nsw i32 %conv3, -32768
  %mul = mul nsw i32 %sub, %sub
  %cal = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 4
  %2 = ptrtoint ptr %cal to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cal, align 4
  %conv4 = sext i16 %3 to i64
  %conv5 = zext i32 %mul to i64
  %mul6 = mul nsw i64 %conv4, %conv5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #9
  %4 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %remainder.i, align 4, !annotation !113
  %call.i = call i64 @div_s64_rem(i64 noundef %mul6, i32 noundef 16777216, ptr noundef nonnull %remainder.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #9
  %conv8 = trunc i64 %call.i to i32
  %add = add i32 %conv8, 3670016
  %arrayidx11 = getelementptr %struct.icp10100_state, ptr %st, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx11, align 2
  %conv12 = sext i16 %6 to i64
  %mul14 = mul nsw i64 %conv12, %conv5
  %arrayidx16 = getelementptr %struct.icp10100_state, ptr %st, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx16, align 2
  %conv17 = sext i16 %8 to i32
  %mul18 = shl nsw i32 %conv17, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i237) #9
  %9 = ptrtoint ptr %remainder.i237 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %remainder.i237, align 4, !annotation !113
  %call.i238 = call i64 @div_s64_rem(i64 noundef %mul14, i32 noundef 16777216, ptr noundef nonnull %remainder.i237) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i237) #9
  %conv20 = trunc i64 %call.i238 to i32
  %add21 = add i32 %mul18, %conv20
  %arrayidx24 = getelementptr %struct.icp10100_state, ptr %st, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx24, align 4
  %conv25 = sext i16 %11 to i64
  %mul27 = mul nsw i64 %conv25, %conv5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i239) #9
  %12 = ptrtoint ptr %remainder.i239 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %remainder.i239, align 4, !annotation !113
  %call.i240 = call i64 @div_s64_rem(i64 noundef %mul27, i32 noundef 16777216, ptr noundef nonnull %remainder.i239) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i239) #9
  %conv29 = trunc i64 %call.i240 to i32
  %add30 = add i32 %conv29, 12058624
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icp10100_get_pressure, %if.then44)) #9
          to label %do.end52 [label %if.then44], !srcloc !114

if.then44:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %client45 = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %13 = ptrtoint ptr %client45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client45, align 4
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icp10100_get_pressure.__UNIQUE_ID_ddebug292, ptr noundef %dev46, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %add21, i32 noundef %add30) #9
  br label %do.end52

do.end52:                                         ; preds = %if.then44, %do.end
  %conv54 = sext i32 %add to i64
  %conv56 = sext i32 %add21 to i64
  %mul57 = mul nsw i64 %conv54, -35000
  %mul60 = mul i64 %mul57, %conv56
  %conv64 = sext i32 %add30 to i64
  %mul68 = mul nsw i64 %conv56, -25000
  %mul77 = mul nsw i64 %conv54, 60000
  %reass.add = add nsw i64 %mul77, %mul68
  %reass.mul = mul i64 %reass.add, %conv64
  %add78 = add i64 %reass.mul, %mul60
  %mul83 = mul nsw i64 %conv64, -35000
  %mul88 = mul nsw i64 %conv54, -25000
  %mul94 = mul nsw i64 %conv56, 60000
  %add89 = add nsw i64 %mul94, %mul88
  %add95 = add nsw i64 %add89, %mul83
  %call96 = call i64 @div64_s64(i64 noundef %add78, i64 noundef %add95) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icp10100_get_pressure, %if.then109)) #9
          to label %do.end114 [label %if.then109], !srcloc !114

if.then109:                                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  %client110 = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %15 = ptrtoint ptr %client110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client110, align 4
  %dev111 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icp10100_get_pressure.__UNIQUE_ID_ddebug293, ptr noundef %dev111, ptr noundef nonnull @.str.17, i64 noundef %add78, i64 noundef %add95, i64 noundef %call96) #9
  br label %do.end114

do.end114:                                        ; preds = %if.then109, %do.end52
  %mul118 = mul nsw i64 %conv54, 45000
  %mul122.neg = mul nsw i64 %conv56, -80000
  %sub123 = add nsw i64 %mul122.neg, %mul118
  %mul126.neg = mul i64 %call96, -35000
  %sub127 = add i64 %sub123, %mul126.neg
  %sub132 = sub nsw i64 %conv54, %conv56
  %call133 = call i64 @div64_s64(i64 noundef %sub127, i64 noundef %sub132) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icp10100_get_pressure, %if.then146)) #9
          to label %do.end151 [label %if.then146], !srcloc !114

if.then146:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #11
  %client147 = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %17 = ptrtoint ptr %client147 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client147, align 4
  %dev148 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icp10100_get_pressure.__UNIQUE_ID_ddebug294, ptr noundef %dev148, ptr noundef nonnull @.str.18, i64 noundef %sub127, i64 noundef %sub132, i64 noundef %call133) #9
  br label %do.end151

do.end151:                                        ; preds = %if.then146, %do.end114
  %sub153 = sub i64 45000, %call133
  %add156 = add i64 %call96, %conv54
  %mul157 = mul i64 %sub153, %add156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icp10100_get_pressure, %if.then170)) #9
          to label %do.end175 [label %if.then170], !srcloc !114

if.then170:                                       ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #11
  %client171 = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %19 = ptrtoint ptr %client171 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client171, align 4
  %dev172 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icp10100_get_pressure.__UNIQUE_ID_ddebug295, ptr noundef %dev172, ptr noundef nonnull @.str.19, i64 noundef %mul157) #9
  br label %do.end175

do.end175:                                        ; preds = %if.then170, %do.end151
  %mul176 = mul i64 %call133, 1000
  %mul177 = mul i64 %mul157, 1000
  %conv178 = zext i32 %raw_pressure to i64
  %add179 = add i64 %call96, %conv178
  %call180 = call i64 @div64_s64(i64 noundef %mul177, i64 noundef %add179) #9
  %add181 = add i64 %call180, %mul176
  %conv182 = trunc i64 %add181 to i32
  ret i32 %conv182
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icp10100_send_cmd(ptr nocapture noundef readonly %st, ptr noundef %cmd, ptr noundef writeonly %buf, i32 noundef %buf_len) unnamed_addr #2 align 64 {
entry:
  %data = alloca [16 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %response_word_nb = getelementptr inbounds %struct.icp10100_command, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %response_word_nb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %response_word_nb, align 4
  %mul = mul i32 %1, 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #9
  %2 = call ptr @memset(ptr %data, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %client = getelementptr inbounds %struct.icp10100_state, ptr %st, i32 0, i32 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1, align 2
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %12 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd, ptr %buf2, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %13 = load i16, ptr %addr1, align 2
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %15 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %conv = trunc i32 %mul to i16
  %16 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %len8, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %17 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %buf9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul)
  %cmp = icmp ugt i32 %mul, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %cmp14 = icmp eq ptr %buf, null
  %mul17 = shl i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul17, i32 %buf_len)
  %cmp18 = icmp ugt i32 %mul17, %buf_len
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp18
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icp10100_send_cmd.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icp10100_send_cmd, %if.then24)) #9
          to label %do.end [label %if.then24], !srcloc !114

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cmd, align 4
  %conv27 = zext i16 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icp10100_send_cmd.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv27) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %22 = ptrtoint ptr %response_word_nb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %response_word_nb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp30.not = icmp eq i32 %23, 0
  br i1 %cmp30.not, label %do.end.if.else_crit_edge, label %land.lhs.true32

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true32:                                  ; preds = %do.end
  %wait_us = getelementptr inbounds %struct.icp10100_command, ptr %cmd, i32 0, i32 1
  %24 = ptrtoint ptr %wait_us to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wait_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33 = icmp eq i32 %25, 0
  br i1 %cmp33, label %if.then35, label %land.lhs.true32.if.else_crit_edge

land.lhs.true32.if.else_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then35:                                        ; preds = %land.lhs.true32
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 2
  %..i = select i1 %cmp1.not.i, i32 0, i32 -5
  %retval.0.i132 = select i1 %cmp.i, i32 %call.i, i32 %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i132)
  %tobool39.not = icmp eq i32 %retval.0.i132, 0
  br i1 %tobool39.not, label %if.then35.if.end67_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35.if.end67_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.else:                                          ; preds = %land.lhs.true32.if.else_crit_edge, %do.end.if.else_crit_edge
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client, align 4
  %adapter43 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %adapter43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter43, align 8
  %call.i133 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msgs, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp.i134 = icmp slt i32 %call.i133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i133)
  %cmp1.not.i135 = icmp eq i32 %call.i133, 1
  %..i136 = select i1 %cmp1.not.i135, i32 0, i32 -5
  %retval.0.i137 = select i1 %cmp.i134, i32 %call.i133, i32 %..i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i137)
  %tobool45.not = icmp eq i32 %retval.0.i137, 0
  br i1 %tobool45.not, label %if.end47, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.else
  %wait_us48 = getelementptr inbounds %struct.icp10100_command, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %wait_us48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wait_us48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp49.not = icmp eq i32 %35, 0
  br i1 %cmp49.not, label %if.end47.if.end53_crit_edge, label %if.then51

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %wait_max_us = getelementptr inbounds %struct.icp10100_command, ptr %cmd, i32 0, i32 2
  %36 = ptrtoint ptr %wait_max_us to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wait_max_us, align 4
  call void @usleep_range_state(i32 noundef %35, i32 noundef %37, i32 noundef 2) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end47.if.end53_crit_edge
  %38 = ptrtoint ptr %response_word_nb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %response_word_nb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp55.not = icmp eq i32 %39, 0
  br i1 %cmp55.not, label %if.end53.cleanup_crit_edge, label %if.then57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %if.end53
  %40 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client, align 4
  %adapter59 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %adapter59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter59, align 8
  %call.i138 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef %arrayinit.element, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp.i139 = icmp slt i32 %call.i138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i138)
  %cmp1.not.i140 = icmp eq i32 %call.i138, 1
  %..i141 = select i1 %cmp1.not.i140, i32 0, i32 -5
  %retval.0.i142 = select i1 %cmp.i139, i32 %call.i138, i32 %..i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i142)
  %tobool62.not = icmp eq i32 %retval.0.i142, 0
  br i1 %tobool62.not, label %if.then57.if.end67_crit_edge, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57.if.end67_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end67:                                         ; preds = %if.then57.if.end67_crit_edge, %if.then35.if.end67_crit_edge
  %44 = ptrtoint ptr %response_word_nb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %response_word_nb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp69144.not = icmp eq i32 %45, 0
  br i1 %cmp69144.not, label %if.end67.cleanup_crit_edge, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  br label %for.body

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end88.for.body_crit_edge, %if.end67.for.body_crit_edge
  %i.0146 = phi i32 [ %inc, %if.end88.for.body_crit_edge ], [ 0, %if.end67.for.body_crit_edge ]
  %buf_ptr.0145 = phi ptr [ %incdec.ptr91, %if.end88.for.body_crit_edge ], [ %buf, %if.end67.for.body_crit_edge ]
  %mul71 = mul i32 %i.0146, 3
  %arrayidx72 = getelementptr [16 x i8], ptr %data, i32 0, i32 %mul71
  %call73 = call zeroext i8 @crc8(ptr noundef nonnull @icp10100_crc8_table, ptr noundef %arrayidx72, i32 noundef 2, i8 noundef zeroext -1) #9
  %arrayidx75 = getelementptr i8, ptr %arrayidx72, i32 2
  %46 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call73, i8 %47)
  %cmp77.not = icmp eq i8 %call73, %47
  br i1 %cmp77.not, label %if.end88, label %do.end82

do.end82:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv76 = zext i8 %47 to i32
  %conv74 = zext i8 %call73 to i32
  %48 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client, align 4
  %dev84 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.13, i32 noundef %conv76, i32 noundef %conv74) #12
  br label %cleanup

if.end88:                                         ; preds = %for.body
  %50 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx72, align 1
  %incdec.ptr = getelementptr i8, ptr %buf_ptr.0145, i32 1
  %52 = ptrtoint ptr %buf_ptr.0145 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %buf_ptr.0145, align 1
  %arrayidx90 = getelementptr i8, ptr %arrayidx72, i32 1
  %53 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx90, align 1
  %incdec.ptr91 = getelementptr i8, ptr %buf_ptr.0145, i32 2
  %55 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %incdec.ptr, align 1
  %inc = add nuw i32 %i.0146, 1
  %56 = ptrtoint ptr %response_word_nb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %response_word_nb, align 4
  %cmp69 = icmp ult i32 %inc, %57
  br i1 %cmp69, label %if.end88.for.body_crit_edge, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88.for.body_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end88.cleanup_crit_edge, %do.end82, %if.end67.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end82 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.i132, %if.then35.cleanup_crit_edge ], [ %retval.0.i137, %if.else.cleanup_crit_edge ], [ %retval.0.i142, %if.then57.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp10100_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %vdd = getelementptr inbounds %struct.icp10100_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #9
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp10100_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %vdd.i = getelementptr inbounds %struct.icp10100_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 100) #9
  %call3 = tail call fastcc i32 @icp10100_send_cmd(ptr noundef %3, ptr noundef nonnull @icp10100_cmd_soft_reset, ptr noundef null, i32 noundef 0)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end ], [ %call.i, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !85, !87, !89, !90, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_icp10100__296_655_icp10100_driver_init6, !1, !"__initcall__kmod_icp10100__296_655_icp10100_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/icp10100.c", i32 655, i32 1}
!2 = !{ptr @__exitcall_icp10100_driver_exit, !1, !"__exitcall_icp10100_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/icp10100.c", i32 657, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/icp10100.c", i32 658, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/icp10100.c", i32 659, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/icp10100.c", i32 648, i32 11}
!12 = !{ptr @icp10100_driver, !13, !"icp10100_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/icp10100.c", i32 646, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/icp10100.c", i32 541, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @icp10100_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @icp10100_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @icp10100_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/pressure/icp10100.c", i32 557, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/pressure/icp10100.c", i32 561, i32 45}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/pressure/icp10100.c", i32 579, i32 3}
!29 = !{ptr @icp10100_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @icp10100_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @icp10100_channels, !32, !"icp10100_channels", i1 false, i1 false}
!32 = !{!"../drivers/iio/pressure/icp10100.c", i32 484, i32 35}
!33 = !{ptr @icp10100_info, !34, !"icp10100_info", i1 false, i1 false}
!34 = !{!"../drivers/iio/pressure/icp10100.c", i32 477, i32 30}
!35 = !{ptr @icp10100_cmd_measure, !36, !"icp10100_cmd_measure", i1 false, i1 false}
!36 = !{!"../drivers/iio/pressure/icp10100.c", i32 73, i32 38}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/pressure/icp10100.c", i32 152, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @icp10100_send_cmd.__UNIQUE_ID_ddebug289, !38, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/pressure/icp10100.c", i32 183, i32 4}
!43 = !{ptr @icp10100_send_cmd._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @icp10100_send_cmd._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"p_calib", i1 false, i1 false}
!46 = !{!"../drivers/iio/pressure/icp10100.c", i32 277, i32 17}
!47 = distinct !{null, !48, !"lut_lower", i1 false, i1 false}
!48 = !{!"../drivers/iio/pressure/icp10100.c", i32 278, i32 17}
!49 = distinct !{null, !50, !"lut_upper", i1 false, i1 false}
!50 = !{!"../drivers/iio/pressure/icp10100.c", i32 279, i32 17}
!51 = distinct !{null, !52, !"inv_quadr_factor", i1 false, i1 false}
!52 = !{!"../drivers/iio/pressure/icp10100.c", i32 280, i32 17}
!53 = distinct !{null, !54, !"offset_factor", i1 false, i1 false}
!54 = !{!"../drivers/iio/pressure/icp10100.c", i32 281, i32 17}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/pressure/icp10100.c", i32 288, i32 2}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug291, !56, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/pressure/icp10100.c", i32 301, i32 2}
!61 = !{ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug292, !60, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/pressure/icp10100.c", i32 315, i32 2}
!64 = !{ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug293, !63, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/pressure/icp10100.c", i32 322, i32 2}
!67 = !{ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug294, !66, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/pressure/icp10100.c", i32 325, i32 2}
!70 = !{ptr @icp10100_get_pressure.__UNIQUE_ID_ddebug295, !69, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!71 = !{ptr @icp10100_read_avail.oversamplings, !72, !"oversamplings", i1 false, i1 false}
!72 = !{!"../drivers/iio/pressure/icp10100.c", i32 423, i32 13}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/pressure/icp10100.c", i32 523, i32 3}
!75 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @icp10100_disable_regulator_action._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @icp10100_disable_regulator_action._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @icp10100_crc8_table, !79, !"icp10100_crc8_table", i1 false, i1 false}
!79 = !{!"../drivers/iio/pressure/icp10100.c", i32 103, i32 1}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/pressure/icp10100.c", i32 233, i32 3}
!82 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @icp10100_init_chip._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @icp10100_init_chip._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @icp10100_cmd_read_id, !86, !"icp10100_cmd_read_id", i1 false, i1 false}
!86 = !{!"../drivers/iio/pressure/icp10100.c", i32 61, i32 38}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/pressure/icp10100.c", i32 215, i32 3}
!89 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @icp10100_read_cal_otp.__UNIQUE_ID_ddebug290, !88, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!91 = !{ptr @icp10100_switch_mode_otp, !92, !"icp10100_switch_mode_otp", i1 false, i1 false}
!92 = !{!"../drivers/iio/pressure/icp10100.c", i32 100, i32 22}
!93 = !{ptr @icp10100_cmd_read_otp, !94, !"icp10100_cmd_read_otp", i1 false, i1 false}
!94 = !{!"../drivers/iio/pressure/icp10100.c", i32 67, i32 38}
!95 = !{ptr @icp10100_cmd_soft_reset, !96, !"icp10100_cmd_soft_reset", i1 false, i1 false}
!96 = !{!"../drivers/iio/pressure/icp10100.c", i32 54, i32 38}
!97 = !{ptr @icp10100_of_match, !98, !"icp10100_of_match", i1 false, i1 false}
!98 = !{!"../drivers/iio/pressure/icp10100.c", i32 632, i32 34}
!99 = !{ptr @icp10100_pm, !100, !"icp10100_pm", i1 false, i1 false}
!100 = !{!"../drivers/iio/pressure/icp10100.c", i32 629, i32 8}
!101 = !{ptr @icp10100_id, !102, !"icp10100_id", i1 false, i1 false}
!102 = !{!"../drivers/iio/pressure/icp10100.c", i32 640, i32 35}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148478246, i64 2148478272, i64 2148478301, i64 2148478335, i64 2148478366, i64 2148478389}
!113 = !{!"auto-init"}
!114 = !{i64 2148291639, i64 2148291644, i64 2148291657, i64 2148291701, i64 2148291735, i64 2148291756}
!115 = !{i64 2148477665}
!116 = !{i64 964265, i64 964290, i64 964312, i64 964328, i64 964340, i64 964360, i64 964384, i64 964400, i64 964412}
!117 = !{i64 2148477853}
!118 = !{i32 0, i32 33}
