; ModuleID = '/llk/IR_all_yes/drivers/iio/light/tsl2563.c_pt.bc'
source_filename = "../drivers/iio/light/tsl2563.c"
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
%struct.tsl2563_gainlevel_coeff = type { i8, i16, i16 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.tsl2563_lux_coeff = type { i32, i32, i32 }
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
%struct.tsl2563_chip = type { %struct.mutex, ptr, %struct.delayed_work, i8, ptr, i16, i16, i8, i8, i32, i32, i32, i32, i32 }

@__initcall__kmod_tsl2563__288_894_tsl2563_i2c_driver_init6 = internal global ptr @tsl2563_i2c_driver_init, section ".initcall6.init", align 4
@tsl2563_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tsl2563_probe, ptr @tsl2563_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsl2563_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsl2563_pm_ops, ptr null, ptr null }, ptr @tsl2563_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsl2563_i2c_driver_exit = internal global ptr @tsl2563_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [33 x i8] c"tsl2563.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [48 x i8] c"tsl2563.description=tsl2563 light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"tsl2563.file=drivers/iio/light/tsl2563\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"tsl2563.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsl2563\00", [24 x i8] zeroinitializer }, align 32
@tsl2563_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2560\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2561\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2562\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tsl2563_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tsl2563_suspend, ptr @tsl2563_resume, ptr @tsl2563_suspend, ptr @tsl2563_resume, ptr @tsl2563_suspend, ptr @tsl2563_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tsl2563_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tsl2560\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tsl2561\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tsl2562\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tsl2563\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"detect error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsl2563_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/tsl2563.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry_ptr = internal global ptr @tsl2563_probe._entry, section ".printk_index", align 4
@tsl2563_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read id error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry_ptr.8 = internal global ptr @tsl2563_probe._entry.6, section ".printk_index", align 4
@tsl2563_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@tsl2563_gainlevel_table = internal constant { [4 x %struct.tsl2563_gainlevel_coeff], [40 x i8] } { [4 x %struct.tsl2563_gainlevel_coeff] [%struct.tsl2563_gainlevel_coeff { i8 18, i16 0, i16 -2 }, %struct.tsl2563_gainlevel_coeff { i8 2, i16 2048, i16 -2 }, %struct.tsl2563_gainlevel_coeff { i8 1, i16 4095, i16 -28359 }, %struct.tsl2563_gainlevel_coeff { i8 0, i16 3000, i16 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amstaos,cover-comp-gain\00", [40 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 751, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"model %d, rev. %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry_ptr.14 = internal global ptr @tsl2563_probe._entry.11, section ".printk_index", align 4
@tsl2563_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 12, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2563_events, i32 2, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@tsl2563_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @tsl2563_read_raw, ptr null, ptr null, ptr @tsl2563_write_raw, ptr null, ptr null, ptr @tsl2563_read_interrupt_config, ptr @tsl2563_write_interrupt_config, ptr @tsl2563_read_thresh, ptr @tsl2563_write_thresh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tsl2563_info_no_irq = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @tsl2563_read_raw, ptr null, ptr null, ptr @tsl2563_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsl2563_event\00", [18 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq request error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry_ptr.18 = internal global ptr @tsl2563_probe._entry.16, section ".printk_index", align 4
@tsl2563_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"configure error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry_ptr.21 = internal global ptr @tsl2563_probe._entry.19, section ".printk_index", align 4
@tsl2563_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&chip->poweroff_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@tsl2563_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&chip->poweroff_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 788, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iio registration error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tsl2563_probe._entry_ptr.28 = internal global ptr @tsl2563_probe._entry.26, section ".printk_index", align 4
@tsl2563_events = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@lux_table = internal constant { [8 x %struct.tsl2563_lux_coeff], [32 x i8] } { [8 x %struct.tsl2563_lux_coeff] [%struct.tsl2563_lux_coeff { i32 2129, i32 516, i32 429 }, %struct.tsl2563_lux_coeff { i32 4259, i32 552, i32 704 }, %struct.tsl2563_lux_coeff { i32 6389, i32 594, i32 866 }, %struct.tsl2563_lux_coeff { i32 8519, i32 642, i32 991 }, %struct.tsl2563_lux_coeff { i32 10649, i32 375, i32 476 }, %struct.tsl2563_lux_coeff { i32 13107, i32 257, i32 294 }, %struct.tsl2563_lux_coeff { i32 21299, i32 55, i32 42 }, %struct.tsl2563_lux_coeff { i32 -1, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 13]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"tsl2563_i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 884, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 886, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"tsl2563_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 875, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"tsl2563_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 860, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"tsl2563_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 866, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 722, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 728, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 732, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"tsl2563_gainlevel_table\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 84, i32 45 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 745, i32 48 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 751, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"tsl2563_channels\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 536, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"tsl2563_info\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 693, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"tsl2563_info_no_irq\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 688, i32 30 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 767, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 770, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 777, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 781, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 788, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"tsl2563_events\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 522, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant [10 x i8] c"lux_table\00", align 1
@___asan_gen_.138 = private constant [31 x i8] c"../drivers/iio/light/tsl2563.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 381, i32 39 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tsl2563_i2c_driver_exit, ptr @__initcall__kmod_tsl2563__288_894_tsl2563_i2c_driver_init6, ptr @tsl2563_i2c_driver_exit, ptr @tsl2563_probe._entry, ptr @tsl2563_probe._entry.11, ptr @tsl2563_probe._entry.16, ptr @tsl2563_probe._entry.19, ptr @tsl2563_probe._entry.26, ptr @tsl2563_probe._entry.6, ptr @tsl2563_probe._entry_ptr, ptr @tsl2563_probe._entry_ptr.14, ptr @tsl2563_probe._entry_ptr.18, ptr @tsl2563_probe._entry_ptr.21, ptr @tsl2563_probe._entry_ptr.28, ptr @tsl2563_probe._entry_ptr.8, ptr @tsl2563_i2c_driver, ptr @.str, ptr @tsl2563_of_match, ptr @tsl2563_pm_ops, ptr @tsl2563_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tsl2563_probe.__key, ptr @.str.9, ptr @tsl2563_gainlevel_table, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @tsl2563_channels, ptr @tsl2563_info, ptr @tsl2563_info_no_irq, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @tsl2563_probe.__key.22, ptr @.str.23, ptr @tsl2563_probe.__key.24, ptr @.str.25, ptr @.str.27, ptr @tsl2563_events, ptr @lux_table], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_gainlevel_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_info_no_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2563_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lux_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsl2563_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsl2563_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tsl2563_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_probe(ptr noundef %client, ptr nocapture noundef readnone %device_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 232) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %client3 = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %client3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %client3, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -128, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client3, align 4
  %call.i11.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i.i, label %if.end.i.do.end_crit_edge, label %if.end3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %and.i.i = and i32 %call.i11.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp2.i.not.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp2.i.not.i, label %if.end8, label %if.end3.i.do.end_crit_edge

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end3.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i11.i, %if.end.i.do.end_crit_edge ], [ %call.i.i, %if.end.do.end_crit_edge ], [ -19, %if.end3.i.do.end_crit_edge ]
  %sub = sub i32 0, %retval.0.i.ph
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %sub) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3.i
  %8 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client3, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -118) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end14, label %do.body18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %sub16 = sub i32 0, %call.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %sub16) #8
  br label %cleanup

do.body18:                                        ; preds = %if.end8
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @tsl2563_probe.__key) #5
  %low_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %low_thres to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %low_thres, align 4
  %high_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %high_thres to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %high_thres, align 2
  %gainlevel = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %gainlevel to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tsl2563_gainlevel_table, ptr %gainlevel, align 4
  %intr = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %intr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %intr, align 4
  %calib0 = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %calib0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1024, ptr %calib0, align 4
  %calib1 = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %calib1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %calib1, align 4
  %tobool23.not = icmp eq ptr %1, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %cover_comp_gain25 = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %cover_comp_gain25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cover_comp_gain25, align 4
  br label %do.end36

if.else:                                          ; preds = %do.body18
  %cover_comp_gain27 = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 11
  %call.i170 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %cover_comp_gain27, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool29.not = icmp eq i32 %call.i170, 0
  br i1 %tobool29.not, label %if.else.do.end36_crit_edge, label %if.then30

if.else.do.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %cover_comp_gain27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %cover_comp_gain27, align 4
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %if.else.do.end36_crit_edge, %if.then24
  %conv = lshr i32 %call.i, 4
  %20 = and i32 %conv, 15
  %and = and i32 %call.i, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %and) #8
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name39 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %21 = ptrtoint ptr %name39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name, ptr %name39, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tsl2563_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %23 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %num_channels, align 4
  %24 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %call, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool40.not = icmp eq i32 %26, 0
  %spec.select = select i1 %tobool40.not, ptr @tsl2563_info_no_irq, ptr @tsl2563_info
  %27 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.select, ptr %27, align 8
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool46.not = icmp eq i32 %30, 0
  br i1 %tobool46.not, label %do.end36.if.end59_crit_edge, label %if.then47

do.end36.if.end59_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then47:                                        ; preds = %do.end36
  %call50 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %30, ptr noundef null, ptr noundef nonnull @tsl2563_event_handler, i32 noundef 8193, ptr noundef nonnull @.str.15, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then47.if.end59_crit_edge, label %do.end55

if.then47.if.end59_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

do.end55:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %sub57 = sub i32 0, %call50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %sub57) #8
  br label %cleanup

if.end59:                                         ; preds = %if.then47.if.end59_crit_edge, %do.end36.if.end59_crit_edge
  %call60 = tail call fastcc i32 @tsl2563_configure(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body70, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %sub67 = sub i32 0, %call60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %sub67) #8
  br label %cleanup

do.body70:                                        ; preds = %if.end59
  %poweroff_work = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 2
  tail call void @__init_work(ptr noundef %poweroff_work, i32 noundef 0) #5
  %31 = ptrtoint ptr %poweroff_work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %poweroff_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @tsl2563_probe.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry77 = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry77, ptr %entry77, align 4
  %prev.i = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry77, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 2, i32 0, i32 2
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tsl2563_poweroff_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.25, ptr noundef nonnull @tsl2563_probe.__key.24) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i171 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %poweroff_work, i32 noundef 500) #5
  %call90 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.body70.cleanup_crit_edge, label %do.end95

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end95:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %sub97 = sub i32 0, %call90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %sub97) #8
  %call100 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poweroff_work) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %do.body70.cleanup_crit_edge, %do.end65, %do.end55, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call.i, %do.end14 ], [ %call50, %do.end55 ], [ %call60, %do.end65 ], [ %call90, %do.end95 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %int_enabled = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %int_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_enabled, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %poweroff_work = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %poweroff_work) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %intr = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %intr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %intr, align 4
  %8 = and i8 %7, -49
  store i8 %8, ptr %intr, align 4
  %client4 = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %client4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client4, align 4
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -122, i8 noundef zeroext %8) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %11) #5
  %12 = ptrtoint ptr %client4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client4, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext -128, i8 noundef zeroext 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #5
  %call2 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 30064771072, i64 noundef %call1) #5
  %client = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call3 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -64) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2563_configure(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %gainlevel = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %gainlevel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gainlevel, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 2
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -127, i8 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.error_ret_crit_edge

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %high_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %high_thres to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %high_thres, align 2
  %conv2 = trunc i16 %9 to i8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -124, i8 noundef zeroext %conv2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.error_ret_crit_edge

if.end.error_ret_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %12 = ptrtoint ptr %high_thres to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %high_thres, align 2
  %14 = lshr i16 %13, 8
  %conv11 = trunc i16 %14 to i8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -123, i8 noundef zeroext %conv11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.error_ret_crit_edge

if.end6.error_ret_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end15:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %low_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 5
  %17 = ptrtoint ptr %low_thres to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %low_thres, align 4
  %conv19 = trunc i16 %18 to i8
  %call20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -126, i8 noundef zeroext %conv19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.error_ret_crit_edge

if.end15.error_ret_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 4
  %21 = ptrtoint ptr %low_thres to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %low_thres, align 4
  %23 = lshr i16 %22, 8
  %conv29 = trunc i16 %23 to i8
  %call30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -125, i8 noundef zeroext %conv29) #5
  br label %error_ret

error_ret:                                        ; preds = %if.end23, %if.end15.error_ret_crit_edge, %if.end6.error_ret_crit_edge, %if.end.error_ret_crit_edge, %entry.error_ret_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_ret_crit_edge ], [ %call3, %if.end.error_ret_crit_edge ], [ %call12, %if.end6.error_ret_crit_edge ], [ %call20, %if.end15.error_ret_crit_edge ], [ %call30, %if.end23 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsl2563_poweroff_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1.i = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -128, i8 noundef zeroext 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.error_ret_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge63
    i32 4, label %sw.bb19
  ]

entry.sw.bb_crit_edge63:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge63
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %4, label %sw.bb.error_ret_crit_edge [
    i32 6, label %sw.bb1
    i32 7, label %sw.bb10
  ]

sw.bb.error_ret_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

sw.bb1:                                           ; preds = %sw.bb
  %call2 = tail call fastcc i32 @tsl2563_get_adc(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.error_ret_crit_edge

sw.bb1.error_ret_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end:                                           ; preds = %sw.bb1
  %data0 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %data0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data0, align 4
  %calib03 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %calib03 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %calib03, align 4
  %mul.i = mul i32 %9, %7
  %shr.i = lshr i32 %mul.i, 10
  %cover_comp_gain = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %cover_comp_gain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cover_comp_gain, align 4
  %mul = mul i32 %shr.i, %11
  %data1 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data1, align 4
  %calib15 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %calib15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %calib15, align 4
  %mul.i54 = mul i32 %15, %13
  %shr.i55 = lshr i32 %mul.i54, 10
  %mul8 = mul i32 %shr.i55, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  br i1 %tobool.not.i, label %if.end.cond.end.i_crit_edge, label %cond.true.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl i32 %mul8, 14
  %div.i = udiv i32 %shl.i, %mul
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ -1, %if.end.cond.end.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %cond.end.i
  %lp.0.i = phi ptr [ @lux_table, %cond.end.i ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %16 = ptrtoint ptr %lp.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lp.0.i, align 4
  %cmp.i = icmp ult i32 %17, %cond.i
  %incdec.ptr.i = getelementptr %struct.tsl2563_lux_coeff, ptr %lp.0.i, i32 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %tsl2563_adc_to_lux.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

tsl2563_adc_to_lux.exit:                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %ch0_coeff.i = getelementptr inbounds %struct.tsl2563_lux_coeff, ptr %lp.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %ch0_coeff.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch0_coeff.i, align 4
  %mul.i56 = mul i32 %19, %mul
  %ch1_coeff.i = getelementptr inbounds %struct.tsl2563_lux_coeff, ptr %lp.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %ch1_coeff.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch1_coeff.i, align 4
  %mul1.i = mul i32 %21, %mul8
  %sub.i = sub i32 %mul.i56, %mul1.i
  %shr.i57 = lshr i32 %sub.i, 14
  br label %error_ret.sink.split

sw.bb10:                                          ; preds = %sw.bb
  %call11 = tail call fastcc i32 @tsl2563_get_adc(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %sw.bb10.error_ret_crit_edge

sw.bb10.error_ret_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %22 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %23)
  %cmp = icmp eq i32 %23, 12
  %data117 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 13
  %data016 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 12
  %storemerge53.in = select i1 %cmp, ptr %data016, ptr %data117
  %24 = ptrtoint ptr %storemerge53.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %storemerge53 = load i32, ptr %storemerge53.in, align 4
  br label %error_ret.sink.split

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %channel220 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %25 = ptrtoint ptr %channel220 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %26)
  %cmp21 = icmp eq i32 %26, 12
  %calib126 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 10
  %calib023 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 9
  %storemerge.in.in.in.in = select i1 %cmp21, ptr %calib023, ptr %calib126
  %27 = ptrtoint ptr %storemerge.in.in.in.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %storemerge.in.in.in = load i32, ptr %storemerge.in.in.in.in, align 4
  %storemerge.in.in = mul i32 %storemerge.in.in.in, 1000
  %storemerge.in = add i32 %storemerge.in.in, 512
  %storemerge = lshr i32 %storemerge.in, 10
  br label %error_ret.sink.split

error_ret.sink.split:                             ; preds = %sw.bb19, %if.end14, %tsl2563_adc_to_lux.exit
  %storemerge.sink = phi i32 [ %storemerge, %sw.bb19 ], [ %storemerge53, %if.end14 ], [ %shr.i57, %tsl2563_adc_to_lux.exit ]
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge.sink, ptr %val, align 4
  br label %error_ret

error_ret:                                        ; preds = %error_ret.sink.split, %sw.bb10.error_ret_crit_edge, %sw.bb1.error_ret_crit_edge, %sw.bb.error_ret_crit_edge, %entry.error_ret_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb.error_ret_crit_edge ], [ %call11, %sw.bb10.error_ret_crit_edge ], [ %call2, %sw.bb1.error_ret_crit_edge ], [ -22, %entry.error_ret_crit_edge ], [ 1, %error_ret.sink.split ]
  tail call void @mutex_unlock(ptr noundef %1) #5
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsl2563_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 12, label %if.then2
    i32 13, label %if.then6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl i32 %val, 10
  %div.i = udiv i32 %shl.i, 1000
  %calib0 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %calib0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %calib0, align 4
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i14 = shl i32 %val, 10
  %div.i15 = udiv i32 %shl.i14, 1000
  %calib1 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %calib1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.i15, ptr %calib1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_read_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %client = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -122) #5
  tail call void @mutex_unlock(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %and = and i32 %call1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %retval.0 = select i1 %cmp, i32 %call1, i32 %lnot.ext
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_write_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %intr26 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %intr26 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intr26, align 4
  %4 = and i8 %3, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool29.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true25, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool29.not, label %if.then, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then:                                          ; preds = %land.lhs.true
  %and4 = and i8 %3, -49
  %5 = or i8 %and4, 16
  %6 = ptrtoint ptr %intr26 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %intr26, align 4
  %poweroff_work = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 2
  %call9 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %poweroff_work) #5
  %client1.i = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %and.i = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 3
  %conv.i = zext i1 %cmp2.i to i32
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not, label %if.then12, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then12:                                        ; preds = %if.then
  %9 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client1.i, align 4
  %call.i64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -128, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool14.not = icmp eq i32 %call.i64, 0
  br i1 %tobool14.not, label %if.end, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %if.then12
  %call16 = tail call fastcc i32 @tsl2563_configure(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end.if.end20_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %if.end.if.end20_crit_edge, %if.then.if.end20_crit_edge
  %11 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1.i, align 4
  %13 = ptrtoint ptr %intr26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %intr26, align 4
  %call22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext -122, i8 noundef zeroext %14) #5
  %int_enabled = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %int_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %int_enabled, align 1
  br label %out

land.lhs.true25:                                  ; preds = %entry
  br i1 %tobool29.not, label %land.lhs.true25.out_crit_edge, label %if.then30

land.lhs.true25.out_crit_edge:                    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then30:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  %and33 = and i8 %3, -49
  %16 = ptrtoint ptr %intr26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and33, ptr %intr26, align 4
  %client35 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %client35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client35, align 4
  %call37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -122, i8 noundef zeroext %and33) #5
  %int_enabled38 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %int_enabled38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %int_enabled38, align 1
  %poweroff_work39 = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %poweroff_work39, i32 noundef 500) #5
  br label %out

out:                                              ; preds = %if.then30, %land.lhs.true25.out_crit_edge, %if.end20, %if.end.out_crit_edge, %if.then12.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.1 = phi i32 [ %call37, %if.then30 ], [ 0, %land.lhs.true25.out_crit_edge ], [ %call.i64, %if.then12.out_crit_edge ], [ %call16, %if.end.out_crit_edge ], [ %call22, %if.end20 ], [ 0, %land.lhs.true.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #5
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsl2563_read_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %dir, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %high_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %low_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %storemerge.in.in = phi ptr [ %low_thres, %sw.bb1 ], [ %high_thres, %sw.bb ]
  %3 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load2_noabort(i32 %3)
  %storemerge.in = load i16, ptr %storemerge.in.in, align 2
  %storemerge = zext i16 %storemerge.in to i32
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_write_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i8 4, i8 2
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %client = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %conv1 = or i8 %., -128
  %conv2 = trunc i32 %val to i8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %entry.error_ret_crit_edge

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end5:                                          ; preds = %entry
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %conv9 = or i8 %., -127
  %6 = lshr i32 %val, 8
  %conv11 = trunc i32 %6 to i8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv9, i8 noundef zeroext %conv11) #5
  %conv16 = trunc i32 %val to i16
  br i1 %cmp, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %high_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %high_thres to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv16, ptr %high_thres, align 2
  br label %error_ret

if.else17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %low_thres = getelementptr inbounds %struct.tsl2563_chip, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %low_thres to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv16, ptr %low_thres, align 4
  br label %error_ret

error_ret:                                        ; preds = %if.else17, %if.then15, %entry.error_ret_crit_edge
  %ret.0 = phi i32 [ %call3, %entry.error_ret_crit_edge ], [ %call12, %if.then15 ], [ %call12, %if.else17 ]
  tail call void @mutex_unlock(ptr noundef %1) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2563_get_adc(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %suspended = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %int_enabled = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 8
  %4 = ptrtoint ptr %int_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_enabled, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %poweroff_work = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %poweroff_work) #5
  %6 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %and.i = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 3
  %conv.i = zext i1 %cmp2.i to i32
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then6:                                         ; preds = %if.then3
  %8 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1, align 4
  %call.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -128, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool8.not = icmp eq i32 %call.i61, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %if.then6
  %call11 = tail call fastcc i32 @tsl2563_configure(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @tsl2563_wait_adc(ptr noundef %chip)
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.then3.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %gainlevel.i = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 4
  %call1888 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1888)
  %cmp89 = icmp slt i32 %call1888, 0
  br i1 %cmp89, label %if.end16.out_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  br label %if.end20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end20:                                         ; preds = %if.then.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %call1890 = phi i32 [ %call18, %if.then.i.if.end20_crit_edge ], [ %call1888, %if.end16.if.end20_crit_edge ]
  %call21 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext -114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.out_crit_edge, label %if.end25

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end25:                                         ; preds = %if.end20
  %conv = trunc i32 %call1890 to i16
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %12 = ptrtoint ptr %gainlevel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gainlevel.i, align 4
  %max.i = getelementptr inbounds %struct.tsl2563_gainlevel_coeff, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %conv)
  %cmp.i63 = icmp ult i16 %15, %conv
  br i1 %cmp.i63, label %if.end25.if.then.i_crit_edge, label %lor.lhs.false.i

if.end25.if.then.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end25
  %min.i = getelementptr inbounds %struct.tsl2563_gainlevel_coeff, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %min.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %min.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %conv)
  %cmp7.i = icmp ugt i16 %17, %conv
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %while.end

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end25.if.then.i_crit_edge
  %storemerge.v.i = phi i32 [ -1, %lor.lhs.false.i.if.then.i_crit_edge ], [ 1, %if.end25.if.then.i_crit_edge ]
  %storemerge.i = getelementptr %struct.tsl2563_gainlevel_coeff, ptr %13, i32 %storemerge.v.i
  %18 = ptrtoint ptr %gainlevel.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %storemerge.i, ptr %gainlevel.i, align 4
  %19 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %storemerge.i, align 2
  %call.i64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -127, i8 noundef zeroext %20) #5
  %21 = ptrtoint ptr %gainlevel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gainlevel.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 2
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %switch.selectcmp3.i.i = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %switch.selectcmp.i.i = icmp eq i8 %25, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 101, i32 402
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 14, i32 %switch.select.i.i
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %switch.select4.i.i) #5
  %add.i.i = add i32 %call2.i.i.i, 2
  %call2.i.i = tail call i32 @schedule_timeout_interruptible(i32 noundef %add.i.i) #5
  %26 = ptrtoint ptr %gainlevel.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gainlevel.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 2
  %30 = and i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.selectcmp3.i32.i = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %switch.selectcmp.i30.i = icmp eq i8 %30, 1
  %switch.select.i31.i = select i1 %switch.selectcmp.i30.i, i32 101, i32 402
  %switch.select4.i33.i = select i1 %switch.selectcmp3.i32.i, i32 14, i32 %switch.select.i31.i
  %call2.i.i38.i = tail call i32 @__msecs_to_jiffies(i32 noundef %switch.select4.i33.i) #5
  %add.i41.i = add i32 %call2.i.i38.i, 2
  %call2.i42.i = tail call i32 @schedule_timeout_interruptible(i32 noundef %add.i41.i) #5
  %call18 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext -116) #5
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then.i.out_crit_edge, label %if.then.i.if.end20_crit_edge

if.then.i.if.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.end:                                        ; preds = %lor.lhs.false.i
  %phi.cast.le = and i32 %call1890, 65535
  %phi.cast81.le = and i32 %call21, 65535
  %31 = ptrtoint ptr %gainlevel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gainlevel.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 2
  %conv.i.i = zext i8 %34 to i32
  %and.i.i = and i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %switch.selectcmp.i.i67 = icmp eq i32 %and.i.i, 1
  %switch.select.i.i68 = select i1 %switch.selectcmp.i.i67, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %switch.selectcmp10.i.i = icmp eq i32 %and.i.i, 0
  %switch.select11.i.i = select i1 %switch.selectcmp10.i.i, i32 5, i32 %switch.select.i.i68
  %and4.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  %add5.i.i = add nuw nsw i32 %switch.select11.i.i, 4
  %shift.1.i.i = select i1 %tobool.not.i.i, i32 %add5.i.i, i32 %switch.select11.i.i
  %shl.i = shl nuw nsw i32 %phi.cast.le, %shift.1.i.i
  %data0 = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 12
  %35 = ptrtoint ptr %data0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl.i, ptr %data0, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %32, align 2
  %conv.i.i70 = zext i8 %37 to i32
  %and.i.i71 = and i32 %conv.i.i70, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i71)
  %switch.selectcmp.i.i72 = icmp eq i32 %and.i.i71, 1
  %switch.select.i.i73 = select i1 %switch.selectcmp.i.i72, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %switch.selectcmp10.i.i74 = icmp eq i32 %and.i.i71, 0
  %switch.select11.i.i75 = select i1 %switch.selectcmp10.i.i74, i32 5, i32 %switch.select.i.i73
  %and4.i.i76 = and i32 %conv.i.i70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %and4.i.i76, 0
  %add5.i.i78 = add nuw nsw i32 %switch.select11.i.i75, 4
  %shift.1.i.i79 = select i1 %tobool.not.i.i77, i32 %add5.i.i78, i32 %switch.select11.i.i75
  %shl.i80 = shl nuw nsw i32 %phi.cast81.le, %shift.1.i.i79
  %data1 = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 13
  %38 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shl.i80, ptr %data1, align 4
  %39 = ptrtoint ptr %int_enabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %int_enabled, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool33.not = icmp eq i8 %40, 0
  br i1 %tobool33.not, label %if.then34, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then34:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %poweroff_work35 = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %poweroff_work35, i32 noundef 500) #5
  br label %out

out:                                              ; preds = %if.then34, %while.end.out_crit_edge, %if.then.i.out_crit_edge, %if.end20.out_crit_edge, %if.end16.out_crit_edge, %if.end10.out_crit_edge, %if.then6.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call.i61, %if.then6.out_crit_edge ], [ %call11, %if.end10.out_crit_edge ], [ 0, %if.then34 ], [ 0, %while.end.out_crit_edge ], [ %call1888, %if.end16.out_crit_edge ], [ %call21, %if.end20.out_crit_edge ], [ %call18, %if.then.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsl2563_wait_adc(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gainlevel = getelementptr inbounds %struct.tsl2563_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %gainlevel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gainlevel, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.selectcmp3 = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %switch.selectcmp = icmp eq i8 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 101, i32 402
  %switch.select4 = select i1 %switch.selectcmp3, i32 14, i32 %switch.select
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %switch.select4) #5
  %add = add i32 %call2.i, 2
  %call2 = tail call i32 @schedule_timeout_interruptible(i32 noundef %add) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %client1.i = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %suspended = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %suspended, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2563_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %client1.i = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @tsl2563_configure(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %suspended = getelementptr inbounds %struct.tsl2563_chip, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %suspended, align 4
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ 0, %if.end6 ]
  tail call void @mutex_unlock(ptr noundef %3) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_tsl2563__288_894_tsl2563_i2c_driver_init6, !1, !"__initcall__kmod_tsl2563__288_894_tsl2563_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/tsl2563.c", i32 894, i32 1}
!2 = !{ptr @__exitcall_tsl2563_i2c_driver_exit, !1, !"__exitcall_tsl2563_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/tsl2563.c", i32 896, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/tsl2563.c", i32 897, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/tsl2563.c", i32 898, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/tsl2563.c", i32 886, i32 12}
!12 = !{ptr @tsl2563_i2c_driver, !13, !"tsl2563_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/tsl2563.c", i32 884, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/tsl2563.c", i32 722, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tsl2563_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tsl2563_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/tsl2563.c", i32 728, i32 3}
!24 = !{ptr @tsl2563_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tsl2563_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @tsl2563_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/tsl2563.c", i32 732, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/tsl2563.c", i32 745, i32 48}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/tsl2563.c", i32 751, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tsl2563_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tsl2563_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/tsl2563.c", i32 767, i32 9}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/tsl2563.c", i32 770, i32 4}
!40 = !{ptr @tsl2563_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tsl2563_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/tsl2563.c", i32 777, i32 3}
!44 = !{ptr @tsl2563_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tsl2563_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @tsl2563_probe.__key.22, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/tsl2563.c", i32 781, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tsl2563_probe.__key.24, !47, !"__key", i1 false, i1 false}
!50 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/tsl2563.c", i32 788, i32 3}
!53 = !{ptr @tsl2563_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tsl2563_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @tsl2563_gainlevel_table, !56, !"tsl2563_gainlevel_table", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/tsl2563.c", i32 84, i32 45}
!57 = !{ptr @tsl2563_channels, !58, !"tsl2563_channels", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/tsl2563.c", i32 536, i32 35}
!59 = !{ptr @tsl2563_events, !60, !"tsl2563_events", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/tsl2563.c", i32 522, i32 36}
!61 = !{ptr @tsl2563_info, !62, !"tsl2563_info", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/tsl2563.c", i32 693, i32 30}
!63 = !{ptr @lux_table, !64, !"lux_table", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/tsl2563.c", i32 381, i32 39}
!65 = !{ptr @tsl2563_info_no_irq, !66, !"tsl2563_info_no_irq", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/tsl2563.c", i32 688, i32 30}
!67 = !{ptr @tsl2563_of_match, !68, !"tsl2563_of_match", i1 false, i1 false}
!68 = !{!"../drivers/iio/light/tsl2563.c", i32 875, i32 34}
!69 = !{ptr @tsl2563_pm_ops, !70, !"tsl2563_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/iio/light/tsl2563.c", i32 860, i32 8}
!71 = !{ptr @tsl2563_id, !72, !"tsl2563_id", i1 false, i1 false}
!72 = !{!"../drivers/iio/light/tsl2563.c", i32 866, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
