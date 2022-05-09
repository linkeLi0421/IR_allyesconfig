; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/mma9553.c_pt.bc'
source_filename = "../drivers/iio/accel/mma9553.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mma9553_event_info = type { i32, i32, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mma9553_data = type { ptr, %struct.mutex, %struct.mma9553_conf_regs, [9 x %struct.mma9553_event], i32, i8, i8, i16, i8, i64 }
%struct.mma9553_conf_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.mma9553_event = type { ptr, i8 }

@__initcall__kmod_mma9553__290_1261_mma9553_driver_init6 = internal global ptr @mma9553_driver_init, section ".initcall6.init", align 4
@mma9553_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mma9553_probe, ptr @mma9553_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mma9553_pm_ops, ptr null, ptr null }, ptr @mma9553_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mma9553_driver_exit = internal global ptr @mma9553_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [53 x i8] c"mma9553.author=Irina Tirdea <irina.tirdea@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [39 x i8] c"mma9553.file=drivers/iio/accel/mma9553\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"mma9553.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [55 x i8] c"mma9553.description=MMA9553L pedometer platform driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mma9553\00", [24 x i8] zeroinitializer }, align 32
@mma9553_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mma9553_suspend, ptr @mma9553_resume, ptr @mma9553_suspend, ptr @mma9553_resume, ptr @mma9553_suspend, ptr @mma9553_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mma9553_runtime_suspend, ptr @mma9553_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mma9553_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mma9553\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mma9553_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@mma9553_channels = internal constant { [11 x %struct.iio_chan_spec], [248 x i8] } { [11 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 20, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 13107202, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma9553_step_event, i32 1, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 22, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1572866, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @mma9553_ext_info, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 23, i32 0, i32 31, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 786437, i32 0, i32 1048576, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @mma9553_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 21, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 3670021, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @mma9553_ext_info, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 19, i32 0, i32 27, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 1572864, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma9553_activity_events, i32 2, ptr @mma9553_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 19, i32 0, i32 28, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 1572864, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma9553_activity_events, i32 2, ptr @mma9553_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 19, i32 0, i32 29, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 1572864, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma9553_activity_events, i32 2, ptr @mma9553_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 19, i32 0, i32 30, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 1572864, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @mma9553_activity_events, i32 2, ptr @mma9553_ext_info, ptr null, ptr null, i8 -128 }], [248 x i8] zeroinitializer }, align 32
@mma9553_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mma9553_read_raw, ptr null, ptr null, ptr @mma9553_write_raw, ptr null, ptr null, ptr @mma9553_read_event_config, ptr @mma9553_write_event_config, ptr @mma9553_read_event_value, ptr @mma9553_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mma9553_event\00", [18 x i8] zeroinitializer }, align 32
@mma9553_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1120, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mma9553_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/mma9553.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mma9553_probe._entry_ptr = internal global ptr @mma9553_probe._entry, section ".printk_index", align 4
@mma9553_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1136, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@mma9553_probe._entry_ptr.10 = internal global ptr @mma9553_probe._entry.8, section ".printk_index", align 4
@mma9553_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.11, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Registered device %s\0A\00", [42 x i8] zeroinitializer }, align 32
@mma9553_events_info = internal global { [9 x %struct.mma9553_event_info], [52 x i8] } { [9 x %struct.mma9553_event_info] [%struct.mma9553_event_info { i32 20, i32 0, i32 3 }, %struct.mma9553_event_info { i32 19, i32 30, i32 1 }, %struct.mma9553_event_info { i32 19, i32 30, i32 2 }, %struct.mma9553_event_info { i32 19, i32 29, i32 1 }, %struct.mma9553_event_info { i32 19, i32 29, i32 2 }, %struct.mma9553_event_info { i32 19, i32 28, i32 1 }, %struct.mma9553_event_info { i32 19, i32 28, i32 2 }, %struct.mma9553_event_info { i32 19, i32 27, i32 1 }, %struct.mma9553_event_info { i32 19, i32 27, i32 2 }], [52 x i8] zeroinitializer }, align 32
@mma9553_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 397, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read configuration registers\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mma9553_init\00", [19 x i8] zeroinitializer }, align 32
@mma9553_init._entry_ptr = internal global ptr @mma9553_init._entry, section ".printk_index", align 4
@mma9553_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 429, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to write configuration registers\0A\00", [55 x i8] zeroinitializer }, align 32
@mma9553_init._entry_ptr.16 = internal global ptr @mma9553_init._entry.14, section ".printk_index", align 4
@mma9553_read_activity_stepcnt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 323, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error reading status and stepcnt\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mma9553_read_activity_stepcnt\00", [34 x i8] zeroinitializer }, align 32
@mma9553_read_activity_stepcnt._entry_ptr = internal global ptr @mma9553_read_activity_stepcnt._entry, section ".printk_index", align 4
@mma9553_step_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 5, i32 3, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@mma9553_ext_info = internal constant { [3 x %struct.iio_chan_spec_ext_info], [36 x i8] } { [3 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.19, i32 1, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @mma9553_calibgender_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.20, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @mma9553_calibgender_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@mma9553_activity_events = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 11, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 11, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"calibgender\00", [20 x i8] zeroinitializer }, align 32
@mma9553_calibgender_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @mma9553_calibgender_modes, i32 2, ptr @mma9553_set_calibgender_mode, ptr @mma9553_get_calibgender_mode }, [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"calibgender_available\00", [42 x i8] zeroinitializer }, align 32
@mma9553_calibgender_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"male\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"female\00", [25 x i8] zeroinitializer }, align 32
@mma9553_set_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error writing config register 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mma9553_set_config\00", [45 x i8] zeroinitializer }, align 32
@mma9553_set_config._entry_ptr = internal global ptr @mma9553_set_config._entry, section ".printk_index", align 4
@mma9553_set_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mma9553_set_config._entry_ptr.26 = internal global ptr @mma9553_set_config._entry.25, section ".printk_index", align 4
@mma9553_read_status_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 451, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No channels enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mma9553_read_status_word\00", [39 x i8] zeroinitializer }, align 32
@mma9553_read_status_word._entry_ptr = internal global ptr @mma9553_read_status_word._entry, section ".printk_index", align 4
@mma9553_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 1179, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"powering off device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mma9553_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@mma9553_runtime_suspend._entry_ptr = internal global ptr @mma9553_runtime_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 20, i64 22]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 21, i64 23]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 21, i64 23]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"mma9553_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1250, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1252, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"mma9553_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1230, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"mma9553_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1243, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1099, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"mma9553_channels\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 944, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"mma9553_info\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 981, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1117, i32 7 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1119, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1136, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1140, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"mma9553_events_info\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 107, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 396, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 428, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 322, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"mma9553_step_event\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 886, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"mma9553_ext_info\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 918, i32 44 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"mma9553_activity_events\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 892, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 919, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"mma9553_calibgender_enum\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 911, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 920, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"mma9553_calibgender_modes\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 909, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 909, i32 59 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 909, i32 67 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 277, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 291, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 451, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [31 x i8] c"../drivers/iio/accel/mma9553.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1179, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_mma9553_driver_exit, ptr @__initcall__kmod_mma9553__290_1261_mma9553_driver_init6, ptr @mma9553_driver_exit, ptr @mma9553_init._entry, ptr @mma9553_init._entry.14, ptr @mma9553_init._entry_ptr, ptr @mma9553_init._entry_ptr.16, ptr @mma9553_probe._entry, ptr @mma9553_probe._entry.8, ptr @mma9553_probe._entry_ptr, ptr @mma9553_probe._entry_ptr.10, ptr @mma9553_read_activity_stepcnt._entry, ptr @mma9553_read_activity_stepcnt._entry_ptr, ptr @mma9553_read_status_word._entry, ptr @mma9553_read_status_word._entry_ptr, ptr @mma9553_runtime_suspend._entry, ptr @mma9553_runtime_suspend._entry_ptr, ptr @mma9553_set_config._entry, ptr @mma9553_set_config._entry.25, ptr @mma9553_set_config._entry_ptr, ptr @mma9553_set_config._entry_ptr.26, ptr @mma9553_driver, ptr @.str, ptr @mma9553_pm_ops, ptr @mma9553_id, ptr @mma9553_probe.__key, ptr @.str.1, ptr @mma9553_channels, ptr @mma9553_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @mma9553_events_info, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @mma9553_step_event, ptr @mma9553_ext_info, ptr @mma9553_activity_events, ptr @.str.19, ptr @mma9553_calibgender_enum, ptr @.str.20, ptr @mma9553_calibgender_modes, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_channels to i32), i32 968, i32 1216, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_events_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_read_activity_stepcnt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_step_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_ext_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_activity_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_calibgender_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_calibgender_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_set_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_set_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_read_status_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma9553_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mma9553_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mma9553_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @mma9553_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 208) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  store ptr %client, ptr %1, align 8
  %tobool3.not = icmp eq ptr %id, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @mma9553_probe.__key) #9
  %num_events.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_events.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %num_events.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4 ]
  %arrayidx.i = getelementptr [9 x %struct.mma9553_event_info], ptr @mma9553_events_info, i32 0, i32 %i.013.i
  %arrayidx2.i = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.013.i
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.i, ptr %arrayidx2.i, align 8
  %enabled.i = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.013.i, i32 1
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled.i, align 4
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %7 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_events.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %mma9553_init_events.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mma9553_init_events.exit:                         ; preds = %for.body.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @mma9551_read_version(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mma9553_init_events.exit.mma9553_init.exit_crit_edge

mma9553_init_events.exit.mma9553_init.exit_crit_edge: ; preds = %mma9553_init_events.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_init.exit

if.end.i:                                         ; preds = %mma9553_init_events.exit
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %conf.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @mma9551_read_config_words(ptr noundef %12, i8 noundef zeroext 21, i16 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef %conf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i97 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i97, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %gpio_bitnum.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %gpio_bitnum.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %gpio_bitnum.i, align 4
  %call6.i = tail call fastcc i32 @mma9553_conf_gpio(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call11.i = tail call i32 @mma9551_app_reset(ptr noundef %17, i32 noundef 2097152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end9.i.cleanup_crit_edge, label %if.end14.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.i:                                       ; preds = %if.end9.i
  %18 = ptrtoint ptr %conf.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3688, ptr %conf.i, align 8
  %sleepmax.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %sleepmax.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4508, ptr %sleepmax.i, align 2
  %sleepthd.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %sleepthd.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 900, ptr %sleepthd.i, align 4
  %config.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %config.i, align 2
  %23 = or i16 %22, -16384
  store i16 %23, ptr %config.i, align 2
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %call29.i = tail call i32 @mma9551_write_config_words(ptr noundef %25, i8 noundef zeroext 21, i16 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef %conf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  br i1 %cmp30.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev36.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end37.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call39.i = tail call i32 @mma9551_set_device_state(ptr noundef %27, i1 noundef zeroext true) #9
  br label %mma9553_init.exit

mma9553_init.exit:                                ; preds = %if.end37.i, %mma9553_init_events.exit.mma9553_init.exit_crit_edge
  %retval.0.i98 = phi i32 [ %call39.i, %if.end37.i ], [ %call.i, %mma9553_init_events.exit.mma9553_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i98)
  %cmp = icmp slt i32 %retval.0.i98, 0
  br i1 %cmp, label %mma9553_init.exit.cleanup_crit_edge, label %if.end14

mma9553_init.exit.cleanup_crit_edge:              ; preds = %mma9553_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %mma9553_init.exit
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mma9553_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %29 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 11, ptr %num_channels, align 4
  %name15 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %30 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %id, ptr %name15, align 8
  %31 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %32 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mma9553_info, ptr %info, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp16 = icmp sgt i32 %34, 0
  br i1 %cmp16, label %if.then17, label %if.end14.if.end29_crit_edge

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then17:                                        ; preds = %if.end14
  %call20 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %34, ptr noundef nonnull @mma9553_irq_handler, ptr noundef nonnull @mma9553_event_handler, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end25:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %36) #12
  br label %out_poweroff

if.end29:                                         ; preds = %if.then17.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %call.i99 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp32 = icmp slt i32 %call.i99, 0
  br i1 %cmp32, label %if.end29.out_poweroff_crit_edge, label %if.end34

if.end29.out_poweroff_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_poweroff

if.end34:                                         ; preds = %if.end29
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %call38 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %do.body46

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %out_poweroff

do.body46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mma9553_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mma9553_probe, %if.then51)) #9
          to label %cleanup [label %if.then51], !srcloc !103

if.then51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %dev52 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mma9553_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev52, ptr noundef nonnull @.str.11, ptr noundef nonnull %id) #9
  br label %cleanup

out_poweroff:                                     ; preds = %do.end43, %if.end29.out_poweroff_crit_edge, %do.end25
  %ret.0 = phi i32 [ %call20, %do.end25 ], [ %call.i99, %if.end29.out_poweroff_crit_edge ], [ %call38, %do.end43 ]
  %call58 = tail call i32 @mma9551_set_device_state(ptr noundef %client, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %out_poweroff, %if.then51, %do.body46, %mma9553_init.exit.cleanup_crit_edge, %do.end34.i, %if.end9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_poweroff ], [ -12, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ %retval.0.i98, %mma9553_init.exit.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %do.body46 ], [ %call11.i, %if.end9.i.cleanup_crit_edge ], [ %call6.i, %if.end5.i.cleanup_crit_edge ], [ %call29.i, %do.end34.i ], [ %call2.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call5 = tail call i32 @mma9551_set_device_state(ptr noundef %5, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_irq_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #9
  %timestamp = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1, ptr %timestamp, align 8
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #9
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf.i, align 2, !annotation !104
  %3 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !104
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i = call i32 @mma9551_read_status_words(ptr noundef %6, i8 noundef zeroext 21, i16 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %buf.i, align 2
  %and5.i.i = lshr i16 %10, 8
  %11 = trunc i16 %and5.i.i to i8
  %conv3.i.i = and i8 %11, 7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  %activity3 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %activity3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %activity3, align 8
  %switch.tableidx = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %16 = icmp ult i8 %switch.tableidx, 4
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = sub nsw i32 30, %switch.idx.cast
  %retval.0.i89 = select i1 %16, i32 %switch.offset, i32 0
  %num_events.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25.i = icmp sgt i32 %18, 0
  br i1 %cmp25.i, label %if.end.for.body.i_crit_edge, label %if.end.mma9553_get_event.exit_crit_edge

if.end.mma9553_get_event.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.026.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %22)
  %cmp2.i = icmp eq i32 %22, 19
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mod6.i = getelementptr inbounds %struct.mma9553_event_info, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %mod6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mod6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %retval.0.i89)
  %cmp7.i = icmp eq i32 %24, %retval.0.i89
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %dir12.i = getelementptr inbounds %struct.mma9553_event_info, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %dir12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp13.i = icmp eq i32 %26, 2
  br i1 %cmp13.i, label %land.lhs.true8.i.mma9553_get_event.exit_crit_edge, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true8.i.mma9553_get_event.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.inc.i.mma9553_get_event.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mma9553_get_event.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit

mma9553_get_event.exit:                           ; preds = %for.inc.i.mma9553_get_event.exit_crit_edge, %land.lhs.true8.i.mma9553_get_event.exit_crit_edge, %if.end.mma9553_get_event.exit_crit_edge
  %retval.0.i90 = phi ptr [ null, %if.end.mma9553_get_event.exit_crit_edge ], [ %arrayidx.i, %land.lhs.true8.i.mma9553_get_event.exit_crit_edge ], [ null, %for.inc.i.mma9553_get_event.exit_crit_edge ]
  %conv6 = zext i8 %conv3.i.i to i32
  %switch.tableidx139 = add nsw i32 %conv6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx139)
  %27 = icmp ult i32 %switch.tableidx139, 4
  %switch.offset141 = xor i32 %conv6, 31
  %retval.0.i95 = select i1 %27, i32 %switch.offset141, i32 0
  br i1 %cmp25.i, label %mma9553_get_event.exit.for.body.i102_crit_edge, label %mma9553_get_event.exit.mma9553_get_event.exit130_crit_edge

mma9553_get_event.exit.mma9553_get_event.exit130_crit_edge: ; preds = %mma9553_get_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit130

mma9553_get_event.exit.for.body.i102_crit_edge:   ; preds = %mma9553_get_event.exit
  br label %for.body.i102

for.body.i102:                                    ; preds = %for.inc.i111.for.body.i102_crit_edge, %mma9553_get_event.exit.for.body.i102_crit_edge
  %i.026.i99 = phi i32 [ %inc.i109, %for.inc.i111.for.body.i102_crit_edge ], [ 0, %mma9553_get_event.exit.for.body.i102_crit_edge ]
  %arrayidx.i100 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.026.i99
  %28 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i100, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %31)
  %cmp2.i101 = icmp eq i32 %31, 19
  br i1 %cmp2.i101, label %land.lhs.true.i105, label %for.body.i102.for.inc.i111_crit_edge

for.body.i102.for.inc.i111_crit_edge:             ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i111

land.lhs.true.i105:                               ; preds = %for.body.i102
  %mod6.i103 = getelementptr inbounds %struct.mma9553_event_info, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %mod6.i103 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mod6.i103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %retval.0.i95)
  %cmp7.i104 = icmp eq i32 %33, %retval.0.i95
  br i1 %cmp7.i104, label %land.lhs.true8.i108, label %land.lhs.true.i105.for.inc.i111_crit_edge

land.lhs.true.i105.for.inc.i111_crit_edge:        ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i111

land.lhs.true8.i108:                              ; preds = %land.lhs.true.i105
  %dir12.i106 = getelementptr inbounds %struct.mma9553_event_info, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %dir12.i106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dir12.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp13.i107 = icmp eq i32 %35, 1
  br i1 %cmp13.i107, label %land.lhs.true8.i108.for.body.i119.preheader_crit_edge, label %land.lhs.true8.i108.for.inc.i111_crit_edge

land.lhs.true8.i108.for.inc.i111_crit_edge:       ; preds = %land.lhs.true8.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i111

land.lhs.true8.i108.for.body.i119.preheader_crit_edge: ; preds = %land.lhs.true8.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i119.preheader

for.inc.i111:                                     ; preds = %land.lhs.true8.i108.for.inc.i111_crit_edge, %land.lhs.true.i105.for.inc.i111_crit_edge, %for.body.i102.for.inc.i111_crit_edge
  %inc.i109 = add nuw nsw i32 %i.026.i99, 1
  %exitcond.not.i110 = icmp eq i32 %inc.i109, %18
  br i1 %exitcond.not.i110, label %for.inc.i111.for.body.i119.preheader_crit_edge, label %for.inc.i111.for.body.i102_crit_edge

for.inc.i111.for.body.i102_crit_edge:             ; preds = %for.inc.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i102

for.inc.i111.for.body.i119.preheader_crit_edge:   ; preds = %for.inc.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i119.preheader

for.body.i119.preheader:                          ; preds = %for.inc.i111.for.body.i119.preheader_crit_edge, %land.lhs.true8.i108.for.body.i119.preheader_crit_edge
  %retval.0.i112 = phi ptr [ null, %for.inc.i111.for.body.i119.preheader_crit_edge ], [ %arrayidx.i100, %land.lhs.true8.i108.for.body.i119.preheader_crit_edge ]
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.inc.i128.for.body.i119_crit_edge, %for.body.i119.preheader
  %i.026.i116 = phi i32 [ %inc.i126, %for.inc.i128.for.body.i119_crit_edge ], [ 0, %for.body.i119.preheader ]
  %arrayidx.i117 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.026.i116
  %36 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i117, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %39)
  %cmp2.i118 = icmp eq i32 %39, 20
  br i1 %cmp2.i118, label %land.lhs.true.i122, label %for.body.i119.for.inc.i128_crit_edge

for.body.i119.for.inc.i128_crit_edge:             ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i128

land.lhs.true.i122:                               ; preds = %for.body.i119
  %mod6.i120 = getelementptr inbounds %struct.mma9553_event_info, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %mod6.i120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mod6.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp7.i121 = icmp eq i32 %41, 0
  br i1 %cmp7.i121, label %land.lhs.true8.i125, label %land.lhs.true.i122.for.inc.i128_crit_edge

land.lhs.true.i122.for.inc.i128_crit_edge:        ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i128

land.lhs.true8.i125:                              ; preds = %land.lhs.true.i122
  %dir12.i123 = getelementptr inbounds %struct.mma9553_event_info, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %dir12.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dir12.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp13.i124 = icmp eq i32 %43, 3
  br i1 %cmp13.i124, label %land.lhs.true8.i125.mma9553_get_event.exit130_crit_edge, label %land.lhs.true8.i125.for.inc.i128_crit_edge

land.lhs.true8.i125.for.inc.i128_crit_edge:       ; preds = %land.lhs.true8.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i128

land.lhs.true8.i125.mma9553_get_event.exit130_crit_edge: ; preds = %land.lhs.true8.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit130

for.inc.i128:                                     ; preds = %land.lhs.true8.i125.for.inc.i128_crit_edge, %land.lhs.true.i122.for.inc.i128_crit_edge, %for.body.i119.for.inc.i128_crit_edge
  %inc.i126 = add nuw nsw i32 %i.026.i116, 1
  %exitcond.not.i127 = icmp eq i32 %inc.i126, %18
  br i1 %exitcond.not.i127, label %for.inc.i128.mma9553_get_event.exit130_crit_edge, label %for.inc.i128.for.body.i119_crit_edge

for.inc.i128.for.body.i119_crit_edge:             ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i119

for.inc.i128.mma9553_get_event.exit130_crit_edge: ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit130

mma9553_get_event.exit130:                        ; preds = %for.inc.i128.mma9553_get_event.exit130_crit_edge, %land.lhs.true8.i125.mma9553_get_event.exit130_crit_edge, %mma9553_get_event.exit.mma9553_get_event.exit130_crit_edge
  %retval.0.i112137 = phi ptr [ null, %mma9553_get_event.exit.mma9553_get_event.exit130_crit_edge ], [ %retval.0.i112, %for.inc.i128.mma9553_get_event.exit130_crit_edge ], [ %retval.0.i112, %land.lhs.true8.i125.mma9553_get_event.exit130_crit_edge ]
  %retval.0.i129 = phi ptr [ null, %mma9553_get_event.exit.mma9553_get_event.exit130_crit_edge ], [ %arrayidx.i117, %land.lhs.true8.i125.mma9553_get_event.exit130_crit_edge ], [ null, %for.inc.i128.mma9553_get_event.exit130_crit_edge ]
  %enabled = getelementptr inbounds %struct.mma9553_event, ptr %retval.0.i129, i32 0, i32 1
  %44 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enabled, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %mma9553_get_event.exit130.if.end19_crit_edge, label %land.lhs.true

mma9553_get_event.exit130.if.end19_crit_edge:     ; preds = %mma9553_get_event.exit130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %mma9553_get_event.exit130
  %stepcnt12 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %stepcnt12 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %stepcnt12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %47)
  %cmp14.not = icmp eq i16 %13, %47
  br i1 %cmp14.not, label %land.lhs.true.if.end19_crit_edge, label %if.then16

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %stepcnt12 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %13, ptr %stepcnt12, align 2
  %timestamp = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %timestamp, align 8
  %call18 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 361132481019117568, i64 noundef %50) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true.if.end19_crit_edge, %mma9553_get_event.exit130.if.end19_crit_edge
  %51 = ptrtoint ptr %activity3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %activity3, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3.i.i, i8 %52)
  %cmp23.not = icmp eq i8 %conv3.i.i, %52
  br i1 %cmp23.not, label %if.end19.cleanup_crit_edge, label %if.then25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end19
  %53 = ptrtoint ptr %activity3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv3.i.i, ptr %activity3, align 8
  %tobool27.not = icmp eq ptr %retval.0.i90, null
  br i1 %tobool27.not, label %if.then25.if.end40_crit_edge, label %land.lhs.true28

if.then25.if.end40_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true28:                                  ; preds = %if.then25
  %enabled29 = getelementptr inbounds %struct.mma9553_event, ptr %retval.0.i90, i32 0, i32 1
  %54 = ptrtoint ptr %enabled29 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enabled29, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool30.not = icmp eq i8 %55, 0
  br i1 %tobool30.not, label %land.lhs.true28.if.end40_crit_edge, label %if.then32

land.lhs.true28.if.end40_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then32:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %retval.0.i90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %retval.0.i90, align 4
  %mod = getelementptr inbounds %struct.mma9553_event_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mod, align 4
  %conv33 = zext i32 %59 to i64
  %shl = shl i64 %conv33, 40
  %or34 = or i64 %shl, 563031557799936
  %timestamp38 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %timestamp38 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %timestamp38, align 8
  %call39 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or34, i64 noundef %61) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %land.lhs.true28.if.end40_crit_edge, %if.then25.if.end40_crit_edge
  %tobool41.not = icmp eq ptr %retval.0.i112137, null
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %land.lhs.true42

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.end40
  %enabled43 = getelementptr inbounds %struct.mma9553_event, ptr %retval.0.i112137, i32 0, i32 1
  %62 = ptrtoint ptr %enabled43 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enabled43, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool44.not = icmp eq i8 %63, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %if.then46

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %retval.0.i112137 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %retval.0.i112137, align 4
  %mod48 = getelementptr inbounds %struct.mma9553_event_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %mod48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mod48, align 4
  %conv49 = zext i32 %67 to i64
  %shl50 = shl i64 %conv49, 40
  %or52 = or i64 %shl50, 281556581089280
  %timestamp56 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 9
  %68 = ptrtoint ptr %timestamp56 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %timestamp56, align 8
  %call57 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or52, i64 noundef %69) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %land.lhs.true42.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_set_device_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_read_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_read_config_words(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma9553_conf_gpio(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_events.i = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.i = icmp sgt i32 %1, 0
  br i1 %cmp22.i, label %entry.for.body.i_crit_edge, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %cmp25.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %entry.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mma9553_data, ptr %data, i32 0, i32 3, i32 %i.023.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp2.i = icmp eq i32 %5, 19
  br i1 %cmp2.i, label %land.lhs.true3.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true3.i:                                 ; preds = %for.body.i
  %enabled.i = getelementptr %struct.mma9553_data, ptr %data, i32 0, i32 3, i32 %i.023.i, i32 1
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  br i1 %tobool6.not.i, label %land.lhs.true3.i.for.inc.i_crit_edge, label %land.lhs.true3.i.for.body.i59.preheader_crit_edge

land.lhs.true3.i.for.body.i59.preheader_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i59.preheader

land.lhs.true3.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true3.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i = icmp slt i32 %inc.i, %1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.for.body.i59.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body.i59.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i59.preheader

for.body.i59.preheader:                           ; preds = %for.inc.i.for.body.i59.preheader_crit_edge, %land.lhs.true3.i.for.body.i59.preheader_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i59.preheader_crit_edge ], [ %cmp25.i, %land.lhs.true3.i.for.body.i59.preheader_crit_edge ]
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.inc.i62.for.body.i59_crit_edge, %for.body.i59.preheader
  %i.026.i = phi i32 [ %inc.i60, %for.inc.i62.for.body.i59_crit_edge ], [ 0, %for.body.i59.preheader ]
  %arrayidx.i57 = getelementptr %struct.mma9553_data, ptr %data, i32 0, i32 3, i32 %i.026.i
  %8 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i57, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp2.i58 = icmp eq i32 %11, 20
  br i1 %cmp2.i58, label %land.lhs.true.i, label %for.body.i59.for.inc.i62_crit_edge

for.body.i59.for.inc.i62_crit_edge:               ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i62

land.lhs.true.i:                                  ; preds = %for.body.i59
  %mod6.i = getelementptr inbounds %struct.mma9553_event_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %mod6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mod6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.i = icmp eq i32 %13, 0
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i62_crit_edge

land.lhs.true.i.for.inc.i62_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i62

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %dir12.i = getelementptr inbounds %struct.mma9553_event_info, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %dir12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp13.i = icmp eq i32 %15, 3
  br i1 %cmp13.i, label %land.lhs.true8.i.mma9553_get_event.exit_crit_edge, label %land.lhs.true8.i.for.inc.i62_crit_edge

land.lhs.true8.i.for.inc.i62_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i62

land.lhs.true8.i.mma9553_get_event.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit

for.inc.i62:                                      ; preds = %land.lhs.true8.i.for.inc.i62_crit_edge, %land.lhs.true.i.for.inc.i62_crit_edge, %for.body.i59.for.inc.i62_crit_edge
  %inc.i60 = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, %1
  br i1 %exitcond.not.i61, label %for.inc.i62.mma9553_get_event.exit_crit_edge, label %for.inc.i62.for.body.i59_crit_edge

for.inc.i62.for.body.i59_crit_edge:               ; preds = %for.inc.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i59

for.inc.i62.mma9553_get_event.exit_crit_edge:     ; preds = %for.inc.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_get_event.exit

mma9553_get_event.exit:                           ; preds = %for.inc.i62.mma9553_get_event.exit_crit_edge, %land.lhs.true8.i.mma9553_get_event.exit_crit_edge
  %retval.0.i.ph = phi ptr [ null, %for.inc.i62.mma9553_get_event.exit_crit_edge ], [ %arrayidx.i57, %land.lhs.true8.i.mma9553_get_event.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %land.lhs.true, label %mma9553_get_event.exit.if.else_crit_edge

mma9553_get_event.exit.if.else_crit_edge:         ; preds = %mma9553_get_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %mma9553_get_event.exit
  %enabled = getelementptr inbounds %struct.mma9553_event, ptr %retval.0.i.ph, i32 0, i32 1
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.end11.thread

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %mma9553_get_event.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %retval.0.i71 = phi ptr [ %retval.0.i.ph, %land.lhs.true.if.else_crit_edge ], [ %retval.0.i.ph, %mma9553_get_event.exit.if.else_crit_edge ], [ null, %entry.if.else_crit_edge ]
  %cmp.lcssa.i6670 = phi i1 [ true, %land.lhs.true.if.else_crit_edge ], [ false, %mma9553_get_event.exit.if.else_crit_edge ], [ false, %entry.if.else_crit_edge ]
  %enabled3 = getelementptr inbounds %struct.mma9553_event, ptr %retval.0.i71, i32 0, i32 1
  %18 = ptrtoint ptr %enabled3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled3, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  %. = select i1 %cmp.lcssa.i6670, i8 4, i8 0
  %.54 = select i1 %cmp.lcssa.i6670, i8 21, i8 -1
  %bitnum.0 = select i1 %tobool4.not, i8 %., i8 5
  %appid.0 = select i1 %tobool4.not, i8 %.54, i8 21
  %gpio_bitnum = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %gpio_bitnum to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gpio_bitnum, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %bitnum.0)
  %cmp = icmp eq i8 %21, %bitnum.0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.thread:                                  ; preds = %land.lhs.true
  %gpio_bitnum79 = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %gpio_bitnum79 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %gpio_bitnum79, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp80 = icmp eq i8 %23, 7
  br i1 %cmp80, label %if.end11.thread.cleanup_crit_edge, label %if.end11.thread.if.then21_crit_edge

if.end11.thread.if.then21_crit_edge:              ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.end11.thread.cleanup_crit_edge:                ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.else
  br i1 %cmp.lcssa.i6670, label %if.end15.if.then21_crit_edge, label %lor.lhs.false

if.end15.if.then21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end15
  %enabled18 = getelementptr inbounds %struct.mma9553_event, ptr %retval.0.i71, i32 0, i32 1
  %24 = ptrtoint ptr %enabled18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled18, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not = icmp eq i8 %25, 0
  br i1 %tobool19.not, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end15.if.then21_crit_edge, %if.end11.thread.if.then21_crit_edge
  %bitnum.08396 = phi i8 [ %bitnum.0, %lor.lhs.false.if.then21_crit_edge ], [ %bitnum.0, %if.end15.if.then21_crit_edge ], [ 7, %if.end11.thread.if.then21_crit_edge ]
  %appid.08494 = phi i8 [ %appid.0, %lor.lhs.false.if.then21_crit_edge ], [ %appid.0, %if.end15.if.then21_crit_edge ], [ 21, %if.end11.thread.if.then21_crit_edge ]
  %gpio_bitnum8592 = phi ptr [ %gpio_bitnum, %lor.lhs.false.if.then21_crit_edge ], [ %gpio_bitnum, %if.end15.if.then21_crit_edge ], [ %gpio_bitnum79, %if.end11.thread.if.then21_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #9
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %buf.i, align 2, !annotation !104
  %27 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %27, align 2, !annotation !104
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %call.i = call i32 @mma9551_read_status_words(ptr noundef %30, i8 noundef zeroext 21, i16 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i63 = icmp slt i32 %call.i, 0
  br i1 %cmp.i63, label %mma9553_read_activity_stepcnt.exit.thread, label %mma9553_read_activity_stepcnt.exit

mma9553_read_activity_stepcnt.exit.thread:        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  br label %cleanup

mma9553_read_activity_stepcnt.exit:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %stepcnt = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 7
  %activity = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 8
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %buf.i, align 2
  %and5.i.i = lshr i16 %34, 8
  %35 = trunc i16 %and5.i.i to i8
  %conv3.i.i = and i8 %35, 7
  %36 = ptrtoint ptr %activity to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv3.i.i, ptr %activity, align 1
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %27, align 2
  %39 = ptrtoint ptr %stepcnt to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %stepcnt, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  br label %if.end27

if.end27:                                         ; preds = %mma9553_read_activity_stepcnt.exit, %lor.lhs.false.if.end27_crit_edge
  %bitnum.08395 = phi i8 [ %bitnum.08396, %mma9553_read_activity_stepcnt.exit ], [ %bitnum.0, %lor.lhs.false.if.end27_crit_edge ]
  %appid.08493 = phi i8 [ %appid.08494, %mma9553_read_activity_stepcnt.exit ], [ %appid.0, %lor.lhs.false.if.end27_crit_edge ]
  %gpio_bitnum8591 = phi ptr [ %gpio_bitnum8592, %mma9553_read_activity_stepcnt.exit ], [ %gpio_bitnum, %lor.lhs.false.if.end27_crit_edge ]
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 8
  %call28 = call i32 @mma9551_gpio_config(ptr noundef %41, i32 noundef 0, i8 noundef zeroext %appid.08493, i8 noundef zeroext %bitnum.08395, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %gpio_bitnum8591 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %bitnum.08395, ptr %gpio_bitnum8591, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end27.cleanup_crit_edge, %mma9553_read_activity_stepcnt.exit.thread, %if.end11.thread.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ 0, %if.else.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call.i, %mma9553_read_activity_stepcnt.exit.thread ], [ 0, %if.end11.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_app_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_write_config_words(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_gpio_config(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_read_status_words(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_set_calibgender_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch = icmp ult i32 %mode, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool.not = icmp eq i32 %mode, 0
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %filter = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 5
  %conv4 = zext i1 %tobool.not to i16
  %call5 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 10, ptr noundef %filter, i16 noundef zeroext %conv4, i16 noundef zeroext 128)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mma9553_get_calibgender_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %filter = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %filter, align 2
  %4 = lshr i16 %3, 7
  %.lobit = and i16 %4, 1
  %5 = xor i16 %.lobit, 1
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma9553_set_config(ptr nocapture noundef readonly %data, i16 noundef zeroext %reg, ptr nocapture noundef %p_reg_val, i16 noundef zeroext %val, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %config = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %config) #9
  %0 = ptrtoint ptr %p_reg_val to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_reg_val, align 2
  %and5.i = and i16 %1, %mask
  %and.i = zext i16 %and5.i to i32
  %2 = tail call i16 @llvm.cttz.i16(i16 %mask, i1 true) #9, !range !106
  %3 = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mask)
  %iszero.i = icmp eq i16 %mask, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %3
  %shr.i = lshr i32 %and.i, %sub.i
  %4 = trunc i32 %shr.i to i16
  %5 = and i16 %4, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %val)
  %cmp = icmp eq i16 %5, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i16 %1 to i32
  %conv1.i = zext i16 %mask to i32
  %neg.i = xor i32 %conv1.i, -1
  %and.i57 = and i32 %conv.i, %neg.i
  %conv2.i = zext i16 %val to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %conv1.i, i1 true) #9, !range !107
  %sub.i59 = select i1 %iszero.i, i32 -1, i32 %6
  %shl.i = shl i32 %conv2.i, %sub.i59
  %or.i = or i32 %and.i57, %shl.i
  %conv4.i = trunc i32 %or.i to i16
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %call4 = tail call i32 @mma9551_write_config_word(ptr noundef %8, i8 noundef zeroext 21, i16 noundef zeroext %reg, i16 noundef zeroext %conv4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %conv9 = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv9) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %p_reg_val to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv4.i, ptr %p_reg_val, align 2
  %config11 = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %config11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %config11, align 2
  %14 = or i16 %13, -32768
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %config, align 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 8
  %call14 = tail call i32 @mma9551_write_config_word(ptr noundef %17, i8 noundef zeroext 21, i16 noundef zeroext 6, i16 noundef zeroext %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end20, label %do.body24

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.23, i32 noundef 6) #12
  br label %cleanup

do.body24:                                        ; preds = %if.end10
  call void @mma9551_sleep(i32 noundef 30) #9
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  %call26 = call i32 @mma9551_read_config_word(ptr noundef %21, i8 noundef zeroext 21, i16 noundef zeroext 6, ptr noundef nonnull %config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.body24.cleanup_crit_edge, label %do.cond31

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond31:                                        ; preds = %do.body24
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %config, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %tobool.not = icmp sgt i16 %23, -1
  br i1 %tobool.not, label %do.cond31.cleanup_crit_edge, label %do.body24.1

do.cond31.cleanup_crit_edge:                      ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body24.1:                                      ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #11
  call void @mma9551_sleep(i32 noundef 30) #9
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %call26.1 = call i32 @mma9551_read_config_word(ptr noundef %25, i8 noundef zeroext 21, i16 noundef zeroext 6, ptr noundef nonnull %config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %cmp27.1 = icmp slt i32 %call26.1, 0
  %spec.select = select i1 %cmp27.1, i32 %call26.1, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.body24.1, %do.cond31.cleanup_crit_edge, %do.body24.cleanup_crit_edge, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call14, %do.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.cond31.cleanup_crit_edge ], [ %call26, %do.body24.cleanup_crit_edge ], [ %spec.select, %do.body24.1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %config) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_write_config_word(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mma9551_sleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_read_config_word(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_read_raw(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp, align 2, !annotation !104
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb23
    i32 2, label %sw.bb48
    i32 19, label %sw.bb60
    i32 20, label %sw.bb62
    i32 21, label %sw.bb67
    i32 22, label %sw.bb72
    i32 23, label %sw.bb79
    i32 18, label %sw.bb87
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %5, label %sw.bb.cleanup_crit_edge [
    i32 20, label %sw.bb1
    i32 22, label %sw.bb3
    i32 19, label %sw.bb10
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %num_events.i.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %num_events.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_events.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22.i.i = icmp sgt i32 %8, 0
  br i1 %cmp22.i.i, label %for.body.i.preheader.i, label %sw.bb1.lor.rhs.i_crit_edge

sw.bb1.lor.rhs.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

for.body.i.preheader.i:                           ; preds = %sw.bb1
  %enabled11.i12.i = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %enabled11.i12.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled11.i12.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not.i13.i = icmp eq i8 %10, 0
  br i1 %tobool12.not.i13.i, label %for.body.i.preheader.i.for.inc.i.i_crit_edge, label %for.body.i.preheader.i.mma9553_read_status_word.exit_crit_edge

for.body.i.preheader.i.mma9553_read_status_word.exit_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit

for.body.i.preheader.i.for.inc.i.i_crit_edge:     ; preds = %for.body.i.preheader.i
  br label %for.inc.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i
  %enabled11.i.i = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %inc.i.i, i32 1
  %11 = ptrtoint ptr %enabled11.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled11.i.i, align 4, !range !105
  %tobool12.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool12.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %mma9553_is_any_event_enabled.exit.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.preheader.i.for.inc.i.i_crit_edge
  %i.023.i14.i = phi i32 [ %inc.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.023.i14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %8)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.lor.rhs.i_crit_edge, label %for.body.i.i

for.inc.i.i.lor.rhs.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

mma9553_is_any_event_enabled.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %8)
  %cmp.i.le.i = icmp slt i32 %inc.i.i, %8
  br i1 %cmp.i.le.i, label %mma9553_is_any_event_enabled.exit.i.mma9553_read_status_word.exit_crit_edge, label %mma9553_is_any_event_enabled.exit.i.lor.rhs.i_crit_edge

mma9553_is_any_event_enabled.exit.i.lor.rhs.i_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

mma9553_is_any_event_enabled.exit.i.mma9553_read_status_word.exit_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit

lor.rhs.i:                                        ; preds = %mma9553_is_any_event_enabled.exit.i.lor.rhs.i_crit_edge, %for.inc.i.i.lor.rhs.i_crit_edge, %sw.bb1.lor.rhs.i_crit_edge
  %stepcnt_enabled.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %stepcnt_enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %stepcnt_enabled.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %mma9553_read_status_word.exit.thread, label %lor.rhs.i.mma9553_read_status_word.exit_crit_edge

lor.rhs.i.mma9553_read_status_word.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit

mma9553_read_status_word.exit.thread:             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #12
  br label %cleanup

mma9553_read_status_word.exit:                    ; preds = %lor.rhs.i.mma9553_read_status_word.exit_crit_edge, %mma9553_is_any_event_enabled.exit.i.mma9553_read_status_word.exit_crit_edge, %for.body.i.preheader.i.mma9553_read_status_word.exit_crit_edge
  %mutex.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call3.i = call i32 @mma9551_read_status_word(ptr noundef %18, i8 noundef zeroext 21, i16 noundef zeroext 2, ptr noundef nonnull %tmp) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %mma9553_read_status_word.exit.cleanup_crit_edge, label %if.end

mma9553_read_status_word.exit.cleanup_crit_edge:  ; preds = %mma9553_read_status_word.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mma9553_read_status_word.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tmp, align 2
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %num_events.i.i156 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %num_events.i.i156 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_events.i.i156, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp22.i.i157 = icmp sgt i32 %23, 0
  br i1 %cmp22.i.i157, label %for.body.i.preheader.i160, label %sw.bb3.lor.rhs.i172_crit_edge

sw.bb3.lor.rhs.i172_crit_edge:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i172

for.body.i.preheader.i160:                        ; preds = %sw.bb3
  %enabled11.i12.i158 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %enabled11.i12.i158 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled11.i12.i158, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not.i13.i159 = icmp eq i8 %25, 0
  br i1 %tobool12.not.i13.i159, label %for.body.i.preheader.i160.for.inc.i.i167_crit_edge, label %for.body.i.preheader.i160.mma9553_read_status_word.exit179_crit_edge

for.body.i.preheader.i160.mma9553_read_status_word.exit179_crit_edge: ; preds = %for.body.i.preheader.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit179

for.body.i.preheader.i160.for.inc.i.i167_crit_edge: ; preds = %for.body.i.preheader.i160
  br label %for.inc.i.i167

for.body.i.i163:                                  ; preds = %for.inc.i.i167
  %enabled11.i.i161 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %inc.i.i165, i32 1
  %26 = ptrtoint ptr %enabled11.i.i161 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled11.i.i161, align 4, !range !105
  %tobool12.not.i.i162 = icmp eq i8 %27, 0
  br i1 %tobool12.not.i.i162, label %for.body.i.i163.for.inc.i.i167_crit_edge, label %mma9553_is_any_event_enabled.exit.i169

for.body.i.i163.for.inc.i.i167_crit_edge:         ; preds = %for.body.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i167

for.inc.i.i167:                                   ; preds = %for.body.i.i163.for.inc.i.i167_crit_edge, %for.body.i.preheader.i160.for.inc.i.i167_crit_edge
  %i.023.i14.i164 = phi i32 [ %inc.i.i165, %for.body.i.i163.for.inc.i.i167_crit_edge ], [ 0, %for.body.i.preheader.i160.for.inc.i.i167_crit_edge ]
  %inc.i.i165 = add nuw nsw i32 %i.023.i14.i164, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i165, i32 %23)
  %exitcond.not.i.i166 = icmp eq i32 %inc.i.i165, %23
  br i1 %exitcond.not.i.i166, label %for.inc.i.i167.lor.rhs.i172_crit_edge, label %for.body.i.i163

for.inc.i.i167.lor.rhs.i172_crit_edge:            ; preds = %for.inc.i.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i172

mma9553_is_any_event_enabled.exit.i169:           ; preds = %for.body.i.i163
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i165, i32 %23)
  %cmp.i.le.i168 = icmp slt i32 %inc.i.i165, %23
  br i1 %cmp.i.le.i168, label %mma9553_is_any_event_enabled.exit.i169.mma9553_read_status_word.exit179_crit_edge, label %mma9553_is_any_event_enabled.exit.i169.lor.rhs.i172_crit_edge

mma9553_is_any_event_enabled.exit.i169.lor.rhs.i172_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i172

mma9553_is_any_event_enabled.exit.i169.mma9553_read_status_word.exit179_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit179

lor.rhs.i172:                                     ; preds = %mma9553_is_any_event_enabled.exit.i169.lor.rhs.i172_crit_edge, %for.inc.i.i167.lor.rhs.i172_crit_edge, %sw.bb3.lor.rhs.i172_crit_edge
  %stepcnt_enabled.i170 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %stepcnt_enabled.i170 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stepcnt_enabled.i170, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i171 = icmp eq i8 %29, 0
  br i1 %tobool.not.i171, label %mma9553_read_status_word.exit179.thread, label %lor.rhs.i172.mma9553_read_status_word.exit179_crit_edge

lor.rhs.i172.mma9553_read_status_word.exit179_crit_edge: ; preds = %lor.rhs.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit179

mma9553_read_status_word.exit179.thread:          ; preds = %lor.rhs.i172
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %dev.i173 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i173, ptr noundef nonnull @.str.27) #12
  br label %cleanup

mma9553_read_status_word.exit179:                 ; preds = %lor.rhs.i172.mma9553_read_status_word.exit179_crit_edge, %mma9553_is_any_event_enabled.exit.i169.mma9553_read_status_word.exit179_crit_edge, %for.body.i.preheader.i160.mma9553_read_status_word.exit179_crit_edge
  %mutex.i175 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i175, i32 noundef 0) #9
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %call3.i176 = call i32 @mma9551_read_status_word(ptr noundef %33, i8 noundef zeroext 21, i16 noundef zeroext 4, ptr noundef nonnull %tmp) #9
  call void @mutex_unlock(ptr noundef %mutex.i175) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i176)
  %cmp5 = icmp slt i32 %call3.i176, 0
  br i1 %cmp5, label %mma9553_read_status_word.exit179.cleanup_crit_edge, label %if.end8

mma9553_read_status_word.exit179.cleanup_crit_edge: ; preds = %mma9553_read_status_word.exit179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %mma9553_read_status_word.exit179
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tmp, align 2
  %conv9 = zext i16 %35 to i32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv9, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  %num_events.i.i180 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %num_events.i.i180 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_events.i.i180, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp22.i.i181 = icmp sgt i32 %38, 0
  br i1 %cmp22.i.i181, label %for.body.i.preheader.i184, label %sw.bb10.lor.rhs.i196_crit_edge

sw.bb10.lor.rhs.i196_crit_edge:                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i196

for.body.i.preheader.i184:                        ; preds = %sw.bb10
  %enabled11.i12.i182 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %39 = ptrtoint ptr %enabled11.i12.i182 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enabled11.i12.i182, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.not.i13.i183 = icmp eq i8 %40, 0
  br i1 %tobool12.not.i13.i183, label %for.body.i.preheader.i184.for.inc.i.i191_crit_edge, label %for.body.i.preheader.i184.mma9553_read_status_word.exit203_crit_edge

for.body.i.preheader.i184.mma9553_read_status_word.exit203_crit_edge: ; preds = %for.body.i.preheader.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit203

for.body.i.preheader.i184.for.inc.i.i191_crit_edge: ; preds = %for.body.i.preheader.i184
  br label %for.inc.i.i191

for.body.i.i187:                                  ; preds = %for.inc.i.i191
  %enabled11.i.i185 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %inc.i.i189, i32 1
  %41 = ptrtoint ptr %enabled11.i.i185 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enabled11.i.i185, align 4, !range !105
  %tobool12.not.i.i186 = icmp eq i8 %42, 0
  br i1 %tobool12.not.i.i186, label %for.body.i.i187.for.inc.i.i191_crit_edge, label %mma9553_is_any_event_enabled.exit.i193

for.body.i.i187.for.inc.i.i191_crit_edge:         ; preds = %for.body.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i191

for.inc.i.i191:                                   ; preds = %for.body.i.i187.for.inc.i.i191_crit_edge, %for.body.i.preheader.i184.for.inc.i.i191_crit_edge
  %i.023.i14.i188 = phi i32 [ %inc.i.i189, %for.body.i.i187.for.inc.i.i191_crit_edge ], [ 0, %for.body.i.preheader.i184.for.inc.i.i191_crit_edge ]
  %inc.i.i189 = add nuw nsw i32 %i.023.i14.i188, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i189, i32 %38)
  %exitcond.not.i.i190 = icmp eq i32 %inc.i.i189, %38
  br i1 %exitcond.not.i.i190, label %for.inc.i.i191.lor.rhs.i196_crit_edge, label %for.body.i.i187

for.inc.i.i191.lor.rhs.i196_crit_edge:            ; preds = %for.inc.i.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i196

mma9553_is_any_event_enabled.exit.i193:           ; preds = %for.body.i.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i189, i32 %38)
  %cmp.i.le.i192 = icmp slt i32 %inc.i.i189, %38
  br i1 %cmp.i.le.i192, label %mma9553_is_any_event_enabled.exit.i193.mma9553_read_status_word.exit203_crit_edge, label %mma9553_is_any_event_enabled.exit.i193.lor.rhs.i196_crit_edge

mma9553_is_any_event_enabled.exit.i193.lor.rhs.i196_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i196

mma9553_is_any_event_enabled.exit.i193.mma9553_read_status_word.exit203_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit203

lor.rhs.i196:                                     ; preds = %mma9553_is_any_event_enabled.exit.i193.lor.rhs.i196_crit_edge, %for.inc.i.i191.lor.rhs.i196_crit_edge, %sw.bb10.lor.rhs.i196_crit_edge
  %stepcnt_enabled.i194 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %stepcnt_enabled.i194 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %stepcnt_enabled.i194, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i195 = icmp eq i8 %44, 0
  br i1 %tobool.not.i195, label %mma9553_read_status_word.exit203.thread, label %lor.rhs.i196.mma9553_read_status_word.exit203_crit_edge

lor.rhs.i196.mma9553_read_status_word.exit203_crit_edge: ; preds = %lor.rhs.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit203

mma9553_read_status_word.exit203.thread:          ; preds = %lor.rhs.i196
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %dev.i197 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i197, ptr noundef nonnull @.str.27) #12
  br label %cleanup

mma9553_read_status_word.exit203:                 ; preds = %lor.rhs.i196.mma9553_read_status_word.exit203_crit_edge, %mma9553_is_any_event_enabled.exit.i193.mma9553_read_status_word.exit203_crit_edge, %for.body.i.preheader.i184.mma9553_read_status_word.exit203_crit_edge
  %mutex.i199 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i199, i32 noundef 0) #9
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %call3.i200 = call i32 @mma9551_read_status_word(ptr noundef %48, i8 noundef zeroext 21, i16 noundef zeroext 0, ptr noundef nonnull %tmp) #9
  call void @mutex_unlock(ptr noundef %mutex.i199) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i200)
  %cmp12 = icmp slt i32 %call3.i200, 0
  br i1 %cmp12, label %mma9553_read_status_word.exit203.cleanup_crit_edge, label %if.end15

mma9553_read_status_word.exit203.cleanup_crit_edge: ; preds = %mma9553_read_status_word.exit203
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %mma9553_read_status_word.exit203
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tmp, align 2
  %and5.i = lshr i16 %50, 8
  %51 = and i16 %and5.i, 7
  %conv3.i = zext i16 %51 to i32
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %52 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel2, align 4
  %switch.tableidx = add nsw i32 %conv3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %54 = icmp ult i32 %switch.tableidx, 4
  %switch.offset = xor i32 %conv3.i, 31
  %retval.0.i204 = select i1 %54, i32 %switch.offset, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %retval.0.i204)
  %cmp19 = icmp eq i32 %53, %retval.0.i204
  %. = select i1 %cmp19, i32 100, i32 0
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %., ptr %val, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %56 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chan, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %57, label %sw.bb23.cleanup_crit_edge [
    i32 23, label %sw.bb25
    i32 21, label %sw.bb37
    i32 3, label %sw.bb44
  ]

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb23
  %channel226 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %59 = ptrtoint ptr %channel226 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %60)
  %cmp27.not = icmp eq i32 %60, 31
  br i1 %cmp27.not, label %if.end30, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %sw.bb25
  %call31 = call fastcc i32 @mma9553_read_status_word(ptr noundef %1, i16 noundef zeroext 6, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tmp, align 2
  %conv36 = zext i16 %62 to i32
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv36, ptr %val, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb23
  %num_events.i.i205 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %num_events.i.i205 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_events.i.i205, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp22.i.i206 = icmp sgt i32 %65, 0
  br i1 %cmp22.i.i206, label %for.body.i.preheader.i209, label %sw.bb37.lor.rhs.i221_crit_edge

sw.bb37.lor.rhs.i221_crit_edge:                   ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i221

for.body.i.preheader.i209:                        ; preds = %sw.bb37
  %enabled11.i12.i207 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %66 = ptrtoint ptr %enabled11.i12.i207 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %enabled11.i12.i207, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool12.not.i13.i208 = icmp eq i8 %67, 0
  br i1 %tobool12.not.i13.i208, label %for.body.i.preheader.i209.for.inc.i.i216_crit_edge, label %for.body.i.preheader.i209.mma9553_read_status_word.exit228_crit_edge

for.body.i.preheader.i209.mma9553_read_status_word.exit228_crit_edge: ; preds = %for.body.i.preheader.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit228

for.body.i.preheader.i209.for.inc.i.i216_crit_edge: ; preds = %for.body.i.preheader.i209
  br label %for.inc.i.i216

for.body.i.i212:                                  ; preds = %for.inc.i.i216
  %enabled11.i.i210 = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %inc.i.i214, i32 1
  %68 = ptrtoint ptr %enabled11.i.i210 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %enabled11.i.i210, align 4, !range !105
  %tobool12.not.i.i211 = icmp eq i8 %69, 0
  br i1 %tobool12.not.i.i211, label %for.body.i.i212.for.inc.i.i216_crit_edge, label %mma9553_is_any_event_enabled.exit.i218

for.body.i.i212.for.inc.i.i216_crit_edge:         ; preds = %for.body.i.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i216

for.inc.i.i216:                                   ; preds = %for.body.i.i212.for.inc.i.i216_crit_edge, %for.body.i.preheader.i209.for.inc.i.i216_crit_edge
  %i.023.i14.i213 = phi i32 [ %inc.i.i214, %for.body.i.i212.for.inc.i.i216_crit_edge ], [ 0, %for.body.i.preheader.i209.for.inc.i.i216_crit_edge ]
  %inc.i.i214 = add nuw nsw i32 %i.023.i14.i213, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i214, i32 %65)
  %exitcond.not.i.i215 = icmp eq i32 %inc.i.i214, %65
  br i1 %exitcond.not.i.i215, label %for.inc.i.i216.lor.rhs.i221_crit_edge, label %for.body.i.i212

for.inc.i.i216.lor.rhs.i221_crit_edge:            ; preds = %for.inc.i.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i221

mma9553_is_any_event_enabled.exit.i218:           ; preds = %for.body.i.i212
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i214, i32 %65)
  %cmp.i.le.i217 = icmp slt i32 %inc.i.i214, %65
  br i1 %cmp.i.le.i217, label %mma9553_is_any_event_enabled.exit.i218.mma9553_read_status_word.exit228_crit_edge, label %mma9553_is_any_event_enabled.exit.i218.lor.rhs.i221_crit_edge

mma9553_is_any_event_enabled.exit.i218.lor.rhs.i221_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i221

mma9553_is_any_event_enabled.exit.i218.mma9553_read_status_word.exit228_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit228

lor.rhs.i221:                                     ; preds = %mma9553_is_any_event_enabled.exit.i218.lor.rhs.i221_crit_edge, %for.inc.i.i216.lor.rhs.i221_crit_edge, %sw.bb37.lor.rhs.i221_crit_edge
  %stepcnt_enabled.i219 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %stepcnt_enabled.i219 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %stepcnt_enabled.i219, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i220 = icmp eq i8 %71, 0
  br i1 %tobool.not.i220, label %mma9553_read_status_word.exit228.thread, label %lor.rhs.i221.mma9553_read_status_word.exit228_crit_edge

lor.rhs.i221.mma9553_read_status_word.exit228_crit_edge: ; preds = %lor.rhs.i221
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_read_status_word.exit228

mma9553_read_status_word.exit228.thread:          ; preds = %lor.rhs.i221
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %dev.i222 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i222, ptr noundef nonnull @.str.27) #12
  br label %cleanup

mma9553_read_status_word.exit228:                 ; preds = %lor.rhs.i221.mma9553_read_status_word.exit228_crit_edge, %mma9553_is_any_event_enabled.exit.i218.mma9553_read_status_word.exit228_crit_edge, %for.body.i.preheader.i209.mma9553_read_status_word.exit228_crit_edge
  %mutex.i224 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i224, i32 noundef 0) #9
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  %call3.i225 = call i32 @mma9551_read_status_word(ptr noundef %75, i8 noundef zeroext 21, i16 noundef zeroext 8, ptr noundef nonnull %tmp) #9
  call void @mutex_unlock(ptr noundef %mutex.i224) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i225)
  %cmp39 = icmp slt i32 %call3.i225, 0
  br i1 %cmp39, label %mma9553_read_status_word.exit228.cleanup_crit_edge, label %if.end42

mma9553_read_status_word.exit228.cleanup_crit_edge: ; preds = %mma9553_read_status_word.exit228
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %mma9553_read_status_word.exit228
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tmp, align 2
  %conv43 = zext i16 %77 to i32
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv43, ptr %val, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %call45 = tail call i32 @mma9551_read_accel_chan(ptr noundef %80, ptr noundef %chan, ptr noundef %val, ptr noundef %val2) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  %81 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chan, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %82, label %sw.bb48.cleanup_crit_edge [
    i32 23, label %sw.bb50
    i32 21, label %sw.bb56
    i32 3, label %sw.bb57
  ]

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb50:                                          ; preds = %sw.bb48
  %channel251 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %84 = ptrtoint ptr %channel251 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %channel251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %85)
  %cmp52.not = icmp eq i32 %85, 31
  br i1 %cmp52.not, label %if.end55, label %sw.bb50.cleanup_crit_edge

sw.bb50.cleanup_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %val, align 4
  %87 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 277, ptr %val2, align 4
  br label %cleanup

sw.bb56:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4184, ptr %val, align 4
  br label %cleanup

sw.bb57:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 @mma9551_read_accel_scale(ptr noundef %val, ptr noundef %val2) #9
  br label %cleanup

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stepcnt_enabled = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 6
  %89 = ptrtoint ptr %stepcnt_enabled to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %stepcnt_enabled, align 1, !range !105
  %91 = zext i8 %90 to i32
  %92 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %val, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %height_weight = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 4
  %93 = ptrtoint ptr %height_weight to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %height_weight, align 8
  %95 = lshr i16 %94, 8
  %conv3.i232 = trunc i16 %95 to i8
  %96 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %tmp, align 2
  %conv3.i232.frozen = freeze i8 %conv3.i232
  %97 = udiv i8 %conv3.i232.frozen, 100
  %div = zext i8 %97 to i32
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %div, ptr %val, align 4
  %99 = mul i8 %97, 100
  %.decomposed = sub i8 %conv3.i232.frozen, %99
  %rem = zext i8 %.decomposed to i32
  %mul = mul nuw nsw i32 %rem, 10000
  %100 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %height_weight69 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 4
  %101 = ptrtoint ptr %height_weight69 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %height_weight69, align 8
  %103 = and i16 %102, 255
  %conv71 = zext i16 %103 to i32
  %104 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv71, ptr %val, align 4
  br label %cleanup

sw.bb72:                                          ; preds = %entry
  %105 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %106)
  %cond104 = icmp eq i32 %106, 20
  br i1 %cond104, label %sw.bb74, label %sw.bb72.cleanup_crit_edge

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb74:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #11
  %filter = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 5
  %107 = ptrtoint ptr %filter to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %filter, align 2
  %109 = lshr i16 %108, 8
  %conv3.i239 = zext i16 %109 to i32
  %110 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv3.i239, ptr %val, align 4
  br label %cleanup

sw.bb79:                                          ; preds = %entry
  %111 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %112)
  %cond103 = icmp eq i32 %112, 20
  br i1 %cond103, label %sw.bb81, label %sw.bb79.cleanup_crit_edge

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb81:                                          ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #11
  %filter83 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 5
  %113 = ptrtoint ptr %filter83 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %filter83, align 2
  %115 = and i16 %114, 127
  %conv3.i242 = zext i16 %115 to i32
  %116 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv3.i242, ptr %val, align 4
  br label %cleanup

sw.bb87:                                          ; preds = %entry
  %117 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %118)
  %cond = icmp eq i32 %118, 23
  br i1 %cond, label %sw.bb89, label %sw.bb87.cleanup_crit_edge

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb89:                                          ; preds = %sw.bb87
  %channel290 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %119 = ptrtoint ptr %channel290 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %channel290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %120)
  %cmp91.not = icmp eq i32 %120, 31
  br i1 %cmp91.not, label %if.end94, label %sw.bb89.cleanup_crit_edge

sw.bb89.cleanup_crit_edge:                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end94:                                         ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  %speed_step = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 6
  %121 = ptrtoint ptr %speed_step to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %speed_step, align 4
  %123 = lshr i16 %122, 8
  %conv3.i246 = zext i16 %123 to i32
  %124 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv3.i246, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %sw.bb89.cleanup_crit_edge, %sw.bb87.cleanup_crit_edge, %sw.bb81, %sw.bb79.cleanup_crit_edge, %sw.bb74, %sw.bb72.cleanup_crit_edge, %sw.bb67, %sw.bb62, %sw.bb60, %sw.bb57, %sw.bb56, %if.end55, %sw.bb50.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %sw.bb44, %if.end42, %mma9553_read_status_word.exit228.cleanup_crit_edge, %mma9553_read_status_word.exit228.thread, %if.end35, %if.end30.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %if.end15, %mma9553_read_status_word.exit203.cleanup_crit_edge, %mma9553_read_status_word.exit203.thread, %if.end8, %mma9553_read_status_word.exit179.cleanup_crit_edge, %mma9553_read_status_word.exit179.thread, %if.end, %mma9553_read_status_word.exit.cleanup_crit_edge, %mma9553_read_status_word.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end94 ], [ 1, %sw.bb81 ], [ 1, %sw.bb74 ], [ 1, %sw.bb67 ], [ 2, %sw.bb62 ], [ 1, %sw.bb60 ], [ %call58, %sw.bb57 ], [ 1, %sw.bb56 ], [ 2, %if.end55 ], [ %call45, %sw.bb44 ], [ 1, %if.end42 ], [ 1, %if.end35 ], [ 1, %if.end15 ], [ 1, %if.end8 ], [ 1, %if.end ], [ %call3.i, %mma9553_read_status_word.exit.cleanup_crit_edge ], [ %call3.i176, %mma9553_read_status_word.exit179.cleanup_crit_edge ], [ %call3.i200, %mma9553_read_status_word.exit203.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call3.i225, %mma9553_read_status_word.exit228.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %sw.bb50.cleanup_crit_edge ], [ -22, %sw.bb48.cleanup_crit_edge ], [ -22, %sw.bb72.cleanup_crit_edge ], [ -22, %sw.bb79.cleanup_crit_edge ], [ -22, %sw.bb89.cleanup_crit_edge ], [ -22, %sw.bb87.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %mma9553_read_status_word.exit.thread ], [ -22, %mma9553_read_status_word.exit179.thread ], [ -22, %mma9553_read_status_word.exit203.thread ], [ -22, %mma9553_read_status_word.exit228.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 19, label %sw.bb
    i32 20, label %sw.bb14
    i32 21, label %sw.bb25
    i32 22, label %sw.bb39
    i32 23, label %sw.bb54
    i32 18, label %sw.bb71
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %stepcnt_enabled = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %stepcnt_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stepcnt_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool1 = icmp ne i32 %val, 0
  %5 = zext i1 %tobool1 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %5)
  %cmp = icmp eq i8 %4, %5
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call5 = tail call i32 @mma9551_set_power_state(ptr noundef %7, i1 noundef zeroext %tobool1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup.sink.split_crit_edge, label %if.end10

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %stepcnt_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %stepcnt_enabled, align 1
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  %mul = mul i32 %val, 100
  %div = sdiv i32 %val2, 10000
  %add = add i32 %div, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %9 = icmp ugt i32 %add, 255
  br i1 %9, label %sw.bb14.cleanup_crit_edge, label %if.end20

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %mutex21 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex21, i32 noundef 0) #9
  %height_weight = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 4
  %conv22 = trunc i32 %add to i16
  %call23 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 8, ptr noundef %height_weight, i16 noundef zeroext %conv22, i16 noundef zeroext -256)
  br label %cleanup.sink.split

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %10 = icmp ugt i32 %val, 255
  br i1 %10, label %sw.bb25.cleanup_crit_edge, label %if.end32

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  %mutex33 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex33, i32 noundef 0) #9
  %height_weight35 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 4
  %conv36 = trunc i32 %val to i16
  %call37 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 8, ptr noundef %height_weight35, i16 noundef zeroext %conv36, i16 noundef zeroext 255)
  br label %cleanup.sink.split

sw.bb39:                                          ; preds = %entry
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %cond96 = icmp ne i32 %12, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp41 = icmp slt i32 %val, 0
  %or.cond151 = or i1 %cmp41, %cond96
  br i1 %or.cond151, label %sw.bb39.cleanup_crit_edge, label %if.end44

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.smin.i32(i32 %val, i32 6)
  %mutex49 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex49, i32 noundef 0) #9
  %filter = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 5
  %conv51 = trunc i32 %13 to i16
  %call52 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 10, ptr noundef %filter, i16 noundef zeroext %conv51, i16 noundef zeroext -256)
  br label %cleanup.sink.split

sw.bb54:                                          ; preds = %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %15)
  %cond95 = icmp ne i32 %15, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %val)
  %16 = icmp ugt i32 %val, 127
  %or.cond = or i1 %16, %cond95
  br i1 %or.cond, label %sw.bb54.cleanup_crit_edge, label %if.end63

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %mutex64 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex64, i32 noundef 0) #9
  %filter66 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 5
  %conv67 = trunc i32 %val to i16
  %call68 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 10, ptr noundef %filter66, i16 noundef zeroext %conv67, i16 noundef zeroext 127)
  br label %cleanup.sink.split

sw.bb71:                                          ; preds = %entry
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %18)
  %cond = icmp eq i32 %18, 23
  br i1 %cond, label %sw.bb73, label %sw.bb71.cleanup_crit_edge

sw.bb71.cleanup_crit_edge:                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb73:                                          ; preds = %sw.bb71
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %19 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %20)
  %cmp74.not = icmp ne i32 %20, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp78 = icmp slt i32 %val, 2
  %or.cond152 = or i1 %cmp78, %cmp74.not
  br i1 %or.cond152, label %sw.bb73.cleanup_crit_edge, label %if.end81

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i32 @llvm.smin.i32(i32 %val, i32 5)
  %mutex86 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex86, i32 noundef 0) #9
  %speed_step = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 6
  %conv88 = trunc i32 %21 to i16
  %call89 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 12, ptr noundef %speed_step, i16 noundef zeroext %conv88, i16 noundef zeroext -256)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end81, %if.end63, %if.end44, %if.end32, %if.end20, %if.end10, %if.end.cleanup.sink.split_crit_edge
  %mutex86.sink = phi ptr [ %mutex86, %if.end81 ], [ %mutex64, %if.end63 ], [ %mutex49, %if.end44 ], [ %mutex33, %if.end32 ], [ %mutex21, %if.end20 ], [ %mutex, %if.end10 ], [ %mutex, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call89, %if.end81 ], [ %call68, %if.end63 ], [ %call52, %if.end44 ], [ %call37, %if.end32 ], [ %call23, %if.end20 ], [ 0, %if.end10 ], [ %call5, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex86.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb73.cleanup_crit_edge, %sw.bb71.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %sw.bb39.cleanup_crit_edge ], [ -22, %sw.bb54.cleanup_crit_edge ], [ -22, %sw.bb73.cleanup_crit_edge ], [ -22, %sw.bb71.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  %num_events.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.i = icmp sgt i32 %7, 0
  br i1 %cmp25.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.026.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.i = icmp eq i32 %11, %3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mod6.i = getelementptr inbounds %struct.mma9553_event_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %mod6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mod6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp7.i = icmp eq i32 %13, %5
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %dir12.i = getelementptr inbounds %struct.mma9553_event_info, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %dir12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %dir)
  %cmp13.i = icmp eq i32 %15, %dir
  br i1 %cmp13.i, label %mma9553_get_event.exit, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mma9553_get_event.exit:                           ; preds = %land.lhs.true8.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mma9553_get_event.exit.cleanup_crit_edge, label %if.end

mma9553_get_event.exit.cleanup_crit_edge:         ; preds = %mma9553_get_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mma9553_get_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  %enabled = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.026.i, i32 1
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled, align 4, !range !105
  %18 = zext i8 %17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mma9553_get_event.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end ], [ -22, %mma9553_get_event.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  %num_events.i = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.i = icmp sgt i32 %7, 0
  br i1 %cmp25.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.026.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.i = icmp eq i32 %11, %3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mod6.i = getelementptr inbounds %struct.mma9553_event_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %mod6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mod6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp7.i = icmp eq i32 %13, %5
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %dir12.i = getelementptr inbounds %struct.mma9553_event_info, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %dir12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %dir)
  %cmp13.i = icmp eq i32 %15, %dir
  br i1 %cmp13.i, label %mma9553_get_event.exit, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mma9553_get_event.exit:                           ; preds = %land.lhs.true8.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mma9553_get_event.exit.cleanup_crit_edge, label %if.end

mma9553_get_event.exit.cleanup_crit_edge:         ; preds = %mma9553_get_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mma9553_get_event.exit
  %enabled = getelementptr %struct.mma9553_data, ptr %1, i32 0, i32 3, i32 %i.026.i, i32 1
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled, align 4, !range !105
  %18 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %state)
  %cmp = icmp eq i32 %18, %state
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool7 = icmp ne i32 %state, 0
  %call8 = tail call i32 @mma9551_set_power_state(ptr noundef %20, i1 noundef zeroext %tobool7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup.sink.split_crit_edge, label %if.end12

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %frombool = zext i1 %tobool7 to i8
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %enabled, align 4
  %call15 = tail call fastcc i32 @mma9553_conf_gpio(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, -1
  %tobool7.not = xor i1 %tobool7, true
  %brmerge = or i1 %cmp16, %tobool7.not
  %.mux = select i1 %cmp16, i32 0, i32 %call15
  br i1 %brmerge, label %if.end12.cleanup.sink.split_crit_edge, label %if.then22

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enabled, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %call25 = tail call i32 @mma9551_set_power_state(ptr noundef %24, i1 noundef zeroext false) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then22, %if.end12.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %.mux, %if.end12.cleanup.sink.split_crit_edge ], [ %call8, %if.end6.cleanup.sink.split_crit_edge ], [ %call15, %if.then22 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %mma9553_get_event.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mma9553_get_event.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mma9553_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val2, align 4
  %3 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %5, label %sw.bb.cleanup_crit_edge [
    i32 20, label %sw.bb2
    i32 19, label %sw.bb.cleanup.sink.split_crit_edge
  ]

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %speed_step = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %speed_step to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %speed_step, align 4
  %9 = and i16 %8, 255
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %11)
  %cond = icmp eq i32 %11, 19
  br i1 %cond, label %sw.bb7, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %actthd = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 7
  %12 = ptrtoint ptr %actthd to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %actthd, align 2
  %14 = udiv i16 %13, 30
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %sw.bb2, %sw.bb.cleanup.sink.split_crit_edge
  %div.sink.shrunk = phi i16 [ %14, %sw.bb7 ], [ %9, %sw.bb2 ], [ 50, %sw.bb.cleanup.sink.split_crit_edge ]
  %div.sink = zext i16 %div.sink.shrunk to i32
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %4)
  %cond24 = icmp ne i32 %4, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %5 = icmp ugt i32 %val, 255
  %or.cond = or i1 %5, %cond24
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %speed_step = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 6
  %conv = trunc i32 %val to i16
  %call4 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 12, ptr noundef %speed_step, i16 noundef zeroext %conv, i16 noundef zeroext 255)
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %7)
  %cond = icmp ne i32 %7, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2184, i32 %val)
  %cmp12 = icmp ugt i32 %val, 2184
  %or.cond40 = or i1 %cmp12, %cond
  br i1 %or.cond40, label %sw.bb6.cleanup_crit_edge, label %if.end15

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %mutex16 = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex16, i32 noundef 0) #9
  %actthd = getelementptr inbounds %struct.mma9553_data, ptr %1, i32 0, i32 2, i32 7
  %8 = trunc i32 %val to i16
  %conv18 = mul nuw i16 %8, 30
  %call19 = tail call fastcc i32 @mma9553_set_config(ptr noundef %1, i16 noundef zeroext 14, ptr noundef %actthd, i16 noundef zeroext %conv18, i16 noundef zeroext -1)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %if.end
  %mutex16.sink = phi ptr [ %mutex16, %if.end15 ], [ %mutex, %if.end ]
  %retval.0.ph = phi i32 [ %call19, %if.end15 ], [ %call4, %if.end ]
  tail call void @mutex_unlock(ptr noundef %mutex16.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mma9553_read_status_word(ptr noundef %data, i16 noundef zeroext %reg, ptr noundef %tmp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_events.i = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.i = icmp sgt i32 %1, 0
  br i1 %cmp22.i, label %for.body.i.preheader, label %entry.lor.rhs_crit_edge

entry.lor.rhs_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

for.body.i.preheader:                             ; preds = %entry
  %enabled11.i12 = getelementptr %struct.mma9553_data, ptr %data, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %enabled11.i12 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled11.i12, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool12.not.i13 = icmp eq i8 %3, 0
  br i1 %tobool12.not.i13, label %for.body.i.preheader.for.inc.i_crit_edge, label %for.body.i.preheader.if.end_crit_edge

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.preheader.for.inc.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %for.inc.i

for.body.i:                                       ; preds = %for.inc.i
  %enabled11.i = getelementptr %struct.mma9553_data, ptr %data, i32 0, i32 3, i32 %inc.i, i32 1
  %4 = ptrtoint ptr %enabled11.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled11.i, align 4, !range !105
  %tobool12.not.i = icmp eq i8 %5, 0
  br i1 %tobool12.not.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.mma9553_is_any_event_enabled.exit_crit_edge

for.body.i.mma9553_is_any_event_enabled.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_is_any_event_enabled.exit

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.preheader.for.inc.i_crit_edge
  %i.023.i14 = phi i32 [ %inc.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %for.body.i.preheader.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.023.i14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.mma9553_is_any_event_enabled.exit_crit_edge, label %for.body.i

for.inc.i.mma9553_is_any_event_enabled.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mma9553_is_any_event_enabled.exit

mma9553_is_any_event_enabled.exit:                ; preds = %for.inc.i.mma9553_is_any_event_enabled.exit_crit_edge, %for.body.i.mma9553_is_any_event_enabled.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i.le = icmp slt i32 %inc.i, %1
  br i1 %cmp.i.le, label %mma9553_is_any_event_enabled.exit.if.end_crit_edge, label %mma9553_is_any_event_enabled.exit.lor.rhs_crit_edge

mma9553_is_any_event_enabled.exit.lor.rhs_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

mma9553_is_any_event_enabled.exit.if.end_crit_edge: ; preds = %mma9553_is_any_event_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.rhs:                                          ; preds = %mma9553_is_any_event_enabled.exit.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge
  %stepcnt_enabled = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %stepcnt_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stepcnt_enabled, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %lor.rhs.if.end_crit_edge

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end:                                           ; preds = %lor.rhs.if.end_crit_edge, %mma9553_is_any_event_enabled.exit.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %call3 = tail call i32 @mma9551_read_status_word(ptr noundef %11, i8 noundef zeroext 21, i16 noundef zeroext %reg, ptr noundef %tmp) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_read_accel_chan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_read_accel_scale(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_read_status_word(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mma9551_set_power_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call2 = tail call i32 @mma9551_set_device_state(ptr noundef %5, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call2 = tail call i32 @mma9551_set_device_state(ptr noundef %5, i1 noundef zeroext true) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.mma9553_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call2 = tail call i32 @mma9551_set_device_state(ptr noundef %5, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma9553_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %5 = load ptr, ptr %3, align 8
  %call2 = tail call i32 @mma9551_set_device_state(ptr noundef %5, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mma9551_sleep(i32 noundef 30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_mma9553__290_1261_mma9553_driver_init6, !1, !"__initcall__kmod_mma9553__290_1261_mma9553_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/mma9553.c", i32 1261, i32 1}
!2 = !{ptr @__exitcall_mma9553_driver_exit, !1, !"__exitcall_mma9553_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/mma9553.c", i32 1263, i32 1}
!5 = !{ptr @__UNIQUE_ID_file292, !6, !"__UNIQUE_ID_file292", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/mma9553.c", i32 1264, i32 1}
!7 = !{ptr @__UNIQUE_ID_license293, !6, !"__UNIQUE_ID_license293", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/iio/accel/mma9553.c", i32 1265, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/mma9553.c", i32 1252, i32 14}
!12 = !{ptr @mma9553_driver, !13, !"mma9553_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/mma9553.c", i32 1250, i32 26}
!14 = !{ptr @mma9553_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/mma9553.c", i32 1099, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/accel/mma9553.c", i32 1117, i32 7}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/accel/mma9553.c", i32 1119, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mma9553_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mma9553_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/mma9553.c", i32 1136, i32 3}
!29 = !{ptr @mma9553_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mma9553_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/accel/mma9553.c", i32 1140, i32 2}
!33 = !{ptr @mma9553_probe.__UNIQUE_ID_ddebug289, !32, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!34 = !{ptr @mma9553_events_info, !35, !"mma9553_events_info", i1 false, i1 false}
!35 = !{!"../drivers/iio/accel/mma9553.c", i32 107, i32 3}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/mma9553.c", i32 396, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mma9553_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mma9553_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/accel/mma9553.c", i32 428, i32 3}
!43 = !{ptr @mma9553_init._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mma9553_init._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/accel/mma9553.c", i32 322, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mma9553_read_activity_stepcnt._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mma9553_read_activity_stepcnt._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mma9553_channels, !51, !"mma9553_channels", i1 false, i1 false}
!51 = !{!"../drivers/iio/accel/mma9553.c", i32 944, i32 35}
!52 = !{ptr @mma9553_step_event, !53, !"mma9553_step_event", i1 false, i1 false}
!53 = !{!"../drivers/iio/accel/mma9553.c", i32 886, i32 36}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/accel/mma9553.c", i32 919, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/accel/mma9553.c", i32 920, i32 2}
!58 = !{ptr @mma9553_ext_info, !59, !"mma9553_ext_info", i1 false, i1 false}
!59 = !{!"../drivers/iio/accel/mma9553.c", i32 918, i32 44}
!60 = !{ptr @mma9553_calibgender_enum, !61, !"mma9553_calibgender_enum", i1 false, i1 false}
!61 = !{!"../drivers/iio/accel/mma9553.c", i32 911, i32 30}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/accel/mma9553.c", i32 909, i32 59}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/accel/mma9553.c", i32 909, i32 67}
!66 = !{ptr @mma9553_calibgender_modes, !67, !"mma9553_calibgender_modes", i1 false, i1 false}
!67 = !{!"../drivers/iio/accel/mma9553.c", i32 909, i32 27}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/accel/mma9553.c", i32 277, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mma9553_set_config._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mma9553_set_config._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mma9553_set_config._entry.25, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/iio/accel/mma9553.c", i32 291, i32 3}
!75 = !{ptr @mma9553_set_config._entry_ptr.26, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mma9553_activity_events, !77, !"mma9553_activity_events", i1 false, i1 false}
!77 = !{!"../drivers/iio/accel/mma9553.c", i32 892, i32 36}
!78 = !{ptr @mma9553_info, !79, !"mma9553_info", i1 false, i1 false}
!79 = !{!"../drivers/iio/accel/mma9553.c", i32 981, i32 30}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/accel/mma9553.c", i32 451, i32 3}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mma9553_read_status_word._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mma9553_read_status_word._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mma9553_pm_ops, !86, !"mma9553_pm_ops", i1 false, i1 false}
!86 = !{!"../drivers/iio/accel/mma9553.c", i32 1230, i32 32}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/accel/mma9553.c", i32 1179, i32 3}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mma9553_runtime_suspend._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mma9553_runtime_suspend._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @mma9553_id, !93, !"mma9553_id", i1 false, i1 false}
!93 = !{!"../drivers/iio/accel/mma9553.c", i32 1243, i32 35}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2148984007, i64 2148984012, i64 2148984025, i64 2148984069, i64 2148984103, i64 2148984124}
!104 = !{!"auto-init"}
!105 = !{i8 0, i8 2}
!106 = !{i16 0, i16 17}
!107 = !{i32 0, i32 33}
