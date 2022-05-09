; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/ccs811.c_pt.bc'
source_filename = "../drivers/iio/chemical/ccs811.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ccs811_data = type { ptr, %struct.mutex, %struct.ccs811_reading, ptr, ptr, i8, %struct.anon.87 }
%struct.ccs811_reading = type { i16, i16, i8, i8, i16 }
%struct.anon.87 = type { [2 x i16], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_ccs811__288_570_ccs811_driver_init6 = internal global ptr @ccs811_driver_init, section ".initcall6.init", align 4
@ccs811_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ccs811_probe, ptr @ccs811_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ccs811_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ccs811_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ccs811_driver_exit = internal global ptr @ccs811_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"ccs811.author=Narcisa Vasile <narcisaanamaria12@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"ccs811.description=CCS811 volatile organic compounds sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"ccs811.file=drivers/iio/chemical/ccs811\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"ccs811.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccs811\00", [25 x i8] zeroinitializer }, align 32
@ccs811_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,ccs811\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ccs811_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ccs811\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@ccs811_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hardware id doesn't match CCS81x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccs811_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/chemical/ccs811.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccs811_probe._entry_ptr = internal global ptr @ccs811_probe._entry, section ".printk_index", align 4
@ccs811_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no CCS811 sensor\0A\00", [46 x i8] zeroinitializer }, align 32
@ccs811_probe._entry_ptr.9 = internal global ptr @ccs811_probe._entry.7, section ".printk_index", align 4
@ccs811_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@ccs811_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ccs811_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ccs811_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 24, i32 0, i32 35, i32 0, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ccs811_irq\00", [21 x i8] zeroinitializer }, align 32
@ccs811_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq request error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ccs811_probe._entry_ptr.14 = internal global ptr @ccs811_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@ccs811_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @ccs811_set_trigger_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ccs811_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"triggered buffer setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ccs811_probe._entry_ptr.18 = internal global ptr @ccs811_probe._entry.16, section ".printk_index", align 4
@ccs811_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@ccs811_probe._entry_ptr.21 = internal global ptr @ccs811_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ccs811_reset.reset_seq = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\11\E5r\8A", [28 x i8] zeroinitializer }, align 32
@ccs811_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 393, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to reset sensor\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ccs811_reset\00", [19 x i8] zeroinitializer }, align 32
@ccs811_reset._entry_ptr = internal global ptr @ccs811_reset._entry, section ".printk_index", align 4
@ccs811_start_sensor_application._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Application failed to start. Sensor is still in boot mode.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ccs811_start_sensor_application\00", [32 x i8] zeroinitializer }, align 32
@ccs811_start_sensor_application._entry_ptr = internal global ptr @ccs811_start_sensor_application._entry, section ".printk_index", align 4
@ccs811_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot read sensor data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccs811_trigger_handler\00", [41 x i8] zeroinitializer }, align 32
@ccs811_trigger_handler._entry_ptr = internal global ptr @ccs811_trigger_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 24]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 34, i64 35]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 24]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 34, i64 35]
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ccs811_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 561, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 563, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"ccs811_dt_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 555, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"ccs811_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 549, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 424, i32 60 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 445, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 457, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 470, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"ccs811_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 300, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"ccs811_channels\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 88, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 485, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 487, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 492, i32 9 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"ccs811_trigger_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 325, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 513, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 519, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 370, i32 53 }
@___asan_gen_.114 = private unnamed_addr constant [10 x i8] c"reset_seq\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 386, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 393, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 158, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [33 x i8] c"../drivers/iio/chemical/ccs811.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 341, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ccs811_driver_exit, ptr @__initcall__kmod_ccs811__288_570_ccs811_driver_init6, ptr @ccs811_driver_exit, ptr @ccs811_probe._entry, ptr @ccs811_probe._entry.12, ptr @ccs811_probe._entry.16, ptr @ccs811_probe._entry.19, ptr @ccs811_probe._entry.7, ptr @ccs811_probe._entry_ptr, ptr @ccs811_probe._entry_ptr.14, ptr @ccs811_probe._entry_ptr.18, ptr @ccs811_probe._entry_ptr.21, ptr @ccs811_probe._entry_ptr.9, ptr @ccs811_reset._entry, ptr @ccs811_reset._entry_ptr, ptr @ccs811_start_sensor_application._entry, ptr @ccs811_start_sensor_application._entry_ptr, ptr @ccs811_trigger_handler._entry, ptr @ccs811_trigger_handler._entry_ptr, ptr @ccs811_driver, ptr @.str, ptr @ccs811_dt_ids, ptr @ccs811_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ccs811_probe.__key, ptr @.str.10, ptr @ccs811_info, ptr @ccs811_channels, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @ccs811_trigger_ops, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @ccs811_reset.reset_seq, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_reset.reset_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_start_sensor_application._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccs811_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs811_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ccs811_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ccs811_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @ccs811_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs811_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 68943872
  call void @__sanitizer_cov_trace_const_cmp4(i32 68943872, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68943872
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 136) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %7, align 8
  %call8 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #4
  %wakeup_gpio = getelementptr inbounds %struct.ccs811_data, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %wakeup_gpio, align 4
  %cmp.i170 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %tobool.not.i = icmp eq ptr %call8, null
  br i1 %tobool.not.i, label %if.end14.ccs811_set_wakeup.exit_crit_edge, label %if.end.i

if.end14.ccs811_set_wakeup.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs811_set_wakeup.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %call8, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 60, i32 noundef 2) #4
  br label %ccs811_set_wakeup.exit

ccs811_set_wakeup.exit:                           ; preds = %if.end.i, %if.end14.ccs811_set_wakeup.exit_crit_edge
  %call.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef 3) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ccs811_reset.exit, label %if.end.i172

if.end.i172:                                      ; preds = %ccs811_set_wakeup.exit
  %tobool.not.i171 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i171, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %call.i, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #4
  tail call void @gpiod_set_value(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %ccs811_reset.exit.thread

if.else.i:                                        ; preds = %if.end.i172
  %call4.i = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 4, ptr noundef nonnull @ccs811_reset.reset_seq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i173 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i173, label %ccs811_reset.exit.thread193, label %if.else.i.ccs811_reset.exit.thread_crit_edge

if.else.i.ccs811_reset.exit.thread_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs811_reset.exit.thread

ccs811_reset.exit.thread193:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  br label %if.then17

ccs811_reset.exit.thread:                         ; preds = %if.else.i.ccs811_reset.exit.thread_crit_edge, %if.then3.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.then20, label %if.end21

ccs811_reset.exit:                                ; preds = %ccs811_set_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call.i to i32
  br label %if.then17

if.then17:                                        ; preds = %ccs811_reset.exit, %ccs811_reset.exit.thread193
  %retval.0.i196 = phi i32 [ %call4.i, %ccs811_reset.exit.thread193 ], [ %12, %ccs811_reset.exit ]
  %13 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not.i175 = icmp eq ptr %14, null
  br i1 %tobool.not.i175, label %if.then17.cleanup_crit_edge, label %if.end.i176

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i176:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %14, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #4
  br label %cleanup

if.then20:                                        ; preds = %ccs811_reset.exit.thread
  %15 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not.i180 = icmp eq ptr %16, null
  br i1 %tobool.not.i180, label %if.then20.cleanup_crit_edge, label %if.end.i181

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i181:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %16, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #4
  br label %cleanup

if.end21:                                         ; preds = %ccs811_reset.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %call19)
  %cmp22.not = icmp eq i32 %call19, 129
  br i1 %cmp22.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  tail call fastcc void @ccs811_set_wakeup(ptr noundef %7, i1 noundef zeroext false)
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ccs811_set_wakeup(ptr noundef %7, i1 noundef zeroext false)
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %and = and i32 %call26, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp30.not = icmp eq i32 %and, 16
  br i1 %cmp30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  tail call fastcc void @ccs811_set_wakeup(ptr noundef %7, i1 noundef zeroext false)
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %call.i.i184 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp.i.i185 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp.i.i185, label %if.end36.if.then39_crit_edge, label %if.end.i.i

if.end36.if.then39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.end.i.i:                                       ; preds = %if.end36
  %and.i.i = and i32 %call.i.i184, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.i.i, label %if.end.i.i.ccs811_setup.exit_crit_edge

if.end.i.i.ccs811_setup.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs811_setup.exit

if.end2.i.i:                                      ; preds = %if.end.i.i
  %and3.i.i = and i32 %call.i.i184, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp4.not.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %cmp4.not.not.i.i, label %if.end2.i.i.if.then39_crit_edge, label %if.end6.i.i

if.end2.i.i.if.then39_crit_edge:                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %call7.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext -12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %if.end6.i.i.if.then39_crit_edge, label %if.end10.i.i

if.end6.i.i.if.then39_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %call11.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %if.end10.i.i.if.then39_crit_edge, label %if.end14.i.i

if.end10.i.i.if.then39_crit_edge:                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %and15.i.i = and i32 %call11.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %cmp16.not.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %cmp16.not.not.i.i, label %do.end.i.i, label %if.end14.i.i.ccs811_setup.exit_crit_edge

if.end14.i.i.ccs811_setup.exit_crit_edge:         ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs811_setup.exit

do.end.i.i:                                       ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #7
  br label %if.then39

ccs811_setup.exit:                                ; preds = %if.end14.i.i.ccs811_setup.exit_crit_edge, %if.end.i.i.ccs811_setup.exit_crit_edge
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp38 = icmp slt i32 %call1.i, 0
  br i1 %cmp38, label %ccs811_setup.exit.if.then39_crit_edge, label %if.end40

ccs811_setup.exit.if.then39_crit_edge:            ; preds = %ccs811_setup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.then39:                                        ; preds = %ccs811_setup.exit.if.then39_crit_edge, %do.end.i.i, %if.end10.i.i.if.then39_crit_edge, %if.end6.i.i.if.then39_crit_edge, %if.end2.i.i.if.then39_crit_edge, %if.end36.if.then39_crit_edge
  %retval.0.i187199 = phi i32 [ %call1.i, %ccs811_setup.exit.if.then39_crit_edge ], [ -5, %do.end.i.i ], [ %call.i.i184, %if.end36.if.then39_crit_edge ], [ -5, %if.end2.i.i.if.then39_crit_edge ], [ %call7.i.i, %if.end6.i.i.if.then39_crit_edge ], [ %call11.i.i, %if.end10.i.i.if.then39_crit_edge ]
  tail call fastcc void @ccs811_set_wakeup(ptr noundef %7, i1 noundef zeroext false)
  br label %cleanup

if.end40:                                         ; preds = %ccs811_setup.exit
  tail call fastcc void @ccs811_set_wakeup(ptr noundef %7, i1 noundef zeroext false)
  %lock = getelementptr inbounds %struct.ccs811_data, ptr %7, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @ccs811_probe.__key) #4
  %name44 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %17 = ptrtoint ptr %name44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %id, ptr %name44, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ccs811_info, ptr %info, align 8
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %call1, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ccs811_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %num_channels, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp45 = icmp sgt i32 %23, 0
  br i1 %cmp45, label %if.then46, label %if.end40.if.end75_crit_edge

if.end40.if.end75_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then46:                                        ; preds = %if.end40
  %call49 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %23, ptr noundef nonnull @ccs811_data_rdy_trigger_poll, ptr noundef null, i32 noundef 8194, ptr noundef nonnull @.str.11, ptr noundef nonnull %call1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 0, %call49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %sub) #7
  br label %err_poweroff

if.end56:                                         ; preds = %if.then46
  %24 = ptrtoint ptr %name44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name44, align 8
  %call59 = tail call i32 @iio_device_id(ptr noundef nonnull %call1) #4
  %call60 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %25, i32 noundef %call59) #4
  %drdy_trig = getelementptr inbounds %struct.ccs811_data, ptr %7, i32 0, i32 3
  %26 = ptrtoint ptr %drdy_trig to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call60, ptr %drdy_trig, align 8
  %tobool62.not = icmp eq ptr %call60, null
  br i1 %tobool62.not, label %if.end56.err_poweroff_crit_edge, label %if.end64

if.end56.err_poweroff_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_poweroff

if.end64:                                         ; preds = %if.end56
  %27 = ptrtoint ptr %call60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ccs811_trigger_ops, ptr %call60, align 8
  %28 = ptrtoint ptr %drdy_trig to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drdy_trig, align 8
  %driver_data.i.i188 = getelementptr inbounds %struct.iio_trigger, ptr %29, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i188 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1, ptr %driver_data.i.i188, align 4
  %31 = load ptr, ptr %drdy_trig, align 8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 10
  %32 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %trig, align 4
  %dev.i189 = getelementptr inbounds %struct.iio_trigger, ptr %31, i32 0, i32 4
  %call.i190 = tail call ptr @get_device(ptr noundef %dev.i189) #4
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %34) #4
  %35 = ptrtoint ptr %drdy_trig to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drdy_trig, align 8
  %call71 = tail call i32 @__iio_trigger_register(ptr noundef %36, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end64.if.end75_crit_edge, label %if.end64.err_poweroff_crit_edge

if.end64.err_poweroff_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_poweroff

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.end75:                                         ; preds = %if.end64.if.end75_crit_edge, %if.end40.if.end75_crit_edge
  %call76 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call1, ptr noundef null, ptr noundef nonnull @ccs811_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end81, label %if.end83

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %err_trigger_unregister

if.end83:                                         ; preds = %if.end75
  %call84 = tail call i32 @__iio_device_register(ptr noundef nonnull %call1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end89, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #7
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call1) #4
  br label %err_trigger_unregister

err_trigger_unregister:                           ; preds = %do.end89, %do.end81
  %ret.0 = phi i32 [ %call76, %do.end81 ], [ %call84, %do.end89 ]
  %drdy_trig92 = getelementptr inbounds %struct.ccs811_data, ptr %7, i32 0, i32 3
  %37 = ptrtoint ptr %drdy_trig92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %drdy_trig92, align 8
  %tobool93.not = icmp eq ptr %38, null
  br i1 %tobool93.not, label %err_trigger_unregister.err_poweroff_crit_edge, label %if.then94

err_trigger_unregister.err_poweroff_crit_edge:    ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_poweroff

if.then94:                                        ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iio_trigger_unregister(ptr noundef nonnull %38) #4
  br label %err_poweroff

err_poweroff:                                     ; preds = %if.then94, %err_trigger_unregister.err_poweroff_crit_edge, %if.end64.err_poweroff_crit_edge, %if.end56.err_poweroff_crit_edge, %do.end54
  %ret.1 = phi i32 [ %call49, %do.end54 ], [ %call71, %if.end64.err_poweroff_crit_edge ], [ %ret.0, %if.then94 ], [ %ret.0, %err_trigger_unregister.err_poweroff_crit_edge ], [ -12, %if.end56.err_poweroff_crit_edge ]
  %call97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %err_poweroff, %if.end83.cleanup_crit_edge, %if.then39, %do.end34, %if.then28, %do.end, %if.end.i181, %if.then20.cleanup_crit_edge, %if.end.i176, %if.then17.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then11 ], [ -19, %do.end ], [ %call26, %if.then28 ], [ -19, %do.end34 ], [ %retval.0.i187199, %if.then39 ], [ %ret.1, %err_poweroff ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %retval.0.i196, %if.then17.cleanup_crit_edge ], [ %retval.0.i196, %if.end.i176 ], [ %call19, %if.then20.cleanup_crit_edge ], [ %call19, %if.end.i181 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs811_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #4
  %drdy_trig = getelementptr inbounds %struct.ccs811_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drdy_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drdy_trig, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iio_trigger_unregister(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs811_set_wakeup(ptr nocapture noundef readonly %data, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeup_gpio = getelementptr inbounds %struct.ccs811_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end:                                           ; preds = %entry
  %conv = zext i1 %enable to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef %conv) #4
  br i1 %enable, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 60, i32 noundef 2) #4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs811_data_rdy_trigger_poll(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %drdy_trig_on = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %drdy_trig_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drdy_trig_on, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %drdy_trig = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %drdy_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drdy_trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs811_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %scan = getelementptr inbounds %struct.ccs811_data, ptr %3, i32 0, i32 6
  %call3 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 4, ptr noundef %scan) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  br label %err

if.end:                                           ; preds = %entry
  %call5 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %9, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call5, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #4
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %12) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs811_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
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
    i32 2, label %sw.bb21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %wakeup_gpio.i.i = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %wakeup_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup_gpio.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.ccs811_set_wakeup.exit.i_crit_edge, label %if.end.i.i

if.end.ccs811_set_wakeup.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs811_set_wakeup.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %4, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 60, i32 noundef 2) #4
  br label %ccs811_set_wakeup.exit.i

ccs811_set_wakeup.exit.i:                         ; preds = %if.end.i.i, %if.end.ccs811_set_wakeup.exit.i_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call26.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp127.i = icmp slt i32 %call26.i, 0
  br i1 %cmp127.i, label %ccs811_set_wakeup.exit.i.if.then3_crit_edge, label %ccs811_set_wakeup.exit.i.if.end.i_crit_edge

ccs811_set_wakeup.exit.i.if.end.i_crit_edge:      ; preds = %ccs811_set_wakeup.exit.i
  br label %if.end.i

ccs811_set_wakeup.exit.i.if.then3_crit_edge:      ; preds = %ccs811_set_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i:                                         ; preds = %if.end4.i.if.end.i_crit_edge, %ccs811_set_wakeup.exit.i.if.end.i_crit_edge
  %call29.i = phi i32 [ %call.i, %if.end4.i.if.end.i_crit_edge ], [ %call26.i, %ccs811_set_wakeup.exit.i.if.end.i_crit_edge ]
  %dec28.i = phi i32 [ %dec.i, %if.end4.i.if.end.i_crit_edge ], [ 10, %ccs811_set_wakeup.exit.i.if.end.i_crit_edge ]
  %and.i = and i32 %call29.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec28.i)
  %cmp2.i = icmp eq i32 %dec28.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %while.end.i, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 100) #4
  %dec.i = add nsw i32 %dec28.i, -1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 0) #4
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end4.i.if.then3_crit_edge, label %if.end4.i.if.end.i_crit_edge

if.end4.i.if.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end4.i.if.then3_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %while.end.i.if.then3_crit_edge, label %if.end8.i

while.end.i.if.then3_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end8.i:                                        ; preds = %while.end.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %buffer.i = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 2
  %call10.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %10, i8 noundef zeroext 2, i8 noundef zeroext 8, ptr noundef %buffer.i) #4
  %11 = ptrtoint ptr %wakeup_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup_gpio.i.i, align 4
  %tobool.not.i22.i = icmp eq ptr %12, null
  br i1 %tobool.not.i22.i, label %if.end8.i.ccs811_get_measurement.exit_crit_edge, label %if.end.i23.i

if.end8.i.ccs811_get_measurement.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccs811_get_measurement.exit

if.end.i23.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %12, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #4
  br label %ccs811_get_measurement.exit

ccs811_get_measurement.exit:                      ; preds = %if.end.i23.i, %if.end8.i.ccs811_get_measurement.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp = icmp slt i32 %call10.i, 0
  br i1 %cmp, label %ccs811_get_measurement.exit.if.then3_crit_edge, label %if.end5

ccs811_get_measurement.exit.if.then3_crit_edge:   ; preds = %ccs811_get_measurement.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %ccs811_get_measurement.exit.if.then3_crit_edge, %while.end.i.if.then3_crit_edge, %if.end4.i.if.then3_crit_edge, %ccs811_set_wakeup.exit.i.if.then3_crit_edge
  %retval.0.i62 = phi i32 [ %call10.i, %ccs811_get_measurement.exit.if.then3_crit_edge ], [ %call26.i, %ccs811_set_wakeup.exit.i.if.then3_crit_edge ], [ -5, %while.end.i.if.then3_crit_edge ], [ %call.i, %if.end4.i.if.then3_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  br label %cleanup

if.end5:                                          ; preds = %ccs811_get_measurement.exit
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %14, label %if.end5.sw.epilog19_crit_edge [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb7
    i32 24, label %sw.bb11
  ]

if.end5.sw.epilog19_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog19

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %raw_data = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %raw_data, align 2
  %18 = and i16 %17, 1023
  br label %sw.epilog19.sink.split

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %raw_data9 = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %raw_data9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %raw_data9, align 2
  %21 = lshr i16 %20, 10
  br label %sw.epilog19.sink.split

sw.bb11:                                          ; preds = %if.end5
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %22 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel2, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %23, label %sw.bb11.sw.epilog19_crit_edge [
    i32 34, label %sw.bb12
    i32 35, label %sw.bb15
  ]

sw.bb11.sw.epilog19_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog19

sw.bb12:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buffer.i, align 8
  br label %sw.epilog19.sink.split

sw.bb15:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  %voc = getelementptr inbounds %struct.ccs811_data, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %voc to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %voc, align 2
  br label %sw.epilog19.sink.split

sw.epilog19.sink.split:                           ; preds = %sw.bb15, %sw.bb12, %sw.bb7, %sw.bb6
  %.sink = phi i16 [ %26, %sw.bb12 ], [ %28, %sw.bb15 ], [ %21, %sw.bb7 ], [ %18, %sw.bb6 ]
  %conv14 = zext i16 %.sink to i32
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv14, ptr %val, align 4
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.epilog19.sink.split, %sw.bb11.sw.epilog19_crit_edge, %if.end5.sw.epilog19_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb11.sw.epilog19_crit_edge ], [ -22, %if.end5.sw.epilog19_crit_edge ], [ 1, %sw.epilog19.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %31, label %sw.bb21.cleanup_crit_edge [
    i32 0, label %sw.bb23
    i32 1, label %sw.bb24
    i32 24, label %sw.bb25
  ]

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %val, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 612903, ptr %val2, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb21
  %channel226 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %37 = ptrtoint ptr %channel226 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel226, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %38, label %sw.bb25.cleanup_crit_edge [
    i32 34, label %sw.bb27
    i32 35, label %sw.bb28
  ]

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb27:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %val, align 4
  %41 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 100, ptr %val2, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val, align 4
  %43 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 100, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb28, %sw.bb27, %sw.bb25.cleanup_crit_edge, %sw.bb24, %sw.bb23, %sw.bb21.cleanup_crit_edge, %sw.epilog19, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %sw.bb28 ], [ 2, %sw.bb27 ], [ 2, %sw.bb24 ], [ 2, %sw.bb23 ], [ %retval.0.i62, %if.then3 ], [ %ret.0, %sw.epilog19 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccs811_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
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
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %frombool = zext i1 %state to i8
  %and = and i32 %call2, 247
  %masksel = select i1 %state, i32 8, i32 0
  %ret.0 = or i32 %and, %masksel
  %drdy_trig_on = getelementptr inbounds %struct.ccs811_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %drdy_trig_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %drdy_trig_on, align 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %conv = trunc i32 %ret.0 to i8
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_ccs811__288_570_ccs811_driver_init6, !1, !"__initcall__kmod_ccs811__288_570_ccs811_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/ccs811.c", i32 570, i32 1}
!2 = !{ptr @__exitcall_ccs811_driver_exit, !1, !"__exitcall_ccs811_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/ccs811.c", i32 572, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/ccs811.c", i32 573, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/ccs811.c", i32 574, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/ccs811.c", i32 563, i32 11}
!12 = !{ptr @ccs811_driver, !13, !"ccs811_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/ccs811.c", i32 561, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/ccs811.c", i32 424, i32 60}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/ccs811.c", i32 445, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ccs811_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ccs811_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/chemical/ccs811.c", i32 457, i32 3}
!26 = !{ptr @ccs811_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ccs811_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ccs811_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/iio/chemical/ccs811.c", i32 470, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/chemical/ccs811.c", i32 485, i32 7}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/chemical/ccs811.c", i32 487, i32 4}
!35 = !{ptr @ccs811_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ccs811_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/chemical/ccs811.c", i32 492, i32 9}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/chemical/ccs811.c", i32 513, i32 3}
!41 = !{ptr @ccs811_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ccs811_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/chemical/ccs811.c", i32 519, i32 3}
!45 = !{ptr @ccs811_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ccs811_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/chemical/ccs811.c", i32 370, i32 53}
!49 = !{ptr @ccs811_reset.reset_seq, !50, !"reset_seq", i1 false, i1 false}
!50 = !{!"../drivers/iio/chemical/ccs811.c", i32 386, i32 19}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/chemical/ccs811.c", i32 393, i32 4}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ccs811_reset._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ccs811_reset._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/chemical/ccs811.c", i32 158, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ccs811_start_sensor_application._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ccs811_start_sensor_application._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ccs811_info, !62, !"ccs811_info", i1 false, i1 false}
!62 = !{!"../drivers/iio/chemical/ccs811.c", i32 300, i32 30}
!63 = !{ptr @ccs811_channels, !64, !"ccs811_channels", i1 false, i1 false}
!64 = !{!"../drivers/iio/chemical/ccs811.c", i32 88, i32 35}
!65 = !{ptr @ccs811_trigger_ops, !66, !"ccs811_trigger_ops", i1 false, i1 false}
!66 = !{!"../drivers/iio/chemical/ccs811.c", i32 325, i32 37}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/chemical/ccs811.c", i32 341, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ccs811_trigger_handler._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ccs811_trigger_handler._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ccs811_dt_ids, !73, !"ccs811_dt_ids", i1 false, i1 false}
!73 = !{!"../drivers/iio/chemical/ccs811.c", i32 555, i32 34}
!74 = !{ptr @ccs811_id, !75, !"ccs811_id", i1 false, i1 false}
!75 = !{!"../drivers/iio/chemical/ccs811.c", i32 549, i32 35}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i8 0, i8 2}
