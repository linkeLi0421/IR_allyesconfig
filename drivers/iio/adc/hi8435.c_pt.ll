; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/hi8435.c_pt.bc'
source_filename = "../drivers/iio/adc/hi8435.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hi8435_priv = type { ptr, %struct.mutex, i32, i32, [2 x i32], [2 x i32], [8 x i8], [3 x i8], [125 x i8] }

@__initcall__kmod_hi8435__234_545_hi8435_driver_init6 = internal global ptr @hi8435_driver_init, section ".initcall6.init", align 4
@hi8435_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @hi8435_id, ptr @hi8435_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi8435_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hi8435_driver_exit = internal global ptr @hi8435_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [35 x i8] c"hi8435.file=drivers/iio/adc/hi8435\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [19 x i8] c"hi8435.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [31 x i8] c"hi8435.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [46 x i8] c"hi8435.description=HI-8435 threshold detector\00", section ".modinfo", align 1
@hi8435_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"hi8435\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hi8435\00", [25 x i8] zeroinitializer }, align 32
@hi8435_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"holt,hi8435\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hi8435_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@hi8435_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @hi8435_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi8435_read_event_config, ptr @hi8435_write_event_config, ptr @hi8435_read_event_value, ptr @hi8435_write_event_value, ptr null, ptr null, ptr @hi8435_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hi8435_channels = internal constant { [33 x %struct.iio_chan_spec], [712 x i8] } { [33 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 17, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 18, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 19, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 20, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 21, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 22, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 23, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 24, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 25, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 26, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 27, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 28, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 29, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 30, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 31, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @hi8435_events, i32 3, ptr @hi8435_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 32, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [712 x i8] zeroinitializer }, align 32
@hi8435_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@hi8435_ext_info = internal constant { [3 x %struct.iio_chan_spec_ext_info], [36 x i8] } { [3 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.2, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @hi8435_sensing_mode to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.3, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @hi8435_sensing_mode to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sensing_mode\00", [19 x i8] zeroinitializer }, align 32
@hi8435_sensing_mode = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @hi8435_sensing_modes, i32 2, ptr @hi8435_set_sensing_mode, ptr @hi8435_get_sensing_mode }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sensing_mode_available\00", [41 x i8] zeroinitializer }, align 32
@hi8435_sensing_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.5], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GND-Open\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Supply-Open\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"hi8435_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 537, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"hi8435_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 531, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 539, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"hi8435_dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 525, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 486, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"hi8435_info\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 404, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"hi8435_channels\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 368, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"hi8435_events\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 284, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"hi8435_ext_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 351, i32 44 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 352, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"hi8435_sensing_mode\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 344, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 353, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"hi8435_sensing_modes\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 341, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 341, i32 54 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [28 x i8] c"../drivers/iio/adc/hi8435.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 342, i32 12 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_hi8435_driver_exit, ptr @__initcall__kmod_hi8435__234_545_hi8435_driver_init6, ptr @hi8435_driver_exit, ptr @hi8435_driver, ptr @hi8435_id, ptr @.str, ptr @hi8435_dt_ids, ptr @hi8435_probe.__key, ptr @.str.1, ptr @hi8435_info, ptr @hi8435_channels, ptr @hi8435_events, ptr @hi8435_ext_info, ptr @.str.2, ptr @hi8435_sensing_mode, ptr @.str.3, ptr @hi8435_sensing_modes, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_channels to i32), i32 2904, i32 3616, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_ext_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_sensing_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi8435_sensing_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @hi8435_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi8435_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @hi8435_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i87 = alloca %struct.spi_message, align 4
  %t.i.i88 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i75 = alloca %struct.spi_message, align 4
  %t.i.i76 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i61 = alloca %struct.spi_message, align 4
  %t.i.i62 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %call4 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef null, i32 noundef 3) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %reg_buffer.i = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %reg_buffer.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %reg_buffer.i, align 128
  %arrayidx3.i = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %arrayidx3.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %7 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg_buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then6.hi8435_writeb.exit_crit_edge

if.then6.hi8435_writeb.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi8435_writeb.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %hi8435_writeb.exit

hi8435_writeb.exit:                               ; preds = %if.end.i.i.i.i.i.i.i, %if.then6.hi8435_writeb.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  %21 = ptrtoint ptr %reg_buffer.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %reg_buffer.i, align 128
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx3.i, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i62) #5
  %25 = getelementptr inbounds i8, ptr %t.i.i62, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 92)
  %27 = ptrtoint ptr %t.i.i62 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %reg_buffer.i, ptr %t.i.i62, align 4
  %len1.i.i65 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i62, i32 0, i32 2
  %28 = ptrtoint ptr %len1.i.i65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %len1.i.i65, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i61) #5
  %29 = getelementptr inbounds i8, ptr %msg.i.i.i61, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i.i.i61, ptr %msg.i.i.i61, align 4
  %prev.i.i.i.i.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i61, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i61, ptr %prev.i.i.i.i.i.i.i66, align 4
  %resources.i.i.i.i.i.i67 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i61, i32 0, i32 10
  %33 = ptrtoint ptr %resources.i.i.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i.i.i67, ptr %resources.i.i.i.i.i.i67, align 4
  %prev.i2.i.i.i.i.i.i68 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i61, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i.i.i67, ptr %prev.i2.i.i.i.i.i.i68, align 4
  %transfer_list.i.i.i.i.i69 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i62, i32 0, i32 18
  %call.i.i.i.i.i.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i69, ptr noundef nonnull %msg.i.i.i61, ptr noundef nonnull %msg.i.i.i61) #5
  br i1 %call.i.i.i.i.i.i.i70, label %if.end.i.i.i.i.i.i.i72, label %hi8435_writeb.exit.hi8435_writeb.exit74_crit_edge

hi8435_writeb.exit.hi8435_writeb.exit74_crit_edge: ; preds = %hi8435_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi8435_writeb.exit74

if.end.i.i.i.i.i.i.i72:                           ; preds = %hi8435_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i.i.i.i69, ptr %prev.i.i.i.i.i.i.i66, align 4
  %36 = ptrtoint ptr %transfer_list.i.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i61, ptr %transfer_list.i.i.i.i.i69, align 4
  %prev3.i.i.i.i.i.i.i71 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i62, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i61, ptr %prev3.i.i.i.i.i.i.i71, align 4
  %38 = ptrtoint ptr %msg.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i.i.i.i69, ptr %msg.i.i.i61, align 4
  br label %hi8435_writeb.exit74

hi8435_writeb.exit74:                             ; preds = %if.end.i.i.i.i.i.i.i72, %hi8435_writeb.exit.hi8435_writeb.exit74_crit_edge
  %call.i.i.i73 = call i32 @spi_sync(ptr noundef %24, ptr noundef nonnull %msg.i.i.i61) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i61) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i62) #5
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1073740) #5
  tail call void @gpiod_set_value_cansleep(ptr noundef %call4, i32 noundef 1) #5
  br label %do.body

do.body:                                          ; preds = %if.else, %hi8435_writeb.exit74
  %lock = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hi8435_probe.__key) #5
  %call10 = call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %40 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call10, ptr %name11, align 8
  %41 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %42 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hi8435_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %43 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hi8435_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %44 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 33, ptr %num_channels, align 4
  %event_scan_mask = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %event_scan_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %event_scan_mask, align 32
  %threshold_lo = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %threshold_lo to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %threshold_lo, align 8
  %threshold_hi = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 5
  %arrayidx14 = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %arrayidx14, align 4
  %49 = ptrtoint ptr %threshold_hi to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %threshold_hi, align 16
  %reg_buffer.i77 = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %reg_buffer.i77 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 58, ptr %reg_buffer.i77, align 128
  %arrayidx5.i = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %arrayidx5.i, align 1
  %arrayidx10.i = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 7, i32 2
  %52 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 6, ptr %arrayidx10.i, align 2
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i76) #5
  %55 = getelementptr inbounds i8, ptr %t.i.i76, i32 4
  %56 = call ptr @memset(ptr %55, i32 0, i32 92)
  %57 = ptrtoint ptr %t.i.i76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %reg_buffer.i77, ptr %t.i.i76, align 4
  %len1.i.i78 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i76, i32 0, i32 2
  %58 = ptrtoint ptr %len1.i.i78 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %len1.i.i78, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i75) #5
  %59 = getelementptr inbounds i8, ptr %msg.i.i.i75, i32 8
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %msg.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %msg.i.i.i75, ptr %msg.i.i.i75, align 4
  %prev.i.i.i.i.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i75, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i75, ptr %prev.i.i.i.i.i.i.i79, align 4
  %resources.i.i.i.i.i.i80 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i75, i32 0, i32 10
  %63 = ptrtoint ptr %resources.i.i.i.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i.i.i.i80, ptr %resources.i.i.i.i.i.i80, align 4
  %prev.i2.i.i.i.i.i.i81 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i75, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i.i.i.i80, ptr %prev.i2.i.i.i.i.i.i81, align 4
  %transfer_list.i.i.i.i.i82 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i76, i32 0, i32 18
  %call.i.i.i.i.i.i.i83 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i82, ptr noundef nonnull %msg.i.i.i75, ptr noundef nonnull %msg.i.i.i75) #5
  br i1 %call.i.i.i.i.i.i.i83, label %if.end.i.i.i.i.i.i.i85, label %do.body.hi8435_writew.exit_crit_edge

do.body.hi8435_writew.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi8435_writew.exit

if.end.i.i.i.i.i.i.i85:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %prev.i.i.i.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %transfer_list.i.i.i.i.i82, ptr %prev.i.i.i.i.i.i.i79, align 4
  %66 = ptrtoint ptr %transfer_list.i.i.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i.i.i75, ptr %transfer_list.i.i.i.i.i82, align 4
  %prev3.i.i.i.i.i.i.i84 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i76, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i75, ptr %prev3.i.i.i.i.i.i.i84, align 4
  %68 = ptrtoint ptr %msg.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %transfer_list.i.i.i.i.i82, ptr %msg.i.i.i75, align 4
  br label %hi8435_writew.exit

hi8435_writew.exit:                               ; preds = %if.end.i.i.i.i.i.i.i85, %do.body.hi8435_writew.exit_crit_edge
  %call.i.i.i86 = call i32 @spi_sync(ptr noundef %54, ptr noundef nonnull %msg.i.i.i75) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i75) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i76) #5
  %69 = ptrtoint ptr %reg_buffer.i77 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 60, ptr %reg_buffer.i77, align 128
  %70 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %arrayidx5.i, align 1
  %71 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 6, ptr %arrayidx10.i, align 2
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i88) #5
  %74 = getelementptr inbounds i8, ptr %t.i.i88, i32 4
  %75 = call ptr @memset(ptr %74, i32 0, i32 92)
  %76 = ptrtoint ptr %t.i.i88 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %reg_buffer.i77, ptr %t.i.i88, align 4
  %len1.i.i92 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88, i32 0, i32 2
  %77 = ptrtoint ptr %len1.i.i92 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %len1.i.i92, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i87) #5
  %78 = getelementptr inbounds i8, ptr %msg.i.i.i87, i32 8
  %79 = call ptr @memset(ptr %78, i32 0, i32 40)
  %80 = ptrtoint ptr %msg.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %msg.i.i.i87, ptr %msg.i.i.i87, align 4
  %prev.i.i.i.i.i.i.i93 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i87, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i.i87, ptr %prev.i.i.i.i.i.i.i93, align 4
  %resources.i.i.i.i.i.i94 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i87, i32 0, i32 10
  %82 = ptrtoint ptr %resources.i.i.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %resources.i.i.i.i.i.i94, ptr %resources.i.i.i.i.i.i94, align 4
  %prev.i2.i.i.i.i.i.i95 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i87, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %prev.i2.i.i.i.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %resources.i.i.i.i.i.i94, ptr %prev.i2.i.i.i.i.i.i95, align 4
  %transfer_list.i.i.i.i.i96 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88, i32 0, i32 18
  %call.i.i.i.i.i.i.i97 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i96, ptr noundef nonnull %msg.i.i.i87, ptr noundef nonnull %msg.i.i.i87) #5
  br i1 %call.i.i.i.i.i.i.i97, label %if.end.i.i.i.i.i.i.i99, label %hi8435_writew.exit.hi8435_writew.exit101_crit_edge

hi8435_writew.exit.hi8435_writew.exit101_crit_edge: ; preds = %hi8435_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi8435_writew.exit101

if.end.i.i.i.i.i.i.i99:                           ; preds = %hi8435_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %prev.i.i.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %transfer_list.i.i.i.i.i96, ptr %prev.i.i.i.i.i.i.i93, align 4
  %85 = ptrtoint ptr %transfer_list.i.i.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i.i.i87, ptr %transfer_list.i.i.i.i.i96, align 4
  %prev3.i.i.i.i.i.i.i98 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i88, i32 0, i32 18, i32 1
  %86 = ptrtoint ptr %prev3.i.i.i.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i.i.i87, ptr %prev3.i.i.i.i.i.i.i98, align 4
  %87 = ptrtoint ptr %msg.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %transfer_list.i.i.i.i.i96, ptr %msg.i.i.i87, align 4
  br label %hi8435_writew.exit101

hi8435_writew.exit101:                            ; preds = %if.end.i.i.i.i.i.i.i99, %hi8435_writew.exit.hi8435_writew.exit101_crit_edge
  %call.i.i.i100 = call i32 @spi_sync(ptr noundef %73, ptr noundef nonnull %msg.i.i.i87) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i87) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i88) #5
  %call19 = call i32 @iio_triggered_event_setup(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @hi8435_trigger_handler) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %hi8435_writew.exit101.cleanup_crit_edge

hi8435_writew.exit101.cleanup_crit_edge:          ; preds = %hi8435_writew.exit101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %hi8435_writew.exit101
  %call.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @hi8435_triggered_event_cleanup, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end27, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void @iio_triggered_event_cleanup(ptr noundef nonnull %call) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %devm_add_action_or_reset.exit, %hi8435_writew.exit101.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %hi8435_writew.exit101.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_event_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %be_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %be_val.i) #5
  %4 = ptrtoint ptr %be_val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %be_val.i, align 4, !annotation !50
  %5 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -8, ptr %reg.addr.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %7, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %be_val.i, i32 noundef 4) #5
  %8 = ptrtoint ptr %be_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %be_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %be_val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.err_read_crit_edge, label %if.end

entry.err_read_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_read

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %event_prev_val.i = getelementptr inbounds %struct.hi8435_priv, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %event_prev_val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_prev_val.i, align 4
  %xor.i = xor i32 %13, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i, label %if.end.err_read_crit_edge, label %if.end.i

if.end.err_read_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_read

if.end.i:                                         ; preds = %if.end
  %event_scan_mask.i = getelementptr inbounds %struct.hi8435_priv, ptr %11, i32 0, i32 2
  %call1.i = call i32 @_find_next_bit_be(ptr noundef %event_scan_mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i)
  %cmp36.i = icmp ult i32 %call1.i, 32
  br i1 %cmp36.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.037.i = phi i32 [ %call19.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %if.end.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.037.i
  %and.i = and i32 %shl.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %and5.i = and i32 %shl.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %cond.i = select i1 %tobool6.not.i, i32 2, i32 1
  %conv.i = zext i32 %cond.i to i64
  %shl7.i = shl nuw nsw i64 %conv.i, 48
  %conv13.i = zext i32 %i.037.i to i64
  %or14.i = or i64 %shl7.i, %conv13.i
  %call15.i = call i64 @iio_get_time_ns(ptr noundef %1) #5
  %call16.i = call i32 @iio_push_event(ptr noundef %1, i64 noundef %or14.i, i64 noundef %call15.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %add.i = add nuw nsw i32 %i.037.i, 1
  %call19.i = call i32 @_find_next_bit_be(ptr noundef %event_scan_mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp ult i32 %call19.i, 32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %14 = ptrtoint ptr %event_prev_val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %event_prev_val.i, align 4
  br label %err_read

err_read:                                         ; preds = %for.end.i, %if.end.err_read_crit_edge, %entry.err_read_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %16) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi8435_triggered_event_cleanup(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_triggered_event_cleanup(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_read_raw(ptr nocapture noundef readonly %idev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %be_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %be_val.i) #5
  %2 = ptrtoint ptr %be_val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %be_val.i, align 4, !annotation !50
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -8, ptr %reg.addr.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %be_val.i, i32 noundef 4) #5
  %6 = ptrtoint ptr %be_val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %be_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %be_val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = lshr i32 %7, %9
  %11 = and i32 %10, 1
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hi8435_read_event_config(ptr nocapture noundef readonly %idev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %event_scan_mask = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %event_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_scan_mask, align 32
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = lshr i32 %3, %5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_write_event_config(ptr nocapture noundef readonly %idev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %be_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.else15, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %be_val.i) #5
  %2 = ptrtoint ptr %be_val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %be_val.i, align 4, !annotation !50
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -8, ptr %reg.addr.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %be_val.i, i32 noundef 4) #5
  %6 = ptrtoint ptr %be_val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %be_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %be_val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %event_prev_val = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %event_prev_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_prev_val, align 4
  %or = or i32 %11, %shl
  store i32 %or, ptr %event_prev_val, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %shl, -1
  %event_prev_val9 = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %event_prev_val9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_prev_val9, align 4
  %and10 = and i32 %13, %neg
  store i32 %and10, ptr %event_prev_val9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then4
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %shl13 = shl nuw i32 1, %15
  %event_scan_mask = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %event_scan_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_scan_mask, align 32
  %or14 = or i32 %17, %shl13
  store i32 %or14, ptr %event_scan_mask, align 32
  br label %cleanup

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %channel16 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %18 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel16, align 4
  %shl17 = shl nuw i32 1, %19
  %neg18 = xor i32 %shl17, -1
  %event_scan_mask19 = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %event_scan_mask19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_scan_mask19, align 32
  %and20 = and i32 %21, %neg18
  store i32 %and20, ptr %event_scan_mask19, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.end11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.else15 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_read_event_value(ptr nocapture noundef readonly %idev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  %reg.addr.i40 = alloca i8, align 1
  %be_val.i = alloca i16, align 2
  %reg.addr.i = alloca i8, align 1
  %psen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %psen) #5
  %2 = ptrtoint ptr %psen to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %psen, align 1, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -124, ptr %reg.addr.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %psen, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %psen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %psen, align 1
  %conv = zext i8 %7 to i32
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %div = sdiv i32 %9, 8
  %10 = shl nuw i32 1, %div
  %11 = and i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i40)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_val.i) #5
  %12 = ptrtoint ptr %be_val.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %be_val.i, align 2, !annotation !50
  %13 = select i1 %tobool5.not, i8 -70, i8 -68
  %14 = ptrtoint ptr %reg.addr.i40 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %reg.addr.i40, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %call.i41 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef nonnull %reg.addr.i40, i32 noundef 1, ptr noundef nonnull %be_val.i, i32 noundef 2) #5
  %17 = ptrtoint ptr %be_val.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %be_val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp8 = icmp slt i32 %call.i41, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %19 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %if.end11.cleanup_crit_edge [
    i32 2, label %if.then14
    i32 1, label %if.then21
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %and16 = and i16 %18, 255
  %20 = lshr i16 %18, 8
  %sub = sub nsw i16 %and16, %20
  %div1843 = sdiv i16 %sub, 2
  %div18.sext = sext i16 %div1843 to i32
  br label %cleanup.sink.split

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %conv22 = zext i16 %18 to i32
  %and23 = and i32 %conv22, 255
  %21 = lshr i32 %conv22, 8
  %add = add nuw nsw i32 %and23, %21
  %div2639 = lshr i32 %add, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then21, %if.then14
  %div18.sext.sink = phi i32 [ %div18.sext, %if.then14 ], [ %div2639, %if.then21 ]
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div18.sext.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i41, %if.end.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %psen) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_write_event_value(ptr nocapture noundef readonly %idev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %reg.addr.i187 = alloca i8, align 1
  %be_val.i188 = alloca i16, align 2
  %reg.addr.i185 = alloca i8, align 1
  %be_val.i = alloca i16, align 2
  %reg.addr.i = alloca i8, align 1
  %psen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %psen) #5
  %2 = ptrtoint ptr %psen to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %psen, align 1, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -124, ptr %reg.addr.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %psen, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %psen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %psen, align 1
  %conv = zext i8 %7 to i32
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %div = sdiv i32 %9, 8
  %10 = lshr i32 %conv, %div
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  %conv6 = select i1 %tobool5.not, i8 58, i8 60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i185)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_val.i) #5
  %12 = ptrtoint ptr %be_val.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %be_val.i, align 2, !annotation !50
  %13 = or i8 %conv6, -128
  %14 = ptrtoint ptr %reg.addr.i185 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %reg.addr.i185, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %call.i186 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef nonnull %reg.addr.i185, i32 noundef 1, ptr noundef nonnull %be_val.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i185)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %cmp8 = icmp slt i32 %call.i186, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %17 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %dir, label %if.end11.if.end87_crit_edge [
    i32 2, label %if.then14
    i32 1, label %if.then47
  ]

if.end11.if.end87_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then14:                                        ; preds = %if.end11
  %18 = add i32 %val, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %18)
  %19 = icmp ult i32 %18, -20
  br i1 %19, label %if.then14.cleanup_crit_edge, label %lor.lhs.false19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false19:                                  ; preds = %if.then14
  %add = add nuw nsw i32 %val, 2
  %arrayidx = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 5, i32 %11
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp20 = icmp ugt i32 %add, %21
  br i1 %cmp20, label %lor.lhs.false19.cleanup_crit_edge, label %if.end23

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19
  %arrayidx25 = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 4, i32 %11
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %val)
  %cmp26 = icmp eq i32 %23, %val
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %val, ptr %arrayidx25, align 4
  %sub = sub i32 %21, %val
  %rem = and i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool39.not = icmp eq i32 %rem, 0
  br i1 %tobool39.not, label %if.end29.if.end87_crit_edge, label %if.then40

if.end29.if.end87_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %21, -1
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec, ptr %arrayidx, align 4
  br label %if.end87

if.then47:                                        ; preds = %if.end11
  %26 = add i32 %val, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %26)
  %27 = icmp ult i32 %26, -20
  br i1 %27, label %if.then47.cleanup_crit_edge, label %lor.lhs.false53

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false53:                                  ; preds = %if.then47
  %arrayidx56 = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 4, i32 %11
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx56, align 4
  %add57 = add i32 %29, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %val)
  %cmp58 = icmp ugt i32 %add57, %val
  br i1 %cmp58, label %lor.lhs.false53.cleanup_crit_edge, label %if.end61

lor.lhs.false53.cleanup_crit_edge:                ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false53
  %arrayidx64 = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 5, i32 %11
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %val)
  %cmp65 = icmp eq i32 %31, %val
  br i1 %cmp65, label %if.end61.cleanup_crit_edge, label %if.end68

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %32 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %val, ptr %arrayidx64, align 4
  %sub78 = sub i32 %val, %29
  %rem79 = and i32 %sub78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem79)
  %tobool80.not = icmp eq i32 %rem79, 0
  br i1 %tobool80.not, label %if.end68.if.end87_crit_edge, label %if.then81

if.end68.if.end87_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then81:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %29, 1
  %33 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc, ptr %arrayidx56, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %if.end68.if.end87_crit_edge, %if.then40, %if.end29.if.end87_crit_edge, %if.end11.if.end87_crit_edge
  %lock = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i187)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_val.i188) #5
  %34 = ptrtoint ptr %be_val.i188 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %be_val.i188, align 2, !annotation !50
  %35 = ptrtoint ptr %reg.addr.i187 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %13, ptr %reg.addr.i187, align 1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 128
  %call.i189 = call i32 @spi_write_then_read(ptr noundef %37, ptr noundef nonnull %reg.addr.i187, i32 noundef 1, ptr noundef nonnull %be_val.i188, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_val.i188) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i187)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %cmp93 = icmp slt i32 %call.i189, 0
  br i1 %cmp93, label %if.end87.cleanup.sink.split_crit_edge, label %if.end97

if.end87.cleanup.sink.split_crit_edge:            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end97:                                         ; preds = %if.end87
  %arrayidx100 = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 5, i32 %11
  %38 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx100, align 4
  %arrayidx103 = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 4, i32 %11
  %40 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx103, align 4
  %sub104 = sub i32 %39, %41
  %sub104.tr = trunc i32 %sub104 to i16
  %conv108 = shl i16 %sub104.tr, 8
  %add115 = add i32 %41, %39
  %42 = trunc i32 %add115 to i16
  %conv117 = or i16 %conv108, %42
  %reg_buffer.i = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %reg_buffer.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv6, ptr %reg_buffer.i, align 128
  %44 = lshr i16 %conv117, 8
  %conv3.i = trunc i16 %44 to i8
  %arrayidx5.i = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv3.i, ptr %arrayidx5.i, align 1
  %conv8.i = trunc i32 %add115 to i8
  %arrayidx10.i = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv8.i, ptr %arrayidx10.i, align 2
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %49 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 92)
  %51 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg_buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %53 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 40)
  %55 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end97.hi8435_writew.exit_crit_edge

if.end97.hi8435_writew.exit_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi8435_writew.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %hi8435_writew.exit

hi8435_writew.exit:                               ; preds = %if.end.i.i.i.i.i.i.i, %if.end97.hi8435_writew.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %48, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %hi8435_writew.exit, %if.end87.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i.i.i, %hi8435_writew.exit ], [ %call.i189, %if.end87.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end61.cleanup_crit_edge, %lor.lhs.false53.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i186, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ -22, %lor.lhs.false53.cleanup_crit_edge ], [ -22, %if.then47.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %psen) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_debugfs_reg_access(ptr nocapture noundef readonly %idev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %reg.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !50
  %cmp.not = icmp eq ptr %readval, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %reg to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = or i8 %conv, -128
  %4 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %reg.addr.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %val, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %conv2 = zext i8 %8 to i32
  %9 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv2, ptr %readval, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %conv3 = trunc i32 %writeval to i8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %val, align 1
  %conv4 = trunc i32 %reg to i8
  %reg_buffer.i = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %reg_buffer.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %reg_buffer.i, align 128
  %arrayidx3.i = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %arrayidx3.i, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %15 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg_buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.else.hi8435_writeb.exit_crit_edge

if.else.hi8435_writeb.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi8435_writeb.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %hi8435_writeb.exit

hi8435_writeb.exit:                               ; preds = %if.end.i.i.i.i.i.i.i, %if.else.hi8435_writeb.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  br label %if.end

if.end:                                           ; preds = %hi8435_writeb.exit, %if.then
  %ret.0 = phi i32 [ %call.i, %if.then ], [ %call.i.i.i, %hi8435_writeb.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_set_sensing_mode(ptr nocapture noundef readonly %idev, ptr nocapture noundef readonly %chan, i32 noundef %mode) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %reg.addr.i = alloca i8, align 1
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg, align 1, !annotation !50
  %lock = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -124, ptr %reg.addr.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %reg, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %div = sdiv i32 %7, 8
  %shl = shl nuw i32 1, %div
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg, align 1
  %10 = trunc i32 %shl to i8
  %11 = xor i8 %10, -1
  %conv3 = and i8 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool.not = icmp eq i32 %mode, 0
  %conv9 = or i8 %9, %10
  %spec.select = select i1 %tobool.not, i8 %conv3, i8 %conv9
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %reg, align 1
  %reg_buffer.i = getelementptr inbounds %struct.hi8435_priv, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %reg_buffer.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %reg_buffer.i, align 128
  %arrayidx3.i = getelementptr %struct.hi8435_priv, ptr %1, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %arrayidx3.i, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %17 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg_buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.hi8435_writeb.exit_crit_edge

if.end.hi8435_writeb.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi8435_writeb.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %hi8435_writeb.exit

hi8435_writeb.exit:                               ; preds = %if.end.i.i.i.i.i.i.i, %if.end.hi8435_writeb.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %hi8435_writeb.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %hi8435_writeb.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi8435_get_sensing_mode(ptr nocapture noundef readonly %idev, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg, align 1, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -124, ptr %reg.addr.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %reg, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg, align 1
  %conv = zext i8 %7 to i32
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %div = sdiv i32 %9, 8
  %10 = lshr i32 %conv, %div
  %11 = and i32 %10, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_event_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_hi8435__234_545_hi8435_driver_init6, !1, !"__initcall__kmod_hi8435__234_545_hi8435_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/hi8435.c", i32 545, i32 1}
!2 = !{ptr @__exitcall_hi8435_driver_exit, !1, !"__exitcall_hi8435_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file235, !4, !"__UNIQUE_ID_file235", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/hi8435.c", i32 547, i32 1}
!5 = !{ptr @__UNIQUE_ID_license236, !4, !"__UNIQUE_ID_license236", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author237, !7, !"__UNIQUE_ID_author237", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/hi8435.c", i32 548, i32 1}
!8 = !{ptr @__UNIQUE_ID_description238, !9, !"__UNIQUE_ID_description238", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/hi8435.c", i32 549, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/hi8435.c", i32 539, i32 12}
!12 = !{ptr @hi8435_driver, !13, !"hi8435_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/hi8435.c", i32 537, i32 26}
!14 = !{ptr @hi8435_id, !15, !"hi8435_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/hi8435.c", i32 531, i32 35}
!16 = !{ptr @hi8435_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/hi8435.c", i32 486, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hi8435_info, !20, !"hi8435_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/hi8435.c", i32 404, i32 30}
!21 = !{ptr @hi8435_channels, !22, !"hi8435_channels", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/hi8435.c", i32 368, i32 35}
!23 = !{ptr @hi8435_events, !24, !"hi8435_events", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/hi8435.c", i32 284, i32 36}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/hi8435.c", i32 352, i32 2}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/hi8435.c", i32 353, i32 2}
!29 = !{ptr @hi8435_ext_info, !30, !"hi8435_ext_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/hi8435.c", i32 351, i32 44}
!31 = !{ptr @hi8435_sensing_mode, !32, !"hi8435_sensing_mode", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/hi8435.c", i32 344, i32 30}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/hi8435.c", i32 341, i32 54}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/hi8435.c", i32 342, i32 12}
!37 = !{ptr @hi8435_sensing_modes, !38, !"hi8435_sensing_modes", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/hi8435.c", i32 341, i32 27}
!39 = !{ptr @hi8435_dt_ids, !40, !"hi8435_dt_ids", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/hi8435.c", i32 525, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
