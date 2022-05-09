; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/maxim_thermocouple.c_pt.bc'
source_filename = "../drivers/iio/temperature/maxim_thermocouple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.maxim_thermocouple_chip = type { ptr, ptr, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.maxim_thermocouple_data = type { ptr, ptr, [120 x i8], [16 x i8], i8, [111 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_maxim_thermocouple__234_301_maxim_thermocouple_driver_init6 = internal global ptr @maxim_thermocouple_driver_init, section ".initcall6.init", align 4
@maxim_thermocouple_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @maxim_thermocouple_id, ptr @maxim_thermocouple_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @maxim_thermocouple_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_maxim_thermocouple_driver_exit = internal global ptr @maxim_thermocouple_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [69 x i8] c"maxim_thermocouple.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [58 x i8] c"maxim_thermocouple.description=Maxim thermocouple sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [67 x i8] c"maxim_thermocouple.file=drivers/iio/temperature/maxim_thermocouple\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [31 x i8] c"maxim_thermocouple.license=GPL\00", section ".modinfo", align 1
@maxim_thermocouple_id = internal constant { [10 x %struct.spi_device_id], [88 x i8] } { [10 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max6675\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max31855\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"max31855k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"max31855j\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"max31855n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"max31855s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"max31855t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"max31855e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"max31855r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim_thermocouple\00", [45 x i8] zeroinitializer }, align 32
@maxim_thermocouple_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6675\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855j\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31855r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@maxim_thermocouple_chips = internal constant { [2 x %struct.maxim_thermocouple_chip], [32 x i8] } { [2 x %struct.maxim_thermocouple_chip] [%struct.maxim_thermocouple_chip { ptr @max6675_channels, ptr null, i8 2, i8 2, i32 4 }, %struct.maxim_thermocouple_chip { ptr @max31855_channels, ptr @max31855_scan_masks, i8 3, i8 4, i32 65536 }], [32 x i8] zeroinitializer }, align 32
@maxim_thermocouple_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @maxim_thermocouple_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@maxim_tc_types = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"K?KJNSTER", [23 x i8] zeroinitializer }, align 32
@maxim_thermocouple_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"generic max31855 ID is deprecated\0Aplease use more specific part type\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxim_thermocouple_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/iio/temperature/maxim_thermocouple.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@maxim_thermocouple_probe._entry_ptr = internal global ptr @maxim_thermocouple_probe._entry, section ".printk_index", align 4
@max6675_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 67108869, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@max31855_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 2, i32 0, %struct.anon.71 { i8 115, i8 14, i8 16, i8 2, i8 0, i32 1 }, i32 67108869, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 21, i32 0, i32 1, %struct.anon.71 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@max31855_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 0], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 26]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"maxim_thermocouple_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 293, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"maxim_thermocouple_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 265, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 295, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"maxim_thermocouple_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 279, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"maxim_thermocouple_chips\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 106, i32 45 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"maxim_thermocouple_info\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 223, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"maxim_tc_types\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 37, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 260, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"max6675_channels\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 41, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"max31855_channels\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 59, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"max31855_scan_masks\00", align 1
@___asan_gen_.53 = private constant [48 x i8] c"../drivers/iio/temperature/maxim_thermocouple.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 94, i32 28 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_maxim_thermocouple_driver_exit, ptr @__initcall__kmod_maxim_thermocouple__234_301_maxim_thermocouple_driver_init6, ptr @maxim_thermocouple_driver_exit, ptr @maxim_thermocouple_probe._entry, ptr @maxim_thermocouple_probe._entry_ptr, ptr @maxim_thermocouple_driver, ptr @maxim_thermocouple_id, ptr @.str, ptr @maxim_thermocouple_of_match, ptr @maxim_thermocouple_chips, ptr @maxim_thermocouple_info, ptr @maxim_tc_types, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max6675_channels, ptr @max31855_channels, ptr @max31855_scan_masks], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_thermocouple_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_thermocouple_id to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_thermocouple_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_thermocouple_chips to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_thermocouple_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_tc_types to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxim_thermocouple_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6675_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31855_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31855_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @maxim_thermocouple_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @maxim_thermocouple_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @maxim_thermocouple_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @maxim_thermocouple_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maxim_thermocouple_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %cond = zext i1 %cmp to i32
  %arrayidx = getelementptr [2 x %struct.maxim_thermocouple_chip], ptr @maxim_thermocouple_chips, i32 0, i32 %cond
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @maxim_thermocouple_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %channels2 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %6 = ptrtoint ptr %channels2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %channels2, align 8
  %scan_masks = getelementptr [2 x %struct.maxim_thermocouple_chip], ptr @maxim_thermocouple_chips, i32 0, i32 %cond, i32 1
  %7 = ptrtoint ptr %scan_masks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_masks, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 6
  %9 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %available_scan_masks, align 4
  %num_channels = getelementptr [2 x %struct.maxim_thermocouple_chip], ptr @maxim_thermocouple_chips, i32 0, i32 %cond, i32 2
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %11 to i32
  %num_channels3 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %num_channels3, align 4
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call1, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spi, ptr %15, align 128
  %chip6 = getelementptr inbounds %struct.maxim_thermocouple_data, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %chip6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %chip6, align 4
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  %arrayidx8 = getelementptr [9 x i8], ptr @maxim_tc_types, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8, align 1
  %tc_type = getelementptr inbounds %struct.maxim_thermocouple_data, ptr %15, i32 0, i32 4
  %22 = ptrtoint ptr %tc_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tc_type, align 16
  %call10 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null, ptr noundef nonnull @maxim_thermocouple_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp15 = icmp eq i32 %24, 1
  br i1 %cmp15, label %do.end, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end13.if.end19_crit_edge
  %call21 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maxim_thermocouple_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %buffer = getelementptr inbounds %struct.maxim_thermocouple_data, ptr %3, i32 0, i32 3
  %chip = getelementptr inbounds %struct.maxim_thermocouple_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %read_size = getelementptr inbounds %struct.maxim_thermocouple_chip, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %read_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %read_size, align 1
  %conv = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %10 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %11 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_read.exit_crit_edge

entry.spi_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %entry.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.then, label %spi_read.exit.if.end_crit_edge

spi_read.exit.if.end_crit_edge:                   ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %spi_read.exit
  %call5 = call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scan_timestamp.i, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %26, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call5, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #5
  br label %if.end

if.end:                                           ; preds = %iio_push_to_buffers_with_timestamp.exit, %spi_read.exit.if.end_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %29) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maxim_thermocouple_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i30.i = alloca %struct.spi_message, align 4
  %t.i31.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf16.i = alloca i16, align 2
  %buf32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 26, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %chip.i = getelementptr inbounds %struct.maxim_thermocouple_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip.i, align 4
  %read_size.i = getelementptr inbounds %struct.maxim_thermocouple_chip, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %read_size.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %read_size.i, align 1
  %shift1.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %shift1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift1.i, align 1
  %conv2.i = zext i8 %8 to i32
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address.i, align 4
  %mul.i = shl i32 %10, 3
  %add.i = add i32 %mul.i, %conv2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf16.i) #5
  %11 = ptrtoint ptr %buf16.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %buf16.i, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf32.i) #5
  %12 = ptrtoint ptr %buf32.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %buf32.i, align 4, !annotation !48
  %13 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %6, label %if.end.maxim_thermocouple_read.exit.thread_crit_edge [
    i8 2, label %sw.bb.i
    i8 4, label %sw.bb4.i
  ]

if.end.maxim_thermocouple_read.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %maxim_thermocouple_read.exit.thread

sw.bb.i:                                          ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %16 = call ptr @memset(ptr %t.i.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf16.i, ptr %rx_buf.i.i, align 4
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
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.i.spi_read.exit.i_crit_edge

sw.bb.i.spi_read.exit.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb.i
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
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.i.spi_read.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %15, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  %29 = ptrtoint ptr %buf16.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %buf16.i, align 2
  %conv3.i = zext i16 %30 to i32
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i31.i) #5
  %33 = call ptr @memset(ptr %t.i31.i, i32 0, i32 96)
  %rx_buf.i32.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i31.i, i32 0, i32 1
  %34 = ptrtoint ptr %rx_buf.i32.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf32.i, ptr %rx_buf.i32.i, align 4
  %len1.i33.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i31.i, i32 0, i32 2
  %35 = ptrtoint ptr %len1.i33.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %len1.i33.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i30.i) #5
  %36 = getelementptr inbounds i8, ptr %msg.i.i30.i, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %38 = ptrtoint ptr %msg.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg.i.i30.i, ptr %msg.i.i30.i, align 4
  %prev.i.i.i.i.i.i34.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i30.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i30.i, ptr %prev.i.i.i.i.i.i34.i, align 4
  %resources.i.i.i.i.i35.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i30.i, i32 0, i32 10
  %40 = ptrtoint ptr %resources.i.i.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i.i.i35.i, ptr %resources.i.i.i.i.i35.i, align 4
  %prev.i2.i.i.i.i.i36.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i30.i, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %prev.i2.i.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i.i.i35.i, ptr %prev.i2.i.i.i.i.i36.i, align 4
  %transfer_list.i.i.i.i37.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i31.i, i32 0, i32 18
  %call.i.i.i.i.i.i38.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i37.i, ptr noundef nonnull %msg.i.i30.i, ptr noundef nonnull %msg.i.i30.i) #5
  br i1 %call.i.i.i.i.i.i38.i, label %if.end.i.i.i.i.i.i40.i, label %sw.bb4.i.spi_read.exit42.i_crit_edge

sw.bb4.i.spi_read.exit42.i_crit_edge:             ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_read.exit42.i

if.end.i.i.i.i.i.i40.i:                           ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i.i37.i, ptr %prev.i.i.i.i.i.i34.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i30.i, ptr %transfer_list.i.i.i.i37.i, align 4
  %prev3.i.i.i.i.i.i39.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i31.i, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i30.i, ptr %prev3.i.i.i.i.i.i39.i, align 4
  %45 = ptrtoint ptr %msg.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i.i37.i, ptr %msg.i.i30.i, align 4
  br label %spi_read.exit42.i

spi_read.exit42.i:                                ; preds = %if.end.i.i.i.i.i.i40.i, %sw.bb4.i.spi_read.exit42.i_crit_edge
  %call.i.i41.i = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %msg.i.i30.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i30.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i31.i) #5
  %46 = ptrtoint ptr %buf32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf32.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %spi_read.exit42.i, %spi_read.exit.i
  %storemerge.i = phi i32 [ %47, %spi_read.exit42.i ], [ %conv3.i, %spi_read.exit.i ]
  %ret.0.i = phi i32 [ %call.i.i41.i, %spi_read.exit42.i ], [ %call.i.i.i, %spi_read.exit.i ]
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.i.maxim_thermocouple_read.exit.thread_crit_edge

sw.epilog.i.maxim_thermocouple_read.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %maxim_thermocouple_read.exit.thread

if.end.i:                                         ; preds = %sw.epilog.i
  %49 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip.i, align 4
  %status_bit.i = getelementptr inbounds %struct.maxim_thermocouple_chip, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %status_bit.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status_bit.i, align 4
  %and.i = and i32 %52, %storemerge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %maxim_thermocouple_read.exit, label %if.end.i.maxim_thermocouple_read.exit.thread_crit_edge

if.end.i.maxim_thermocouple_read.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %maxim_thermocouple_read.exit.thread

maxim_thermocouple_read.exit.thread:              ; preds = %if.end.i.maxim_thermocouple_read.exit.thread_crit_edge, %sw.epilog.i.maxim_thermocouple_read.exit.thread_crit_edge, %if.end.maxim_thermocouple_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.maxim_thermocouple_read.exit.thread_crit_edge ], [ -22, %if.end.i.maxim_thermocouple_read.exit.thread_crit_edge ], [ %ret.0.i, %sw.epilog.i.maxim_thermocouple_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf32.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf16.i) #5
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

maxim_thermocouple_read.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = ashr i32 %storemerge.i, %add.i
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %realbits.i, align 1
  %55 = sub i8 32, %54
  %conv1.i.i = zext i8 %55 to i32
  %shl.i.i = shl i32 %shr.i, %conv1.i.i
  %shr.i.i = ashr i32 %shl.i.i, %conv1.i.i
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr.i.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf32.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf16.i) #5
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %57 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %58)
  %cond = icmp eq i32 %58, 21
  br i1 %cond, label %sw.bb7, label %sw.default

sw.bb7:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 62, ptr %val, align 4
  %60 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 500000, ptr %val2, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 250, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tc_type = getelementptr inbounds %struct.maxim_thermocouple_data, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %tc_type to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tc_type, align 16
  %conv = zext i8 %63 to i32
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.default, %sw.bb7, %maxim_thermocouple_read.exit, %maxim_thermocouple_read.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ 1, %maxim_thermocouple_read.exit ], [ -22, %entry.cleanup_crit_edge ], [ 12, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %sw.default ], [ %retval.0.i.ph, %maxim_thermocouple_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store8_noabort(i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_maxim_thermocouple__234_301_maxim_thermocouple_driver_init6, !1, !"__initcall__kmod_maxim_thermocouple__234_301_maxim_thermocouple_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_maxim_thermocouple_driver_exit, !1, !"__exitcall_maxim_thermocouple_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 295, i32 11}
!12 = !{ptr @maxim_thermocouple_driver, !13, !"maxim_thermocouple_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 293, i32 26}
!14 = !{ptr @maxim_thermocouple_id, !15, !"maxim_thermocouple_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 265, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 260, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @maxim_thermocouple_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @maxim_thermocouple_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @maxim_thermocouple_chips, !25, !"maxim_thermocouple_chips", i1 false, i1 false}
!25 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 106, i32 45}
!26 = !{ptr @max6675_channels, !27, !"max6675_channels", i1 false, i1 false}
!27 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 41, i32 35}
!28 = !{ptr @max31855_channels, !29, !"max31855_channels", i1 false, i1 false}
!29 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 59, i32 35}
!30 = !{ptr @max31855_scan_masks, !31, !"max31855_scan_masks", i1 false, i1 false}
!31 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 94, i32 28}
!32 = !{ptr @maxim_thermocouple_info, !33, !"maxim_thermocouple_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 223, i32 30}
!34 = !{ptr @maxim_tc_types, !35, !"maxim_tc_types", i1 false, i1 false}
!35 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 37, i32 19}
!36 = !{ptr @maxim_thermocouple_of_match, !37, !"maxim_thermocouple_of_match", i1 false, i1 false}
!37 = !{!"../drivers/iio/temperature/maxim_thermocouple.c", i32 279, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{!"auto-init"}
