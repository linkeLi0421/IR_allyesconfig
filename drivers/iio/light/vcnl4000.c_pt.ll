; ModuleID = '/llk/IR_all_yes/drivers/iio/light/vcnl4000.c_pt.bc'
source_filename = "../drivers/iio/light/vcnl4000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.vcnl4000_chip_spec = type { ptr, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.vcnl4000_data = type { ptr, i32, i32, i32, ptr, %struct.mutex, %struct.vcnl4200_channel, %struct.vcnl4200_channel, i32 }
%struct.vcnl4200_channel = type { i8, i64, i64, %struct.mutex }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_vcnl4000__291_1161_vcnl4000_driver_init6 = internal global ptr @vcnl4000_driver_init, section ".initcall6.init", align 4
@vcnl4000_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @vcnl4000_probe, ptr @vcnl4000_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vcnl_4000_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vcnl4000_pm_ops, ptr null, ptr null }, ptr @vcnl4000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vcnl4000_driver_exit = internal global ptr @vcnl4000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [51 x i8] c"vcnl4000.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [56 x i8] c"vcnl4000.author=Mathieu Othacehe <m.othacehe@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [75 x i8] c"vcnl4000.description=Vishay VCNL4000 proximity/ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [41 x i8] c"vcnl4000.file=drivers/iio/light/vcnl4000\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"vcnl4000.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcnl4000\00", [23 x i8] zeroinitializer }, align 32
@vcnl_4000_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vishay,vcnl4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vishay,vcnl4010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vishay,vcnl4020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vishay,vcnl4040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vishay,vcnl4200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@vcnl4000_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vcnl4000_runtime_suspend, ptr @vcnl4000_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@vcnl4000_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"vcnl4000\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"vcnl4010\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"vcnl4020\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"vcnl4040\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"vcnl4200\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vcnl4000_chip_spec_cfg = internal constant { [4 x %struct.vcnl4000_chip_spec], [48 x i8] } { [4 x %struct.vcnl4000_chip_spec] [%struct.vcnl4000_chip_spec { ptr @.str.12, ptr @vcnl4000_channels, i32 2, ptr @vcnl4000_info, i8 0, ptr @vcnl4000_init, ptr @vcnl4000_measure_light, ptr @vcnl4000_measure_proximity, ptr @vcnl4000_set_power_state }, %struct.vcnl4000_chip_spec { ptr @.str.13, ptr @vcnl4010_channels, i32 3, ptr @vcnl4010_info, i8 1, ptr @vcnl4000_init, ptr @vcnl4000_measure_light, ptr @vcnl4000_measure_proximity, ptr @vcnl4000_set_power_state }, %struct.vcnl4000_chip_spec { ptr @.str.14, ptr @vcnl4000_channels, i32 2, ptr @vcnl4000_info, i8 0, ptr @vcnl4200_init, ptr @vcnl4200_measure_light, ptr @vcnl4200_measure_proximity, ptr @vcnl4200_set_power_state }, %struct.vcnl4000_chip_spec { ptr @.str.15, ptr @vcnl4000_channels, i32 2, ptr @vcnl4000_info, i8 0, ptr @vcnl4200_init, ptr @vcnl4200_measure_light, ptr @vcnl4200_measure_proximity, ptr @vcnl4200_set_power_state }], [48 x i8] zeroinitializer }, align 32
@vcnl4000_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vcnl4000_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/vcnl4000.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Ambient light/proximity sensor, Rev: %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"proximity-near-level\00", [43 x i8] zeroinitializer }, align 32
@vcnl4010_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @vcnl4010_buffer_postenable, ptr @vcnl4010_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@vcnl4000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1051, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to setup iio triggered buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vcnl4000_probe._entry_ptr = internal global ptr @vcnl4000_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcnl4010_irq\00", [19 x i8] zeroinitializer }, align 32
@vcnl4000_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1062, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@vcnl4000_probe._entry_ptr.11 = internal global ptr @vcnl4000_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCNL4000\00", [23 x i8] zeroinitializer }, align 32
@vcnl4000_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vcnl4000_ext_info, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@vcnl4000_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @vcnl4000_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VCNL4010/4020\00", [18 x i8] zeroinitializer }, align 32
@vcnl4010_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4097, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @vcnl4000_event_spec, i32 3, ptr @vcnl4000_ext_info, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@vcnl4010_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @vcnl4010_read_raw, ptr null, ptr @vcnl4010_read_avail, ptr @vcnl4010_write_raw, ptr null, ptr null, ptr @vcnl4010_read_event_config, ptr @vcnl4010_write_event_config, ptr @vcnl4010_read_event, ptr @vcnl4010_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCNL4040\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCNL4200\00", [23 x i8] zeroinitializer }, align 32
@vcnl4000_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.16, i32 0, ptr @vcnl4000_read_near_level, ptr null, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nearlevel\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@vcnl4000_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 173, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wrong device id, use vcnl4000\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vcnl4000_init\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vcnl4000_init._entry_ptr = internal global ptr @vcnl4000_init._entry, section ".printk_index", align 4
@vcnl4000_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 178, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wrong device id, use vcnl4010/4020\00", [61 x i8] zeroinitializer }, align 32
@vcnl4000_init._entry_ptr.23 = internal global ptr @vcnl4000_init._entry.21, section ".printk_index", align 4
@vcnl4000_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&data->vcnl4000_lock\00", [43 x i8] zeroinitializer }, align 32
@vcnl4000_measure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"vcnl4000_measure() failed, data not ready\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vcnl4000_measure\00", [47 x i8] zeroinitializer }, align 32
@vcnl4000_measure._entry_ptr = internal global ptr @vcnl4000_measure._entry, section ".printk_index", align 4
@vcnl4000_event_spec = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@vcnl4010_prox_sampling_frequency = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 1, i32 950000], [2 x i32] [i32 3, i32 906250], [2 x i32] [i32 7, i32 812500], [2 x i32] [i32 16, i32 625000], [2 x i32] [i32 31, i32 250000], [2 x i32] [i32 62, i32 500000], [2 x i32] [i32 125, i32 0], [2 x i32] [i32 250, i32 0]], [32 x i8] zeroinitializer }, align 32
@vcnl4200_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vcnl4200_init\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device id 0x%x\00", [17 x i8] zeroinitializer }, align 32
@vcnl4200_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&data->vcnl4200_al.lock\00", [40 x i8] zeroinitializer }, align 32
@vcnl4200_init.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&data->vcnl4200_ps.lock\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@vcnl4010_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr null, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 134]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.37 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 3, i64 7, i64 16, i64 31, i64 62, i64 125, i64 250]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"vcnl4000_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1150, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1152, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"vcnl_4000_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1089, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"vcnl4000_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1143, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"vcnl4000_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 144, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"vcnl4000_chip_spec_cfg\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 813, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1031, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1034, i32 45 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"vcnl4010_buffer_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 983, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1050, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1059, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1062, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 815, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"vcnl4000_channels\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 762, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"vcnl4000_info\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 799, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 826, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"vcnl4010_channels\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 774, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"vcnl4010_info\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 803, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 837, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 848, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"vcnl4000_ext_info\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 737, i32 44 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 739, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 734, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 172, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 177, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 186, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 311, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"vcnl4000_event_spec\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 746, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant [33 x i8] c"vcnl4010_prox_sampling_frequency\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 93, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 234, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 256, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 257, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 998, i32 49 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"vcnl4010_trigger_ops\00", align 1
@___asan_gen_.188 = private constant [32 x i8] c"../drivers/iio/light/vcnl4000.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 988, i32 37 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_vcnl4000_driver_exit, ptr @__initcall__kmod_vcnl4000__291_1161_vcnl4000_driver_init6, ptr @vcnl4000_driver_exit, ptr @vcnl4000_init._entry, ptr @vcnl4000_init._entry.21, ptr @vcnl4000_init._entry_ptr, ptr @vcnl4000_init._entry_ptr.23, ptr @vcnl4000_measure._entry, ptr @vcnl4000_measure._entry_ptr, ptr @vcnl4000_probe._entry, ptr @vcnl4000_probe._entry.9, ptr @vcnl4000_probe._entry_ptr, ptr @vcnl4000_probe._entry_ptr.11, ptr @vcnl4000_driver, ptr @.str, ptr @vcnl_4000_of_match, ptr @vcnl4000_pm_ops, ptr @vcnl4000_id, ptr @vcnl4000_chip_spec_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vcnl4010_buffer_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @vcnl4000_channels, ptr @vcnl4000_info, ptr @.str.13, ptr @vcnl4010_channels, ptr @vcnl4010_info, ptr @.str.14, ptr @.str.15, ptr @vcnl4000_ext_info, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @vcnl4000_init.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @vcnl4000_event_spec, ptr @vcnl4010_prox_sampling_frequency, ptr @.str.27, ptr @.str.28, ptr @vcnl4200_init.__key, ptr @.str.29, ptr @vcnl4200_init.__key.30, ptr @.str.31, ptr @.str.32, ptr @vcnl4010_trigger_ops], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl_4000_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_chip_spec_cfg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4010_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4010_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4010_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_measure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4000_event_spec to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4010_prox_sampling_frequency to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4200_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4200_init.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl4010_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vcnl4000_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vcnl4000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @vcnl4000_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 360) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %id3 = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id3, align 4
  %arrayidx = getelementptr [4 x %struct.vcnl4000_chip_spec], ptr @vcnl4000_chip_spec_cfg, i32 0, i32 %5
  %chip_spec = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %chip_spec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %chip_spec, align 8
  %init = getelementptr [4 x %struct.vcnl4000_chip_spec], ptr @vcnl4000_chip_spec_cfg, i32 0, i32 %5, i32 5
  %8 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init, align 4
  %call6 = tail call i32 %9(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcnl4000_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vcnl4000_probe, %if.then13)) #11
          to label %do.end [label %if.then13], !srcloc !112

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_spec, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %rev = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vcnl4000_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %13, i32 noundef %15) #11
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %near_level = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 8
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %near_level, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %do.end.if.end22_crit_edge, label %if.then20

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %near_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %near_level, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.end.if.end22_crit_edge
  %17 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_spec, align 8
  %info = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %info24 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %21 = ptrtoint ptr %info24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %info24, align 8
  %22 = load ptr, ptr %chip_spec, align 8
  %channels = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channels, align 4
  %channels26 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %25 = ptrtoint ptr %channels26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %channels26, align 8
  %26 = load ptr, ptr %chip_spec, align 8
  %num_channels = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_channels, align 4
  %num_channels28 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %29 = ptrtoint ptr %num_channels28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %num_channels28, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %30 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str, ptr %name, align 8
  %31 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %call, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not = icmp eq i32 %33, 0
  br i1 %tobool29.not, label %if.end22.if.end56_crit_edge, label %land.lhs.true

if.end22.if.end56_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end22
  %34 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip_spec, align 8
  %irq_support = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %irq_support to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %irq_support, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool31.not = icmp eq i8 %37, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end56_crit_edge, label %if.then32

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then32:                                        ; preds = %land.lhs.true
  %call34 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @vcnl4010_trigger_handler, i32 noundef 0, ptr noundef nonnull @vcnl4010_buffer_ops, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #14
  br label %cleanup

if.end41:                                         ; preds = %if.then32
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call44 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %39, ptr noundef null, ptr noundef nonnull @vcnl4010_irq_thread, i32 noundef 8194, ptr noundef nonnull @.str.8, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 8
  %call2.i = tail call i32 @iio_device_id(ptr noundef nonnull %call) #11
  %call3.i = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef %45, i32 noundef %call2.i) #11
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end51.cleanup_crit_edge, label %vcnl4010_probe_trigger.exit

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vcnl4010_probe_trigger.exit:                      ; preds = %if.end51
  %46 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @vcnl4010_trigger_ops, ptr %call3.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call3.i, i32 0, i32 4, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call, ptr %driver_data.i.i.i, align 4
  %call5.i = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev.i, ptr noundef nonnull %call3.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp53 = icmp slt i32 %call5.i, 0
  br i1 %cmp53, label %vcnl4010_probe_trigger.exit.cleanup_crit_edge, label %vcnl4010_probe_trigger.exit.if.end56_crit_edge

vcnl4010_probe_trigger.exit.if.end56_crit_edge:   ; preds = %vcnl4010_probe_trigger.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

vcnl4010_probe_trigger.exit.cleanup_crit_edge:    ; preds = %vcnl4010_probe_trigger.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56:                                         ; preds = %vcnl4010_probe_trigger.exit.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.end22.if.end56_crit_edge
  %call.i124 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp59 = icmp slt i32 %call.i124, 0
  br i1 %cmp59, label %if.end56.fail_poweroff_crit_edge, label %if.end61

if.end56.fail_poweroff_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_poweroff

if.end61:                                         ; preds = %if.end56
  %call62 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.fail_poweroff_crit_edge, label %if.end65

if.end61.fail_poweroff_crit_edge:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_poweroff

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %cleanup

fail_poweroff:                                    ; preds = %if.end61.fail_poweroff_crit_edge, %if.end56.fail_poweroff_crit_edge
  %ret.0 = phi i32 [ %call.i124, %if.end56.fail_poweroff_crit_edge ], [ %call62, %if.end61.fail_poweroff_crit_edge ]
  %48 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip_spec, align 8
  %set_power_state = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_power_state, align 4
  %call70 = tail call i32 %51(ptr noundef %1, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_poweroff, %if.end65, %vcnl4010_probe_trigger.exit.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.end49, %do.end39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %do.end39 ], [ %call44, %do.end49 ], [ %ret.0, %fail_poweroff ], [ 0, %if.end65 ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call5.i, %vcnl4010_probe_trigger.exit.cleanup_crit_edge ], [ -12, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  tail call void @iio_device_unregister(ptr noundef %1) #11
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  %chip_spec = getelementptr inbounds %struct.vcnl4000_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_spec, align 8
  %set_power_state = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_power_state, align 4
  %call5 = tail call i32 %7(ptr noundef %3, i1 noundef zeroext false) #11
  ret i32 %call5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %buffer = alloca [8 x i16], align 8
  %isr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %active_scan_mask2 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #11
  %6 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr)
  %7 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %isr, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -114) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3, ptr %isr, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %13 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %13)
  %isr.0.isr.0. = load volatile i32, ptr %isr, align 4
  %14 = and i32 %isr.0.isr.0., 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.then5.if.end14_crit_edge, label %if.then8

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.then5
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %16, i8 noundef zeroext -121) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then8.end_crit_edge, label %if.end12

if.then8.end_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %call.i.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %buffer, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.then5.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %data_read.0.off0 = phi i1 [ false, %if.end12 ], [ true, %if.then5.if.end14_crit_edge ], [ true, %if.end.if.end14_crit_edge ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %21 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %21)
  %isr.0.isr.0.38 = load i32, ptr %isr, align 4
  %22 = trunc i32 %isr.0.isr.0.38 to i8
  %conv16 = and i8 %22, 12
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -114, i8 noundef zeroext %conv16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %brmerge = or i1 %data_read.0.off0, %cmp18
  br i1 %brmerge, label %if.end14.end_crit_edge, label %if.end24

if.end14.end_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end24:                                         ; preds = %if.end14
  %call25 = tail call i64 @iio_get_time_ns(ptr noundef %1) #11
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scan_timestamp.i, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end24.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end24.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %26, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call25, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end24.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %buffer) #11
  br label %end

end:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end14.end_crit_edge, %if.then8.end_crit_edge, %entry.end_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %29) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #11
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_irq_thread(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  %isr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -114) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %isr, align 4
  %and = and i32 %call1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %5)
  %isr.0.isr.0. = load volatile i32, ptr %isr, align 4
  %6 = and i32 %isr.0.isr.0., 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then2.if.end8_crit_edge, label %if.then5

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i64 @iio_get_time_ns(ptr noundef %p) #11
  %call7 = tail call i32 @iio_push_event(ptr noundef %p, i64 noundef 562984313159681, i64 noundef %call6) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2.if.end8_crit_edge
  %7 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %7)
  %isr.0.isr.0.34 = load volatile i32, ptr %isr, align 4
  %and1.i33 = and i32 %isr.0.isr.0.34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i33)
  %tobool10.not = icmp eq i32 %and1.i33, 0
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i64 @iio_get_time_ns(ptr noundef %p) #11
  %call13 = tail call i32 @iio_push_event(ptr noundef %p, i64 noundef 281509336449025, i64 noundef %call12) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %10)
  %isr.0.isr.0.35 = load i32, ptr %isr, align 4
  %11 = trunc i32 %isr.0.isr.0.35 to i8
  %conv = and i8 %11, 3
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -114, i8 noundef zeroext %conv) #11
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.end.if.end18_crit_edge
  %12 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %12)
  %isr.0.isr.0.36 = load i32, ptr %isr, align 4
  %and19 = and i32 %isr.0.isr.0.36, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.end_crit_edge, label %land.lhs.true

if.end18.end_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true:                                    ; preds = %if.end18
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 1
  %13 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %14, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.end_crit_edge, label %if.then23

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %trig = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 10
  %15 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll_chained(ptr noundef %16) #11
  br label %end

end:                                              ; preds = %if.then23, %land.lhs.true.end_crit_edge, %if.end18.end_crit_edge, %entry.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_init(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -127) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr32 = lshr i32 %call, 4
  %2 = zext i32 %shr32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr32, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %id = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %id6 = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp7.not = icmp eq i32 %6, 1
  br i1 %cmp7.not, label %sw.bb5.sw.epilog_crit_edge, label %sw.bb5.sw.epilog.sink.split_crit_edge

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb5.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.18, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.22, %sw.bb5.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull %.str.22.sink) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %and = and i32 %call, 15
  %rev = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %rev, align 8
  %al_scale = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %al_scale to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 250000, ptr %al_scale, align 4
  %vcnl4000_lock = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %vcnl4000_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @vcnl4000_init.__key) #11
  %chip_spec = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_spec, align 8
  %set_power_state = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_power_state, align 4
  %call18 = tail call i32 %14(ptr noundef %data, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_measure_light(ptr noundef %data, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vcnl4000_measure(ptr noundef %data, i8 noundef zeroext 16, i8 noundef zeroext 64, i8 noundef zeroext -123, ptr noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_measure_proximity(ptr noundef %data, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vcnl4000_measure(ptr noundef %data, i8 noundef zeroext 8, i8 noundef zeroext 32, i8 noundef zeroext -121, ptr noundef %val)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vcnl4000_set_power_state(ptr nocapture noundef readnone %data, i1 noundef zeroext %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4200_init(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %and)
  %cmp1.not = icmp eq i32 %and, 88
  br i1 %cmp1.not, label %if.end.do.body_crit_edge, label %if.then2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call4 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then2.cleanup_crit_edge, label %if.end7

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  %and8 = and i32 %call4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 134
  br i1 %cmp9.not, label %if.end7.do.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %if.end.do.body_crit_edge
  %id.0 = phi i32 [ 134, %if.end7.do.body_crit_edge ], [ 88, %if.end.do.body_crit_edge ]
  %ret.0 = phi i32 [ %call4, %if.end7.do.body_crit_edge ], [ %call, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcnl4200_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vcnl4200_init, %if.then16)) #11
          to label %do.end [label %if.then16], !srcloc !112

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vcnl4200_init.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %id.0) #11
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %6 = lshr i32 %ret.0, 8
  %and19 = and i32 %6, 15
  %rev = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and19, ptr %rev, align 8
  %vcnl4200_al = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %vcnl4200_al to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 9, ptr %vcnl4200_al, align 8
  %vcnl4200_ps = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 7
  %9 = ptrtoint ptr %vcnl4200_ps to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %vcnl4200_ps, align 8
  %trunc = trunc i32 %id.0 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %trunc, label %do.end.do.body34_crit_edge [
    i8 88, label %do.end.do.body34.sink.split_crit_edge
    i8 -122, label %sw.bb26
  ]

do.end.do.body34.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34.sink.split

do.end.do.body34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

sw.bb26:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34.sink.split

do.body34.sink.split:                             ; preds = %sw.bb26, %do.end.do.body34.sink.split_crit_edge
  %.sink76 = phi i64 [ 96000000, %sw.bb26 ], [ 60000000, %do.end.do.body34.sink.split_crit_edge ]
  %.sink75 = phi i64 [ 6000000, %sw.bb26 ], [ 5760000, %do.end.do.body34.sink.split_crit_edge ]
  %.sink = phi i32 [ 120000, %sw.bb26 ], [ 24000, %do.end.do.body34.sink.split_crit_edge ]
  %sampling_rate = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %.sink76, ptr %sampling_rate, align 8
  %sampling_rate25 = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %sampling_rate25 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %.sink75, ptr %sampling_rate25, align 8
  %al_scale = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %al_scale to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %al_scale, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.body34.sink.split, %do.end.do.body34_crit_edge
  %lock = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 6, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @vcnl4200_init.__key) #11
  %lock40 = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 7, i32 3
  tail call void @__mutex_init(ptr noundef %lock40, ptr noundef nonnull @.str.31, ptr noundef nonnull @vcnl4200_init.__key.30) #11
  %chip_spec = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip_spec, align 8
  %set_power_state = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_power_state, align 4
  %call43 = tail call i32 %17(ptr noundef %data, i1 noundef zeroext true) #11
  %18 = tail call i32 @llvm.smin.i32(i32 %call43, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.body34, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.then2.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ %18, %do.body34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4200_measure_light(ptr noundef %data, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vcnl4200_al = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 6
  %call = tail call fastcc i32 @vcnl4200_measure(ptr noundef %data, ptr noundef %vcnl4200_al, ptr noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4200_measure_proximity(ptr noundef %data, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vcnl4200_ps = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 7
  %call = tail call fastcc i32 @vcnl4200_measure(ptr noundef %data, ptr noundef %vcnl4200_ps, ptr noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4200_set_power_state(ptr nocapture noundef %data, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %not.on = xor i1 %on, true
  %conv = zext i1 %not.on to i16
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call3 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 3, i16 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, -1
  %4 = and i1 %cmp4, %on
  %5 = tail call i32 @llvm.smin.i32(i32 %call3, i32 0)
  br i1 %4, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i64 @ktime_get() #11
  %last_measurement = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %last_measurement to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call10, ptr %last_measurement, align 8
  %call11 = tail call i64 @ktime_get() #11
  %last_measurement12 = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %last_measurement12 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call11, ptr %last_measurement12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %5, %if.end.cleanup_crit_edge ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_read_near_level(ptr nocapture noundef readonly %indio_dev, i32 noundef %priv, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %near_level = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %near_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %near_level, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %sw.bb
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #11, !srcloc !115
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 6, label %sw.bb2
    i32 8, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %chip_spec = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip_spec, align 8
  %measure_light = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %measure_light to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %measure_light, align 4
  %call3 = tail call i32 %12(ptr noundef %1, ptr noundef %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %call3
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %chip_spec7 = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %chip_spec7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_spec7, align 8
  %measure_proximity = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %measure_proximity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %measure_proximity, align 4
  %call8 = tail call i32 %16(ptr noundef %1, ptr noundef %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %spec.store.select20 = select i1 %tobool9.not, i32 1, i32 %call8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb2, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %spec.store.select20, %sw.bb6 ], [ %spec.store.select, %sw.bb2 ], [ -22, %if.end.sw.epilog_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %dev1.i34 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i5.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i5.i, ptr %last_busy.i.i, align 8
  %call.i6.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i34, i32 noundef 13) #11
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp15.not = icmp eq i32 %21, 6
  br i1 %cmp15.not, label %if.end17, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %val, align 4
  %al_scale = getelementptr inbounds %struct.vcnl4000_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %al_scale to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %al_scale, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %sw.bb13.cleanup_crit_edge, %sw.epilog, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end17 ], [ %ret.0, %sw.epilog ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vcnl4000_measure(ptr noundef %data, i8 noundef zeroext %req_mask, i8 noundef zeroext %rdy_mask, i8 noundef zeroext %data_reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vcnl4000_lock = getelementptr inbounds %struct.vcnl4000_data, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %vcnl4000_lock, i32 noundef 0) #11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -128, i8 noundef zeroext %req_mask) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %conv = zext i8 %rdy_mask to i32
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.cond.preheader
  %dec39 = phi i32 [ 19, %while.cond.preheader ], [ %dec, %if.end8.while.body_crit_edge ]
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %and = and i32 %call2, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %while.end

if.end8:                                          ; preds = %if.end5
  tail call void @msleep(i32 noundef 20) #11
  %dec = add nsw i32 %dec39, -1
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %if.end8.do.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

while.end:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec39)
  %cmp9 = icmp slt i32 %dec39, 0
  br i1 %cmp9, label %while.end.do.end_crit_edge, label %if.end13

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end8.do.end_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end13:                                         ; preds = %while.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext %data_reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %call.i.i to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %conv1.i.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1.i.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %do.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %do.end ], [ %call.i.i, %if.end13.cleanup_crit_edge ], [ %call2, %while.body.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vcnl4000_lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge29
    i32 12, label %sw.bb6
  ]

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -128) #11
  %5 = and i32 %call.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %if.end.if.end5_crit_edge, label %if.else

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @vcnl4000_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.else ], [ -16, %if.end.if.end5_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #11
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cond = icmp eq i32 %8, 8
  br i1 %cond, label %sw.bb7, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext -126) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i = icmp slt i32 %call.i25, 0
  br i1 %cmp.i, label %sw.bb7.cleanup_crit_edge, label %if.end.i

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i25)
  %cmp1.i = icmp ugt i32 %call.i25, 7
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %vcnl4010_read_proxy_samp_freq.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vcnl4010_read_proxy_samp_freq.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [8 x [2 x i32]], ptr @vcnl4010_prox_sampling_frequency, i32 0, i32 %call.i25
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %arrayidx6.i = getelementptr [8 x [2 x i32]], ptr @vcnl4010_prox_sampling_frequency, i32 0, i32 %call.i25, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %vcnl4010_read_proxy_samp_freq.exit, %if.end.i.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 2, %vcnl4010_read_proxy_samp_freq.exit ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call.i25, %sw.bb7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vcnl4010_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vcnl4010_prox_sampling_frequency, ptr %vals, align 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %type, align 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %length, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -128) #11
  %4 = and i32 %call.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %if.end.end_crit_edge, label %if.end4

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %if.end4.end_crit_edge

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

sw.bb:                                            ; preds = %if.end4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cond9 = icmp eq i32 %7, 8
  br i1 %cond9, label %sw.bb5, label %sw.bb.end_crit_edge

sw.bb.end_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

sw.bb5:                                           ; preds = %sw.bb
  %8 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %val, label %sw.bb5.end_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 3, label %land.lhs.true.1.i
    i32 7, label %land.lhs.true.2.i
    i32 16, label %land.lhs.true.3.i
    i32 31, label %land.lhs.true.4.i
    i32 62, label %land.lhs.true.5.i
    i32 125, label %land.lhs.true.6.i
    i32 250, label %land.lhs.true.7.i
  ]

sw.bb5.end_crit_edge:                             ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.i:                                  ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 950000
  br i1 %cmp5.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true.i.end_crit_edge

land.lhs.true.i.end_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.1.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 906250, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 906250
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.if.end8.i_crit_edge, label %land.lhs.true.1.i.end_crit_edge

land.lhs.true.1.i.end_crit_edge:                  ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.1.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.2.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 812500, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 812500
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.if.end8.i_crit_edge, label %land.lhs.true.2.i.end_crit_edge

land.lhs.true.2.i.end_crit_edge:                  ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.2.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.3.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 625000, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 625000
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.end8.i_crit_edge, label %land.lhs.true.3.i.end_crit_edge

land.lhs.true.3.i.end_crit_edge:                  ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.3.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.4.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.if.end8.i_crit_edge, label %land.lhs.true.4.i.end_crit_edge

land.lhs.true.4.i.end_crit_edge:                  ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.4.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.5.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.if.end8.i_crit_edge, label %land.lhs.true.5.i.end_crit_edge

land.lhs.true.5.i.end_crit_edge:                  ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.5.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.6.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.if.end8.i_crit_edge, label %land.lhs.true.6.i.end_crit_edge

land.lhs.true.6.i.end_crit_edge:                  ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.6.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.7.i:                                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.if.end8.i_crit_edge, label %land.lhs.true.7.i.end_crit_edge

land.lhs.true.7.i.end_crit_edge:                  ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.7.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.7.i.if.end8.i_crit_edge, %land.lhs.true.6.i.if.end8.i_crit_edge, %land.lhs.true.5.i.if.end8.i_crit_edge, %land.lhs.true.4.i.if.end8.i_crit_edge, %land.lhs.true.3.i.if.end8.i_crit_edge, %land.lhs.true.2.i.if.end8.i_crit_edge, %land.lhs.true.1.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge
  %i.018.lcssa.i = phi i8 [ 0, %land.lhs.true.i.if.end8.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end8.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.end8.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.end8.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.end8.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.end8.i_crit_edge ], [ 6, %land.lhs.true.6.i.if.end8.i_crit_edge ], [ 7, %land.lhs.true.7.i.if.end8.i_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -126, i8 noundef zeroext %i.018.lcssa.i) #11
  br label %end

end:                                              ; preds = %if.end8.i, %land.lhs.true.7.i.end_crit_edge, %land.lhs.true.6.i.end_crit_edge, %land.lhs.true.5.i.end_crit_edge, %land.lhs.true.4.i.end_crit_edge, %land.lhs.true.3.i.end_crit_edge, %land.lhs.true.2.i.end_crit_edge, %land.lhs.true.1.i.end_crit_edge, %land.lhs.true.i.end_crit_edge, %sw.bb5.end_crit_edge, %sw.bb.end_crit_edge, %if.end4.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.end_crit_edge ], [ -22, %sw.bb.end_crit_edge ], [ -22, %if.end4.end_crit_edge ], [ %call.i15, %if.end8.i ], [ -22, %land.lhs.true.7.i.end_crit_edge ], [ -22, %land.lhs.true.6.i.end_crit_edge ], [ -22, %land.lhs.true.5.i.end_crit_edge ], [ -22, %land.lhs.true.4.i.end_crit_edge ], [ -22, %land.lhs.true.3.i.end_crit_edge ], [ -22, %land.lhs.true.2.i.end_crit_edge ], [ -22, %land.lhs.true.1.i.end_crit_edge ], [ -22, %land.lhs.true.i.end_crit_edge ], [ -22, %sw.bb5.end_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cond = icmp eq i32 %1, 8
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -119) #11
  %6 = and i32 %call.i, -2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp eq i32 %6, 2
  %conv = zext i1 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_write_event_config(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cond = icmp eq i32 %1, 8
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %call1.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.else.i:                                        ; preds = %sw.bb
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -119) #11
  %6 = and i32 %call.i.i, -2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %if.else.i.if.end7.i_crit_edge, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge
  %icr.0.i = phi i8 [ 2, %if.then.i.if.end7.i_crit_edge ], [ 0, %if.else.i.if.end7.i_crit_edge ]
  %command.0.i = phi i8 [ 3, %if.then.i.if.end7.i_crit_edge ], [ 0, %if.else.i.if.end7.i_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -128, i8 noundef zeroext %command.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %if.end7.i.end.i_crit_edge, label %if.end11.i

if.end7.i.end.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end.i

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -119, i8 noundef zeroext %icr.0.i) #11
  br label %end.i

end.i:                                            ; preds = %if.end11.i, %if.end7.i.end.i_crit_edge
  %ret.0.i = phi i32 [ %call8.i, %if.end7.i.end.i_crit_edge ], [ %call14.i, %if.end11.i ]
  br i1 %tobool.not, label %end.i.return_crit_edge, label %if.then16.i

end.i.return_crit_edge:                           ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then16.i:                                      ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #11
  br label %return

return:                                           ; preds = %if.then16.i, %end.i.return_crit_edge, %if.else.i.return_crit_edge, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call1.i, %if.then.i.return_crit_edge ], [ 0, %if.else.i.return_crit_edge ], [ %ret.0.i, %if.then16.i ], [ %ret.0.i, %end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cond = icmp eq i32 %info, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %dir, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext -116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.cleanup.sink.split_crit_edge

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i.i15 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext -118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %cmp.i.i16 = icmp slt i32 %call.i.i15, 0
  br i1 %cmp.i.i16, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.cleanup.sink.split_crit_edge

sw.bb3.cleanup.sink.split_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb3.cleanup.sink.split_crit_edge, %sw.bb1.cleanup.sink.split_crit_edge
  %call.i.i15.sink = phi i32 [ %call.i.i, %sw.bb1.cleanup.sink.split_crit_edge ], [ %call.i.i15, %sw.bb3.cleanup.sink.split_crit_edge ]
  %conv.i.i17 = trunc i32 %call.i.i15.sink to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i17) #11
  %conv1.i.i18 = zext i16 %7 to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1.i.i18, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %sw.bb1.cleanup_crit_edge ], [ %call.i.i15, %sw.bb3.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cond = icmp eq i32 %info, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %dir, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp.i = icmp sgt i32 %val, 65535
  br i1 %cmp.i, label %sw.bb1.vcnl4000_write_data.exit.thread_crit_edge, label %vcnl4000_write_data.exit

sw.bb1.vcnl4000_write_data.exit.thread_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %vcnl4000_write_data.exit.thread

vcnl4000_write_data.exit:                         ; preds = %sw.bb1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %conv.i = trunc i32 %val to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %4, i8 noundef zeroext -116, i16 noundef zeroext %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %vcnl4000_write_data.exit.vcnl4000_write_data.exit.thread_crit_edge, label %vcnl4000_write_data.exit.cleanup_crit_edge

vcnl4000_write_data.exit.cleanup_crit_edge:       ; preds = %vcnl4000_write_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vcnl4000_write_data.exit.vcnl4000_write_data.exit.thread_crit_edge: ; preds = %vcnl4000_write_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vcnl4000_write_data.exit.thread

vcnl4000_write_data.exit.thread:                  ; preds = %vcnl4000_write_data.exit.vcnl4000_write_data.exit.thread_crit_edge, %sw.bb1.vcnl4000_write_data.exit.thread_crit_edge
  %retval.0.i23 = phi i32 [ %call.i.i, %vcnl4000_write_data.exit.vcnl4000_write_data.exit.thread_crit_edge ], [ -34, %sw.bb1.vcnl4000_write_data.exit.thread_crit_edge ]
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp.i15 = icmp sgt i32 %val, 65535
  br i1 %cmp.i15, label %sw.bb3.vcnl4000_write_data.exit20.thread_crit_edge, label %vcnl4000_write_data.exit20

sw.bb3.vcnl4000_write_data.exit20.thread_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %vcnl4000_write_data.exit20.thread

vcnl4000_write_data.exit20:                       ; preds = %sw.bb3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %conv.i16 = trunc i32 %val to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i16) #11
  %call.i.i17 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext -118, i16 noundef zeroext %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp5 = icmp slt i32 %call.i.i17, 0
  br i1 %cmp5, label %vcnl4000_write_data.exit20.vcnl4000_write_data.exit20.thread_crit_edge, label %vcnl4000_write_data.exit20.cleanup_crit_edge

vcnl4000_write_data.exit20.cleanup_crit_edge:     ; preds = %vcnl4000_write_data.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vcnl4000_write_data.exit20.vcnl4000_write_data.exit20.thread_crit_edge: ; preds = %vcnl4000_write_data.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %vcnl4000_write_data.exit20.thread

vcnl4000_write_data.exit20.thread:                ; preds = %vcnl4000_write_data.exit20.vcnl4000_write_data.exit20.thread_crit_edge, %sw.bb3.vcnl4000_write_data.exit20.thread_crit_edge
  %retval.0.i1926 = phi i32 [ %call.i.i17, %vcnl4000_write_data.exit20.vcnl4000_write_data.exit20.thread_crit_edge ], [ -34, %sw.bb3.vcnl4000_write_data.exit20.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %vcnl4000_write_data.exit20.thread, %vcnl4000_write_data.exit20.cleanup_crit_edge, %vcnl4000_write_data.exit.thread, %vcnl4000_write_data.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i23, %vcnl4000_write_data.exit.thread ], [ 1, %vcnl4000_write_data.exit.cleanup_crit_edge ], [ %retval.0.i1926, %vcnl4000_write_data.exit20.thread ], [ 1, %vcnl4000_write_data.exit20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vcnl4200_measure(ptr nocapture noundef readonly %data, ptr noundef %chan, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vcnl4200_channel, ptr %chan, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %last_measurement = getelementptr inbounds %struct.vcnl4200_channel, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %last_measurement to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %last_measurement, align 8
  %sampling_rate = getelementptr inbounds %struct.vcnl4200_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sampling_rate, align 8
  %add = add i64 %3, %1
  %call = tail call i64 @ktime_get() #11
  %sub.i = sub i64 %add, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #11
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #15, !srcloc !117
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #15, !srcloc !118
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i.i)
  %cmp = icmp sgt i64 %cond213.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %cond213.i.i.i to i32
  %conv3 = add i32 %conv, 500
  tail call void @usleep_range_state(i32 noundef %conv, i32 noundef %conv3, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i64 @ktime_get() #11
  %7 = ptrtoint ptr %last_measurement to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call4, ptr %last_measurement, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chan, align 8
  %call7 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %9, i8 noundef zeroext %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call7, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -128) #11
  %4 = and i32 %call.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -119, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -128, i8 noundef zeroext 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4010_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -119, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %chip_spec = getelementptr inbounds %struct.vcnl4000_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_spec, align 8
  %set_power_state = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_power_state, align 4
  %call2 = tail call i32 %7(ptr noundef %3, i1 noundef zeroext false) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl4000_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %chip_spec = getelementptr inbounds %struct.vcnl4000_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chip_spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_spec, align 8
  %set_power_state = getelementptr inbounds %struct.vcnl4000_chip_spec, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_power_state, align 4
  %call2 = tail call i32 %7(ptr noundef %3, i1 noundef zeroext true) #11
  ret i32 %call2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !90, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_vcnl4000__291_1161_vcnl4000_driver_init6, !1, !"__initcall__kmod_vcnl4000__291_1161_vcnl4000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/vcnl4000.c", i32 1161, i32 1}
!2 = !{ptr @__exitcall_vcnl4000_driver_exit, !1, !"__exitcall_vcnl4000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/vcnl4000.c", i32 1163, i32 1}
!5 = !{ptr @__UNIQUE_ID_author293, !6, !"__UNIQUE_ID_author293", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/vcnl4000.c", i32 1164, i32 1}
!7 = !{ptr @__UNIQUE_ID_description294, !8, !"__UNIQUE_ID_description294", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/vcnl4000.c", i32 1165, i32 1}
!9 = !{ptr @__UNIQUE_ID_file295, !10, !"__UNIQUE_ID_file295", i1 false, i1 false}
!10 = !{!"../drivers/iio/light/vcnl4000.c", i32 1166, i32 1}
!11 = !{ptr @__UNIQUE_ID_license296, !10, !"__UNIQUE_ID_license296", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/vcnl4000.c", i32 1152, i32 13}
!14 = !{ptr @vcnl4000_driver, !15, !"vcnl4000_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/vcnl4000.c", i32 1150, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/vcnl4000.c", i32 1031, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vcnl4000_probe.__UNIQUE_ID_ddebug290, !17, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/light/vcnl4000.c", i32 1034, i32 45}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/light/vcnl4000.c", i32 1050, i32 4}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vcnl4000_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @vcnl4000_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/vcnl4000.c", i32 1059, i32 7}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/vcnl4000.c", i32 1062, i32 4}
!33 = !{ptr @vcnl4000_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vcnl4000_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/vcnl4000.c", i32 815, i32 11}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/vcnl4000.c", i32 826, i32 11}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/vcnl4000.c", i32 837, i32 11}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/vcnl4000.c", i32 848, i32 11}
!43 = !{ptr @vcnl4000_chip_spec_cfg, !44, !"vcnl4000_chip_spec_cfg", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/vcnl4000.c", i32 813, i32 40}
!45 = !{ptr @vcnl4000_channels, !46, !"vcnl4000_channels", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/vcnl4000.c", i32 762, i32 35}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/vcnl4000.c", i32 739, i32 11}
!49 = !{ptr @vcnl4000_ext_info, !50, !"vcnl4000_ext_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/vcnl4000.c", i32 737, i32 44}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/vcnl4000.c", i32 734, i32 22}
!53 = !{ptr @vcnl4000_info, !54, !"vcnl4000_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/vcnl4000.c", i32 799, i32 30}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/vcnl4000.c", i32 172, i32 4}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vcnl4000_init._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @vcnl4000_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/vcnl4000.c", i32 177, i32 4}
!63 = !{ptr @vcnl4000_init._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vcnl4000_init._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @vcnl4000_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/vcnl4000.c", i32 186, i32 2}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/vcnl4000.c", i32 311, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vcnl4000_measure._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @vcnl4000_measure._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @vcnl4010_channels, !74, !"vcnl4010_channels", i1 false, i1 false}
!74 = !{!"../drivers/iio/light/vcnl4000.c", i32 774, i32 35}
!75 = !{ptr @vcnl4000_event_spec, !76, !"vcnl4000_event_spec", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/vcnl4000.c", i32 746, i32 36}
!77 = !{ptr @vcnl4010_info, !78, !"vcnl4010_info", i1 false, i1 false}
!78 = !{!"../drivers/iio/light/vcnl4000.c", i32 803, i32 30}
!79 = !{ptr @vcnl4010_prox_sampling_frequency, !80, !"vcnl4010_prox_sampling_frequency", i1 false, i1 false}
!80 = !{!"../drivers/iio/light/vcnl4000.c", i32 93, i32 18}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/light/vcnl4000.c", i32 234, i32 2}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @vcnl4200_init.__UNIQUE_ID_ddebug289, !82, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!85 = !{ptr @vcnl4200_init.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/iio/light/vcnl4000.c", i32 256, i32 2}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vcnl4200_init.__key.30, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/iio/light/vcnl4000.c", i32 257, i32 2}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @vcnl4010_buffer_ops, !92, !"vcnl4010_buffer_ops", i1 false, i1 false}
!92 = !{!"../drivers/iio/light/vcnl4000.c", i32 983, i32 42}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/light/vcnl4000.c", i32 998, i32 49}
!95 = !{ptr @vcnl4010_trigger_ops, !96, !"vcnl4010_trigger_ops", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/vcnl4000.c", i32 988, i32 37}
!97 = !{ptr @vcnl_4000_of_match, !98, !"vcnl_4000_of_match", i1 false, i1 false}
!98 = !{!"../drivers/iio/light/vcnl4000.c", i32 1089, i32 34}
!99 = !{ptr @vcnl4000_pm_ops, !100, !"vcnl4000_pm_ops", i1 false, i1 false}
!100 = !{!"../drivers/iio/light/vcnl4000.c", i32 1143, i32 32}
!101 = !{ptr @vcnl4000_id, !102, !"vcnl4000_id", i1 false, i1 false}
!102 = !{!"../drivers/iio/light/vcnl4000.c", i32 144, i32 35}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148980543, i64 2148980548, i64 2148980561, i64 2148980605, i64 2148980639, i64 2148980660}
!113 = !{i8 0, i8 2}
!114 = !{i64 2148366585}
!115 = !{i64 852205, i64 852230, i64 852252, i64 852268, i64 852280, i64 852300, i64 852324, i64 852340, i64 852352}
!116 = !{i64 2148366773}
!117 = !{i64 728046, i64 728073, i64 728095, i64 728123}
!118 = !{i64 728454, i64 728481, i64 728514, i64 728535, i64 728562, i64 728588}
