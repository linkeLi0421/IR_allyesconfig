; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/adis16480.c_pt.bc'
source_filename = "../drivers/iio/imu/adis16480.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.adis16480_chip_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, %struct.adis_data }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.adis16480 = type { ptr, [124 x i8], %struct.adis, ptr, i32, i32, [4 x i8], [20 x i16], [72 x i8] }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_low_rate_allow = internal constant [25 x i8] c"adis16480.low_rate_allow\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@low_rate_allow = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_low_rate_allow = internal constant %struct.kernel_param { ptr @__param_str_low_rate_allow, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @low_rate_allow } }, section "__param", align 4
@__UNIQUE_ID_low_rate_allowtype234 = internal constant [39 x i8] c"adis16480.parmtype=low_rate_allow:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_low_rate_allow235 = internal constant [125 x i8] c"adis16480.parm=low_rate_allow:Allow IMU rates below the minimum advisable when external clk is used in PPS mode (default: N)\00", section ".modinfo", align 1
@__initcall__kmod_adis16480__281_1536_adis16480_driver_init6 = internal global ptr @adis16480_driver_init, section ".initcall6.init", align 4
@adis16480_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adis16480_ids, ptr @adis16480_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adis16480_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adis16480_driver_exit = internal global ptr @adis16480_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author282 = internal constant [54 x i8] c"adis16480.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [58 x i8] c"adis16480.description=Analog Devices ADIS16480 IMU driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [41 x i8] c"adis16480.file=drivers/iio/imu/adis16480\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [25 x i8] c"adis16480.license=GPL v2\00", section ".modinfo", align 1
@adis16480_ids = internal constant { [12 x %struct.spi_device_id], [112 x i8] } { [12 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adis16375\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adis16480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adis16485\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adis16488\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"adis16490\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"adis16495-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"adis16495-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"adis16495-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"adis16497-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"adis16497-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"adis16497-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.spi_device_id zeroinitializer], [112 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16480\00", [22 x i8] zeroinitializer }, align 32
@adis16480_of_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16375\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16485\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16488\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16490\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16495-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16495-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16495-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16497-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16497-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16497-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@adis16480_chip_info = internal constant { [11 x %struct.adis16480_chip_info], [332 x i8] } { [11 x %struct.adis16480_chip_info] [%struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1499922432, i32 5, i32 146841432, i32 18, i32 5650, i32 2460000, i32 2048, ptr @adis16480_def_filter_freqs, i8 0, i8 1, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16375, i32 2, i32 386, i8 0, ptr @adis16485_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 0, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 12, ptr @adis16480_channels, i32 1474560000, i32 8, i32 83535152, i32 10, i32 5650, i32 2460000, i32 2048, ptr @adis16480_def_filter_freqs, i8 0, i8 1, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16480, i32 2, i32 386, i8 0, ptr @adis16480_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 0, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1474560000, i32 8, i32 133656243, i32 5, i32 5650, i32 2460000, i32 2048, ptr @adis16480_def_filter_freqs, i8 0, i8 1, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16485, i32 2, i32 386, i8 0, ptr @adis16485_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 0, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 12, ptr @adis16480_channels, i32 1474560000, i32 8, i32 150363274, i32 18, i32 5650, i32 2460000, i32 2048, ptr @adis16480_def_filter_freqs, i8 0, i8 1, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16488, i32 2, i32 386, i8 0, ptr @adis16485_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 0, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1310720000, i32 2, i32 106924995, i32 8, i32 14285, i32 4250000, i32 4250, ptr @adis16495_def_filter_freqs, i8 1, i8 0, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16490, i32 2, i32 386, i8 0, ptr @adis16495_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 0, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1310720000, i32 2, i32 213849990, i32 8, i32 12500, i32 4250000, i32 4250, ptr @adis16495_def_filter_freqs, i8 1, i8 0, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16495, i32 2, i32 386, i8 0, ptr @adis16495_1_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 40, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1179648000, i32 8, i32 213849990, i32 8, i32 12500, i32 4250000, i32 4250, ptr @adis16495_def_filter_freqs, i8 1, i8 0, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16495, i32 2, i32 386, i8 0, ptr @adis16495_1_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 40, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1310720000, i32 35, i32 213849990, i32 8, i32 12500, i32 4250000, i32 4250, ptr @adis16495_def_filter_freqs, i8 1, i8 0, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16495, i32 2, i32 386, i8 0, ptr @adis16495_1_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 40, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1310720000, i32 2, i32 213849990, i32 40, i32 12500, i32 4250000, i32 4250, ptr @adis16495_def_filter_freqs, i8 1, i8 0, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16497, i32 2, i32 386, i8 0, ptr @adis16495_1_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 40, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1179648000, i32 8, i32 213849990, i32 40, i32 12500, i32 4250000, i32 4250, ptr @adis16495_def_filter_freqs, i8 1, i8 0, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16497, i32 2, i32 386, i8 0, ptr @adis16495_1_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 40, i32 0, i32 6000000 } }, %struct.adis16480_chip_info { i32 8, ptr @adis16485_channels, i32 1310720000, i32 35, i32 213849990, i32 40, i32 12500, i32 4250000, i32 4250, ptr @adis16495_def_filter_freqs, i8 1, i8 0, %struct.adis_data { i32 5, i32 5, i32 0, i32 386, i32 0, i32 10, i32 126, i32 16497, i32 2, i32 386, i8 0, ptr @adis16495_1_timeouts, ptr @adis16480_status_error_msgs, i32 3903, ptr @adis16480_enable_irq, i8 0, i8 1, i32 124, i32 40, i32 0, i32 6000000 } }], [332 x i8] zeroinitializer }, align 32
@adis16480_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adis16480_read_raw, ptr null, ptr null, ptr @adis16480_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adis_update_scan_mode, ptr @adis_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adis16485_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 16, i32 0, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 20, i32 1, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 24, i32 2, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 28, i32 3, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 32, i32 4, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 36, i32 5, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 14, i32 10, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [160 x i8] zeroinitializer }, align 32
@adis16480_def_filter_freqs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 310, i32 55, i32 275, i32 63], [16 x i8] zeroinitializer }, align 32
@adis16485_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 560, i16 120, i16 12 }, [26 x i8] zeroinitializer }, align 32
@adis16480_status_error_msgs = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr null, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [48 x i8] zeroinitializer }, align 32
@adis16480_channels = internal constant { [12 x %struct.iio_chan_spec], [256 x i8] } { [12 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 16, i32 0, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 20, i32 1, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 24, i32 2, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 28, i32 3, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 32, i32 4, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 36, i32 5, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 1073, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 40, i32 6, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1057, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 42, i32 7, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1057, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 44, i32 8, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1057, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 46, i32 9, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 14, i32 10, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 11, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [256 x i8] zeroinitializer }, align 32
@adis16480_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 560, i16 560, i16 12 }, [26 x i8] zeroinitializer }, align 32
@adis16495_def_filter_freqs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 300, i32 100, i32 300, i32 100], [16 x i8] zeroinitializer }, align 32
@adis16495_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 170, i16 130, i16 40 }, [26 x i8] zeroinitializer }, align 32
@adis16495_1_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 250, i16 210, i16 20 }, [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"X-axis gyroscope self-test failure\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Y-axis gyroscope self-test failure\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Z-axis gyroscope self-test failure\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"X-axis accelerometer self-test failure\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Y-axis accelerometer self-test failure\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Z-axis accelerometer self-test failure\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"X-axis magnetometer self-test failure\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Y-axis magnetometer self-test failure\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Z-axis magnetometer self-test failure\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Barometer self-test failure\00", [36 x i8] zeroinitializer }, align 32
@adis16480_calibbias_regs = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 272, i32 276, i32 280, i32 284, i32 288, i32 292, i32 296, i32 298, i32 300, i32 320], [56 x i8] zeroinitializer }, align 32
@adis16480_calibscale_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 260, i32 262, i32 264, i32 266, i32 268, i32 270], [40 x i8] zeroinitializer }, align 32
@ad16480_filter_data = internal constant { [9 x [2 x i32]], [56 x i8] } { [9 x [2 x i32]] [[2 x i32] [i32 406, i32 0], [2 x i32] [i32 406, i32 3], [2 x i32] [i32 406, i32 6], [2 x i32] [i32 406, i32 9], [2 x i32] [i32 406, i32 12], [2 x i32] [i32 408, i32 0], [2 x i32] [i32 408, i32 3], [2 x i32] [i32 408, i32 6], [2 x i32] [i32 408, i32 9]], [56 x i8] zeroinitializer }, align 32
@adis16480_stop_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 1222, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not power down device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adis16480_stop_device\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/imu/adis16480.c\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adis16480_stop_device._entry_ptr = internal global ptr @adis16480_stop_device._entry, section ".printk_index", align 4
@adis16480_config_irq_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.13, i32 1253, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not find IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adis16480_config_irq_pin\00", [39 x i8] zeroinitializer }, align 32
@adis16480_config_irq_pin._entry_ptr = internal global ptr @adis16480_config_irq_pin._entry, section ".printk_index", align 4
@adis16480_config_irq_pin._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.13, i32 1291, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid interrupt type 0x%x specified\0A\00", [57 x i8] zeroinitializer }, align 32
@adis16480_config_irq_pin._entry_ptr.20 = internal global ptr @adis16480_config_irq_pin._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIO1\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIO2\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIO3\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIO4\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@adis16480_get_ext_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.13, i32 1372, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get ext clk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adis16480_get_ext_clocks\00", [39 x i8] zeroinitializer }, align 32
@adis16480_get_ext_clocks._entry_ptr = internal global ptr @adis16480_get_ext_clocks._entry, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pps\00", [28 x i8] zeroinitializer }, align 32
@adis16480_get_ext_clocks._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.13, i32 1384, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@adis16480_get_ext_clocks._entry_ptr.30 = internal global ptr @adis16480_get_ext_clocks._entry.29, section ".printk_index", align 4
@adis16480_ext_clk_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.13, i32 1342, ptr @.str.33, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DIO%x pin supports only one function at a time\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adis16480_ext_clk_config\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adis16480_ext_clk_config._entry_ptr = internal global ptr @adis16480_ext_clk_config._entry, section ".printk_index", align 4
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,ext-clk-pin\00", [16 x i8] zeroinitializer }, align 32
@adis16480_of_get_ext_clk_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.13, i32 1316, ptr @.str.37, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"clk input line not specified, using DIO2\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adis16480_of_get_ext_clk_pin\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adis16480_of_get_ext_clk_pin._entry_ptr = internal global ptr @adis16480_of_get_ext_clk_pin._entry, section ".printk_index", align 4
@adis16480_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.13, i32 1133, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to change device page: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adis16480_trigger_handler\00", [38 x i8] zeroinitializer }, align 32
@adis16480_trigger_handler._entry_ptr = internal global ptr @adis16480_trigger_handler._entry, section ".printk_index", align 4
@adis16480_trigger_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.13, i32 1143, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read data: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@adis16480_trigger_handler._entry_ptr.42 = internal global ptr @adis16480_trigger_handler._entry.40, section ".printk_index", align 4
@adis16480_trigger_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.13, i32 1171, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid burst data\0A\00", [44 x i8] zeroinitializer }, align 32
@adis16480_trigger_handler._entry_ptr.45 = internal global ptr @adis16480_trigger_handler._entry.43, section ".printk_index", align 4
@adis16480_trigger_handler._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.13, i32 1178, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid crc\0A\00", [19 x i8] zeroinitializer }, align 32
@adis16480_trigger_handler._entry_ptr.48 = internal global ptr @adis16480_trigger_handler._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"firmware_revision\00", [46 x i8] zeroinitializer }, align 32
@adis16480_firmware_revision_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @adis16480_show_firmware_revision, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware_date\00", [18 x i8] zeroinitializer }, align 32
@adis16480_firmware_date_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @adis16480_show_firmware_date, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@adis16480_serial_number_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16480_serial_number_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@adis16480_product_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16480_product_id_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flash_count\00", [20 x i8] zeroinitializer }, align 32
@adis16480_flash_count_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16480_flash_count_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x.%x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%.2x-%.2x-%.4x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%.4llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 10]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 10, i64 12]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 9, i64 17]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 17]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 10, i64 12]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 17]
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"low_rate_allow\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 182, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"adis16480_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1528, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"adis16480_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1496, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1530, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"adis16480_of_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1512, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"adis16480_chip_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 926, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"adis16480_info\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1207, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"adis16485_channels\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 822, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"adis16480_def_filter_freqs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 554, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"adis16485_timeouts\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 902, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"adis16480_status_error_msgs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 858, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"adis16480_channels\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 807, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"adis16480_timeouts\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 908, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"adis16495_def_filter_freqs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 561, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"adis16495_timeouts\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 914, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"adis16495_1_timeouts\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 920, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 859, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 860, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 861, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 862, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 863, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 864, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 865, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 866, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 867, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 868, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant [25 x i8] c"adis16480_calibbias_regs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 450, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"adis16480_calibscale_regs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 463, i32 27 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c"ad16480_filter_data\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 568, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1221, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1253, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1290, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 176, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 177, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 178, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 179, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1365, i32 49 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1372, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1377, i32 50 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1384, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1340, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1306, i32 39 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1315, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1133, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1143, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1171, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1178, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 303, i32 29 }
@___asan_gen_.272 = private unnamed_addr constant [33 x i8] c"adis16480_firmware_revision_fops\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 207, i32 37 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 305, i32 29 }
@___asan_gen_.278 = private unnamed_addr constant [29 x i8] c"adis16480_firmware_date_fops\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 237, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 307, i32 29 }
@___asan_gen_.284 = private unnamed_addr constant [29 x i8] c"adis16480_serial_number_fops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 309, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant [26 x i8] c"adis16480_product_id_fops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 311, i32 29 }
@___asan_gen_.296 = private unnamed_addr constant [27 x i8] c"adis16480_flash_count_fops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 202, i32 36 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 231, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 259, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 277, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [31 x i8] c"../drivers/iio/imu/adis16480.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 295, i32 1 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__UNIQUE_ID_low_rate_allow235, ptr @__UNIQUE_ID_low_rate_allowtype234, ptr @__exitcall_adis16480_driver_exit, ptr @__initcall__kmod_adis16480__281_1536_adis16480_driver_init6, ptr @__param_low_rate_allow, ptr @adis16480_config_irq_pin._entry, ptr @adis16480_config_irq_pin._entry.18, ptr @adis16480_config_irq_pin._entry_ptr, ptr @adis16480_config_irq_pin._entry_ptr.20, ptr @adis16480_driver_exit, ptr @adis16480_ext_clk_config._entry, ptr @adis16480_ext_clk_config._entry_ptr, ptr @adis16480_get_ext_clocks._entry, ptr @adis16480_get_ext_clocks._entry.29, ptr @adis16480_get_ext_clocks._entry_ptr, ptr @adis16480_get_ext_clocks._entry_ptr.30, ptr @adis16480_of_get_ext_clk_pin._entry, ptr @adis16480_of_get_ext_clk_pin._entry_ptr, ptr @adis16480_stop_device._entry, ptr @adis16480_stop_device._entry_ptr, ptr @adis16480_trigger_handler._entry, ptr @adis16480_trigger_handler._entry.40, ptr @adis16480_trigger_handler._entry.43, ptr @adis16480_trigger_handler._entry.46, ptr @adis16480_trigger_handler._entry_ptr, ptr @adis16480_trigger_handler._entry_ptr.42, ptr @adis16480_trigger_handler._entry_ptr.45, ptr @adis16480_trigger_handler._entry_ptr.48, ptr @low_rate_allow, ptr @adis16480_driver, ptr @adis16480_ids, ptr @.str, ptr @adis16480_of_match, ptr @adis16480_chip_info, ptr @adis16480_info, ptr @adis16485_channels, ptr @adis16480_def_filter_freqs, ptr @adis16485_timeouts, ptr @adis16480_status_error_msgs, ptr @adis16480_channels, ptr @adis16480_timeouts, ptr @adis16495_def_filter_freqs, ptr @adis16495_timeouts, ptr @adis16495_1_timeouts, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @adis16480_calibbias_regs, ptr @adis16480_calibscale_regs, ptr @ad16480_filter_data, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @adis16480_firmware_revision_fops, ptr @.str.50, ptr @adis16480_firmware_date_fops, ptr @.str.51, ptr @adis16480_serial_number_fops, ptr @.str.52, ptr @adis16480_product_id_fops, ptr @.str.53, ptr @adis16480_flash_count_fops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_rate_allow to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_ids to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_of_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_chip_info to i32), i32 1364, i32 1696, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16485_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_def_filter_freqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16485_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_status_error_msgs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_channels to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16495_def_filter_freqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16495_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16495_1_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_calibbias_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_calibscale_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad16480_filter_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_stop_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_config_irq_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_config_irq_pin._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_get_ext_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_get_ext_clocks._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_ext_clk_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_of_get_ext_clk_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_trigger_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_trigger_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_trigger_handler._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_firmware_revision_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_firmware_date_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_serial_number_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_product_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16480_flash_count_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adis16480_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adis16480_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adis16480_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #9
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #9
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [11 x %struct.adis16480_chip_info], ptr @adis16480_chip_info, i32 0, i32 %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %1, align 128
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #9
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %name4, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %channels = getelementptr inbounds %struct.adis16480_chip_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels, align 4
  %channels6 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %10 = ptrtoint ptr %channels6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %channels6, align 8
  %11 = load ptr, ptr %1, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %num_channels8 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_channels8, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @adis16480_info, ptr %info, align 8
  %16 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call1, align 8
  %17 = load ptr, ptr %1, align 128
  %adis_data = getelementptr inbounds %struct.adis16480_chip_info, ptr %17, i32 0, i32 12
  %adis = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  %call10 = tail call i32 @adis_init(ptr noundef %adis, ptr noundef nonnull %call1, ptr noundef %spi, ptr noundef %adis_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end.cleanup81_crit_edge

if.end.cleanup81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end12:                                         ; preds = %if.end
  %call14 = tail call i32 @__adis_initial_startup(ptr noundef %adis) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup81_crit_edge

if.end12.cleanup81_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end17:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %has_sleep_cnt = getelementptr inbounds %struct.adis16480_chip_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %has_sleep_cnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_sleep_cnt, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %if.end17.if.end26_crit_edge, label %if.then20

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.end17
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adis16480_stop, ptr noundef nonnull %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then20.if.end26_crit_edge, label %if.then.i

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then.i:                                        ; preds = %if.then20
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 8
  %adis.i.i = getelementptr inbounds %struct.adis16480, ptr %23, i32 0, i32 2
  %state_lock.i.i.i.i = getelementptr inbounds %struct.adis16480, ptr %23, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i.i, i32 noundef 0) #9
  %call.i.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i.i, i32 noundef 400, i32 noundef 512, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i163 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i163, label %if.then.i.cleanup81_crit_edge, label %do.end.i.i

if.then.i.cleanup81_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %call.i.i.i.i) #12
  br label %cleanup81

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %26 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adis, align 128
  %irq1.i = getelementptr inbounds %struct.spi_device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq1.i, align 4
  %call.i147 = tail call ptr @irq_get_irq_data(i32 noundef %29) #9
  %tobool.not.i148 = icmp eq ptr %call.i147, null
  br i1 %tobool.not.i148, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end26
  %call20.i = tail call i32 @of_irq_get_byname(ptr noundef %25, ptr noundef nonnull @.str.21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp sgt i32 %call20.i, 0
  br i1 %cmp21.i, label %for.body.preheader.i.do.end42.i_crit_edge, label %for.inc.i

for.body.preheader.i.do.end42.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adis, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.16, i32 noundef 0) #12
  br label %cleanup81

for.inc.i:                                        ; preds = %for.body.preheader.i
  %call20.1.i = tail call i32 @of_irq_get_byname(ptr noundef %25, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1.i)
  %cmp21.1.i = icmp sgt i32 %call20.1.i, 0
  br i1 %cmp21.1.i, label %for.inc.i.do.end42.i_crit_edge, label %for.inc.1.i

for.inc.i.do.end42.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call20.2.i = tail call i32 @of_irq_get_byname(ptr noundef %25, ptr noundef nonnull @.str.23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2.i)
  %cmp21.2.i = icmp sgt i32 %call20.2.i, 0
  br i1 %cmp21.2.i, label %for.inc.1.i.do.end42.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.end42.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.3.i = tail call i32 @of_irq_get_byname(ptr noundef %25, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.3.i)
  %cmp21.3.i = icmp sgt i32 %call20.3.i, 0
  %spec.select.i = select i1 %cmp21.3.i, i32 3, i32 0
  br label %do.end42.i

do.end42.i:                                       ; preds = %for.inc.2.i, %for.inc.1.i.do.end42.i_crit_edge, %for.inc.i.do.end42.i_crit_edge, %for.body.preheader.i.do.end42.i_crit_edge
  %pin.0.i = phi i32 [ 0, %for.body.preheader.i.do.end42.i_crit_edge ], [ 1, %for.inc.i.do.end42.i_crit_edge ], [ 2, %for.inc.1.i.do.end42.i_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i147, i32 0, i32 3
  %32 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and.i.i = and i32 %35, 15
  %36 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %do.end95.i [
    i32 1, label %do.end65.i
    i32 2, label %do.end42.i.adis16480_config_irq_pin.exit_crit_edge
  ]

do.end42.i.adis16480_config_irq_pin.exit_crit_edge: ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_config_irq_pin.exit

do.end65.i:                                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = or i32 %pin.0.i, 4
  br label %adis16480_config_irq_pin.exit

do.end95.i:                                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adis, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.19, i32 noundef %and.i.i) #12
  br label %cleanup81

adis16480_config_irq_pin.exit:                    ; preds = %do.end65.i, %do.end42.i.adis16480_config_irq_pin.exit_crit_edge
  %val.0.i = phi i32 [ %37, %do.end65.i ], [ %pin.0.i, %do.end42.i.adis16480_config_irq_pin.exit_crit_edge ]
  %conv.i.i = and i32 %val.0.i, 65535
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #9
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef 390, i32 noundef %conv.i.i, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool29.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool29.not, label %if.end31, label %adis16480_config_irq_pin.exit.cleanup81_crit_edge

adis16480_config_irq_pin.exit.cleanup81_crit_edge: ; preds = %adis16480_config_irq_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end31:                                         ; preds = %adis16480_config_irq_pin.exit
  %clk_mode.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %clk_mode.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %clk_mode.i, align 4
  %41 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adis, align 128
  %call.i150 = tail call ptr @devm_clk_get(ptr noundef %42, ptr noundef nonnull @.str.25) #9
  %ext_clk.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i150, ptr %ext_clk.i, align 128
  %tobool.not.i.i = icmp eq ptr %call.i150, null
  %cmp.i.i = icmp ugt ptr %call.i150, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.i, label %if.end31.if.end35.sink.split_crit_edge

if.end31.if.end35.sink.split_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.sink.split

if.end.i:                                         ; preds = %if.end31
  %cmp.not.i = icmp eq ptr %call.i150, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not.i, label %if.end12.i, label %if.end.i.adis16480_get_ext_clocks.exit_crit_edge

if.end.i.adis16480_get_ext_clocks.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_get_ext_clocks.exit

if.end12.i:                                       ; preds = %if.end.i
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 128
  %has_pps_clk_mode.i = getelementptr inbounds %struct.adis16480_chip_info, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %has_pps_clk_mode.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_pps_clk_mode.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i153 = icmp eq i8 %47, 0
  br i1 %tobool.not.i153, label %if.end12.i.if.end35_crit_edge, label %if.then13.i

if.end12.i.if.end35_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then13.i:                                      ; preds = %if.end12.i
  %48 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adis, align 128
  %call17.i = tail call ptr @devm_clk_get(ptr noundef %49, ptr noundef nonnull @.str.28) #9
  %50 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call17.i, ptr %ext_clk.i, align 128
  %tobool.not.i52.i = icmp eq ptr %call17.i, null
  %cmp.i53.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i54.i = or i1 %tobool.not.i52.i, %cmp.i53.i
  br i1 %spec.select.i54.i, label %if.end23.i, label %if.then13.i.if.end35.sink.split_crit_edge

if.then13.i.if.end35.sink.split_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.sink.split

if.end23.i:                                       ; preds = %if.then13.i
  %cmp26.not.i = icmp eq ptr %call17.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp26.not.i, label %if.end23.i.if.end35_crit_edge, label %if.end23.i.adis16480_get_ext_clocks.exit_crit_edge

if.end23.i.adis16480_get_ext_clocks.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_get_ext_clocks.exit

if.end23.i.if.end35_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

adis16480_get_ext_clocks.exit:                    ; preds = %if.end23.i.adis16480_get_ext_clocks.exit_crit_edge, %if.end.i.adis16480_get_ext_clocks.exit_crit_edge
  %51 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adis, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.26) #12
  %53 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.0.i154.in = load ptr, ptr %ext_clk.i, align 128
  %retval.0.i154 = ptrtoint ptr %retval.0.i154.in to i32
  %tobool33.not = icmp eq ptr %retval.0.i154.in, null
  br i1 %tobool33.not, label %adis16480_get_ext_clocks.exit.if.end35_crit_edge, label %adis16480_get_ext_clocks.exit.cleanup81_crit_edge

adis16480_get_ext_clocks.exit.cleanup81_crit_edge: ; preds = %adis16480_get_ext_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

adis16480_get_ext_clocks.exit.if.end35_crit_edge: ; preds = %adis16480_get_ext_clocks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35.sink.split:                              ; preds = %if.then13.i.if.end35.sink.split_crit_edge, %if.end31.if.end35.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end31.if.end35.sink.split_crit_edge ], [ 1, %if.then13.i.if.end35.sink.split_crit_edge ]
  %54 = ptrtoint ptr %clk_mode.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %clk_mode.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %adis16480_get_ext_clocks.exit.if.end35_crit_edge, %if.end23.i.if.end35_crit_edge, %if.end12.i.if.end35_crit_edge
  %55 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ext_clk.i, align 128
  %tobool.not.i155 = icmp eq ptr %56, null
  %cmp.i = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %spec.select.i156 = or i1 %tobool.not.i155, %cmp.i
  br i1 %spec.select.i156, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end35
  %57 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node, align 8
  %call40 = tail call fastcc i32 @adis16480_ext_clk_config(ptr noundef %1, ptr noundef %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then37.cleanup81_crit_edge

if.then37.cleanup81_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end43:                                         ; preds = %if.then37
  %59 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ext_clk.i, align 128
  %call.i157 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adis16480_clk_disable, ptr noundef %60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.end49, label %devm_add_action_or_reset.exit161

devm_add_action_or_reset.exit161:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %60) #9
  tail call void @clk_unprepare(ptr noundef %60) #9
  br label %cleanup81

if.end49:                                         ; preds = %if.end43
  %61 = ptrtoint ptr %ext_clk.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ext_clk.i, align 128
  %call51 = tail call i32 @clk_get_rate(ptr noundef %62) #9
  %clk_freq = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 5
  %mul = mul i32 %call51, 1000
  %63 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul, ptr %clk_freq, align 8
  %64 = ptrtoint ptr %clk_mode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clk_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp53 = icmp eq i32 %65, 1
  br i1 %cmp53, label %if.then54, label %if.end49.if.end66_crit_edge

if.end49.if.end66_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then54:                                        ; preds = %if.end49
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 128
  %int_clk = getelementptr inbounds %struct.adis16480_chip_info, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %int_clk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %int_clk, align 4
  %div = udiv i32 %69, %mul
  %conv.i = and i32 %div, 65535
  %call.i162 = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef 400, i32 noundef %conv.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool59.not = icmp eq i32 %call.i162, 0
  br i1 %tobool59.not, label %if.then54.if.end66_crit_edge, label %if.then54.cleanup81_crit_edge

if.then54.cleanup81_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.then54.if.end66_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 128
  %int_clk64 = getelementptr inbounds %struct.adis16480_chip_info, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %int_clk64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %int_clk64, align 4
  %clk_freq65 = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %clk_freq65 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %clk_freq65, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then54.if.end66_crit_edge, %if.end49.if.end66_crit_edge
  %burst_len = getelementptr inbounds %struct.adis16480_chip_info, ptr %17, i32 0, i32 12, i32 18
  %75 = ptrtoint ptr %burst_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %burst_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool67.not = icmp eq i32 %76, 0
  %spec.select = select i1 %tobool67.not, ptr null, ptr @adis16480_trigger_handler
  %call71 = tail call i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %adis, ptr noundef nonnull %call1, ptr noundef %spec.select) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end66.cleanup81_crit_edge

if.end66.cleanup81_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end74:                                         ; preds = %if.end66
  %call76 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup81_crit_edge

if.end74.cleanup81_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @adis16480_debugfs_init(ptr noundef nonnull %call1)
  br label %cleanup81

cleanup81:                                        ; preds = %if.end79, %if.end74.cleanup81_crit_edge, %if.end66.cleanup81_crit_edge, %if.then54.cleanup81_crit_edge, %devm_add_action_or_reset.exit161, %if.then37.cleanup81_crit_edge, %adis16480_get_ext_clocks.exit.cleanup81_crit_edge, %adis16480_config_irq_pin.exit.cleanup81_crit_edge, %do.end95.i, %do.end.i, %do.end.i.i, %if.then.i.cleanup81_crit_edge, %if.end12.cleanup81_crit_edge, %if.end.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.1 = phi i32 [ 0, %if.end79 ], [ %call.i162, %if.then54.cleanup81_crit_edge ], [ -12, %entry.cleanup81_crit_edge ], [ %call10, %if.end.cleanup81_crit_edge ], [ %call14, %if.end12.cleanup81_crit_edge ], [ %call.i.i.i, %adis16480_config_irq_pin.exit.cleanup81_crit_edge ], [ %retval.0.i154, %adis16480_get_ext_clocks.exit.cleanup81_crit_edge ], [ %call40, %if.then37.cleanup81_crit_edge ], [ %call.i157, %devm_add_action_or_reset.exit161 ], [ %call71, %if.end66.cleanup81_crit_edge ], [ %call76, %if.end74.cleanup81_crit_edge ], [ %call.i, %do.end.i.i ], [ %call.i, %if.then.i.cleanup81_crit_edge ], [ -22, %do.end95.i ], [ -22, %do.end.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_initial_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adis16480_stop(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %adis.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #9
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 400, i32 noundef 512, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %entry.adis16480_stop_device.exit_crit_edge, label %do.end.i

entry.adis16480_stop_device.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_stop_device.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %call.i.i.i) #12
  br label %adis16480_stop_device.exit

adis16480_stop_device.exit:                       ; preds = %do.end.i, %entry.adis16480_stop_device.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adis16480_ext_clk_config(ptr noundef %st, ptr noundef %of_node) unnamed_addr #2 align 64 {
entry:
  %ext_clk_pin.i = alloca ptr, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16480, ptr %st, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !181
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %st, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 390, ptr noundef nonnull %tmp.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_clk_pin.i) #9
  %3 = ptrtoint ptr %ext_clk_pin.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ext_clk_pin.i, align 4, !annotation !181
  %call.i = call i32 @of_property_read_string(ptr noundef %of_node, ptr noundef nonnull @.str.34, ptr noundef nonnull %ext_clk_pin.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end
  %4 = ptrtoint ptr %ext_clk_pin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_clk_pin.i, align 4
  %call1.i = call i32 @strcasecmp(ptr noundef %5, ptr noundef nonnull @.str.21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %for.cond.preheader.i.adis16480_of_get_ext_clk_pin.exit_crit_edge, label %for.inc.i

for.cond.preheader.i.adis16480_of_get_ext_clk_pin.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_of_get_ext_clk_pin.exit

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %call1.1.i = call i32 @strcasecmp(ptr noundef %5, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.inc.i.adis16480_of_get_ext_clk_pin.exit_crit_edge, label %for.inc.1.i

for.inc.i.adis16480_of_get_ext_clk_pin.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_of_get_ext_clk_pin.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %call1.2.i = call i32 @strcasecmp(ptr noundef %5, ptr noundef nonnull @.str.23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.adis16480_of_get_ext_clk_pin.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.adis16480_of_get_ext_clk_pin.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_of_get_ext_clk_pin.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call1.3.i = call i32 @strcasecmp(ptr noundef %5, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i)
  %cmp2.3.i = icmp eq i32 %call1.3.i, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.adis16480_of_get_ext_clk_pin.exit_crit_edge, label %for.inc.2.i.do.end.i_crit_edge

for.inc.2.i.do.end.i_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.2.i.adis16480_of_get_ext_clk_pin.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adis16480_of_get_ext_clk_pin.exit

do.end.i:                                         ; preds = %for.inc.2.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %6 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adis, align 128
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.35) #12
  br label %adis16480_of_get_ext_clk_pin.exit

adis16480_of_get_ext_clk_pin.exit:                ; preds = %do.end.i, %for.inc.2.i.adis16480_of_get_ext_clk_pin.exit_crit_edge, %for.inc.1.i.adis16480_of_get_ext_clk_pin.exit_crit_edge, %for.inc.i.adis16480_of_get_ext_clk_pin.exit_crit_edge, %for.cond.preheader.i.adis16480_of_get_ext_clk_pin.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %do.end.i ], [ 0, %for.cond.preheader.i.adis16480_of_get_ext_clk_pin.exit_crit_edge ], [ 1, %for.inc.i.adis16480_of_get_ext_clk_pin.exit_crit_edge ], [ 2, %for.inc.1.i.adis16480_of_get_ext_clk_pin.exit_crit_edge ], [ 3, %for.inc.2.i.adis16480_of_get_ext_clk_pin.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_clk_pin.i) #9
  %8 = and i32 %2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %8)
  %cmp = icmp eq i32 %retval.0.i, %8
  br i1 %cmp, label %do.end23, label %adis16480_of_get_ext_clk_pin.exit.do.end75_crit_edge

adis16480_of_get_ext_clk_pin.exit.do.end75_crit_edge: ; preds = %adis16480_of_get_ext_clk_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

do.end23:                                         ; preds = %adis16480_of_get_ext_clk_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adis, align 128
  %add = add nuw nsw i32 %retval.0.i, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.31, i32 noundef %add) #12
  br label %do.end75

do.end75:                                         ; preds = %do.end23, %adis16480_of_get_ext_clk_pin.exit.do.end75_crit_edge
  %shl77 = shl nuw nsw i32 %retval.0.i, 4
  %or = or i32 %shl77, 128
  %11 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st, align 128
  %has_pps_clk_mode = getelementptr inbounds %struct.adis16480_chip_info, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %has_pps_clk_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_pps_clk_mode, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool79.not = icmp eq i8 %14, 0
  br i1 %tobool79.not, label %do.end75.if.end109_crit_edge, label %do.end102

do.end75.if.end109_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.end102:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  %clk_mode = getelementptr inbounds %struct.adis16480, ptr %st, i32 0, i32 4
  %15 = ptrtoint ptr %clk_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_mode, align 4
  %shl105 = shl i32 %16, 8
  %and106 = and i32 %shl105, 256
  %or107 = or i32 %and106, %or
  br label %if.end109

if.end109:                                        ; preds = %do.end102, %do.end75.if.end109_crit_edge
  %mask.0 = phi i32 [ 65103, %do.end102 ], [ 65359, %do.end75.if.end109_crit_edge ]
  %mode.0 = phi i32 [ %or107, %do.end102 ], [ %or, %do.end75.if.end109_crit_edge ]
  %and111 = and i32 %mask.0, %2
  %mode.0.masked = and i32 %mode.0, 65535
  %conv.i5 = or i32 %mode.0.masked, %and111
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i7 = call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef 390, i32 noundef %conv.i5, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %tobool118.not = icmp eq i32 %call.i.i7, 0
  br i1 %tobool118.not, label %if.end120, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end120:                                        ; preds = %if.end109
  %ext_clk = getelementptr inbounds %struct.adis16480, ptr %st, i32 0, i32 3
  %17 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ext_clk, align 128
  %call.i8 = call i32 @clk_prepare(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i9, label %if.end.i, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end120
  %call1.i10 = call i32 @clk_enable(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool2.not.i = icmp eq i32 %call1.i10, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call.i.i, %adis_read_reg_16.exit ], [ %call.i.i7, %if.end109.cleanup_crit_edge ], [ %call.i8, %if.end120.cleanup_crit_edge ], [ %call1.i10, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adis16480_clk_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #9
  tail call void @clk_unprepare(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %crc_buf.i = alloca [15 x i16], align 2
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %adis2 = getelementptr inbounds %struct.adis16480, ptr %3, i32 0, i32 2
  %state_lock.i = getelementptr inbounds %struct.adis16480, ptr %3, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #9
  %current_page = getelementptr inbounds %struct.adis16480, ptr %3, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %tx = getelementptr inbounds %struct.adis16480, ptr %3, i32 0, i32 2, i32 11
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %tx, align 128
  %arrayidx4 = getelementptr %struct.adis16480, ptr %3, i32 0, i32 2, i32 11, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx4, align 1
  %8 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adis2, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #9
  %10 = getelementptr inbounds i8, ptr %t.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #9
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.spi_write.exit_crit_edge

if.then.spi_write.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.then.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %9, ptr noundef nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adis2, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.38, i32 noundef %call.i.i) #12
  call void @mutex_unlock(ptr noundef %state_lock.i) #9
  br label %irq_done

if.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %current_page, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %27 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adis2, align 128
  %msg = getelementptr inbounds %struct.adis16480, ptr %3, i32 0, i32 2, i32 5
  %call12 = call i32 @spi_sync(ptr noundef %28, ptr noundef %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adis2, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.41, i32 noundef %call12) #12
  call void @mutex_unlock(ptr noundef %state_lock.i) #9
  br label %irq_done

if.end20:                                         ; preds = %if.end10
  call void @mutex_unlock(ptr noundef %state_lock.i) #9
  %buffer21 = getelementptr inbounds %struct.adis16480, ptr %3, i32 0, i32 2, i32 9
  %31 = ptrtoint ptr %buffer21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer21, align 16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %34)
  %cmp25 = icmp eq i16 %34, -23131
  br i1 %cmp25, label %land.lhs.true, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end20
  %arrayidx24 = getelementptr i16, ptr %32, i32 1
  %35 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %36)
  %cmp28.not = icmp eq i16 %36, -23131
  br i1 %cmp28.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end20.for.inc_crit_edge
  %arrayidx23.1 = getelementptr i16, ptr %32, i32 1
  %37 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx23.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %38)
  %cmp25.1 = icmp eq i16 %38, -23131
  br i1 %cmp25.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx24.1 = getelementptr i16, ptr %32, i32 2
  %39 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx24.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %40)
  %cmp28.not.1 = icmp eq i16 %40, -23131
  br i1 %cmp28.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.end42_crit_edge

land.lhs.true.1.if.end42_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx23.2 = getelementptr i16, ptr %32, i32 2
  %41 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx23.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %42)
  %cmp25.2 = icmp eq i16 %42, -23131
  br i1 %cmp25.2, label %land.lhs.true.2, label %for.inc.1.do.end39_crit_edge

for.inc.1.do.end39_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx24.2 = getelementptr i16, ptr %32, i32 3
  %43 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx24.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %44)
  %cmp28.not.2 = icmp eq i16 %44, -23131
  br i1 %cmp28.not.2, label %land.lhs.true.2.do.end39_crit_edge, label %land.lhs.true.2.if.end42_crit_edge

land.lhs.true.2.if.end42_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true.2.do.end39_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

do.end39:                                         ; preds = %land.lhs.true.2.do.end39_crit_edge, %for.inc.1.do.end39_crit_edge
  %45 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adis2, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.44) #12
  br label %irq_done

if.end42:                                         ; preds = %land.lhs.true.2.if.end42_crit_edge, %land.lhs.true.1.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge
  %offset.2.ph = phi i32 [ 1, %land.lhs.true.if.end42_crit_edge ], [ 2, %land.lhs.true.1.if.end42_crit_edge ], [ 3, %land.lhs.true.2.if.end42_crit_edge ]
  %add43 = or i32 %offset.2.ph, 16
  %arrayidx44 = getelementptr i16, ptr %32, i32 %add43
  %47 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %48 to i32
  %shl = shl nuw i32 %conv45, 16
  %add46 = add nuw nsw i32 %offset.2.ph, 15
  %arrayidx47 = getelementptr i16, ptr %32, i32 %add46
  %49 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx47, align 2
  %conv48 = zext i16 %50 to i32
  %or = or i32 %shl, %conv48
  %arrayidx49 = getelementptr i16, ptr %32, i32 %offset.2.ph
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %crc_buf.i) #9
  %51 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 1
  %52 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 2
  %53 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 3
  %54 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 4
  %55 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 5
  %56 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 6
  %57 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 7
  %58 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 8
  %59 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 9
  %60 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 10
  %61 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 11
  %62 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 12
  %63 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 13
  %64 = getelementptr inbounds [15 x i16], ptr %crc_buf.i, i32 0, i32 14
  %65 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx49, align 2
  %67 = call i16 @llvm.bswap.i16(i16 %66) #9
  %68 = ptrtoint ptr %crc_buf.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %crc_buf.i, align 2
  %arrayidx.1.i = getelementptr i16, ptr %arrayidx49, i32 1
  %69 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.1.i, align 2
  %71 = call i16 @llvm.bswap.i16(i16 %70) #9
  %72 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %51, align 2
  %arrayidx.2.i = getelementptr i16, ptr %arrayidx49, i32 2
  %73 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.2.i, align 2
  %75 = call i16 @llvm.bswap.i16(i16 %74) #9
  %76 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %52, align 2
  %arrayidx.3.i = getelementptr i16, ptr %arrayidx49, i32 3
  %77 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.3.i, align 2
  %79 = call i16 @llvm.bswap.i16(i16 %78) #9
  %80 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %53, align 2
  %arrayidx.4.i = getelementptr i16, ptr %arrayidx49, i32 4
  %81 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.4.i, align 2
  %83 = call i16 @llvm.bswap.i16(i16 %82) #9
  %84 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %54, align 2
  %arrayidx.5.i = getelementptr i16, ptr %arrayidx49, i32 5
  %85 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.5.i, align 2
  %87 = call i16 @llvm.bswap.i16(i16 %86) #9
  %88 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %55, align 2
  %arrayidx.6.i = getelementptr i16, ptr %arrayidx49, i32 6
  %89 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.6.i, align 2
  %91 = call i16 @llvm.bswap.i16(i16 %90) #9
  %92 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %56, align 2
  %arrayidx.7.i = getelementptr i16, ptr %arrayidx49, i32 7
  %93 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.7.i, align 2
  %95 = call i16 @llvm.bswap.i16(i16 %94) #9
  %96 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %57, align 2
  %arrayidx.8.i = getelementptr i16, ptr %arrayidx49, i32 8
  %97 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.8.i, align 2
  %99 = call i16 @llvm.bswap.i16(i16 %98) #9
  %100 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %58, align 2
  %arrayidx.9.i = getelementptr i16, ptr %arrayidx49, i32 9
  %101 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx.9.i, align 2
  %103 = call i16 @llvm.bswap.i16(i16 %102) #9
  %104 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %59, align 2
  %arrayidx.10.i = getelementptr i16, ptr %arrayidx49, i32 10
  %105 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx.10.i, align 2
  %107 = call i16 @llvm.bswap.i16(i16 %106) #9
  %108 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %60, align 2
  %arrayidx.11.i = getelementptr i16, ptr %arrayidx49, i32 11
  %109 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx.11.i, align 2
  %111 = call i16 @llvm.bswap.i16(i16 %110) #9
  %112 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %61, align 2
  %arrayidx.12.i = getelementptr i16, ptr %arrayidx49, i32 12
  %113 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx.12.i, align 2
  %115 = call i16 @llvm.bswap.i16(i16 %114) #9
  %116 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %62, align 2
  %arrayidx.13.i = getelementptr i16, ptr %arrayidx49, i32 13
  %117 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx.13.i, align 2
  %119 = call i16 @llvm.bswap.i16(i16 %118) #9
  %120 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %63, align 2
  %arrayidx.14.i = getelementptr i16, ptr %arrayidx49, i32 14
  %121 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx.14.i, align 2
  %123 = call i16 @llvm.bswap.i16(i16 %122) #9
  %124 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %64, align 2
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %crc_buf.i, i32 noundef 30) #13
  %xor.i = xor i32 %call.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %xor.i)
  %cmp4.i = icmp eq i32 %or, %xor.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %crc_buf.i) #9
  br i1 %cmp4.i, label %if.end58, label %do.end55

do.end55:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %adis2, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.47) #12
  br label %irq_done

if.end58:                                         ; preds = %if.end42
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %127 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %129 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %masklength, align 8
  %call59 = call i32 @_find_next_bit_be(ptr noundef %128, i32 noundef %130, i32 noundef 0) #9
  %131 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call59, i32 %132)
  %cmp62167 = icmp ult i32 %call59, %132
  br i1 %cmp62167, label %for.body64.lr.ph, label %if.end58.for.end88_crit_edge

if.end58.for.end88_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end88

for.body64.lr.ph:                                 ; preds = %if.end58
  %add65 = add nuw nsw i32 %offset.2.ph, 1
  br label %for.body64

for.body64:                                       ; preds = %for.inc83.for.body64_crit_edge, %for.body64.lr.ph
  %i.0170 = phi i32 [ 0, %for.body64.lr.ph ], [ %i.1, %for.inc83.for.body64_crit_edge ]
  %bit.0168 = phi i32 [ %call59, %for.body64.lr.ph ], [ %call87, %for.inc83.for.body64_crit_edge ]
  %133 = zext i32 %bit.0168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %bit.0168, label %for.body64.for.inc83_crit_edge [
    i32 10, label %for.body64.for.inc83.sink.split_crit_edge
    i32 0, label %for.body64.sw.bb69_crit_edge
    i32 1, label %for.body64.sw.bb69_crit_edge175
    i32 2, label %for.body64.sw.bb69_crit_edge176
    i32 3, label %for.body64.sw.bb69_crit_edge177
    i32 4, label %for.body64.sw.bb69_crit_edge178
    i32 5, label %for.body64.sw.bb69_crit_edge179
  ]

for.body64.sw.bb69_crit_edge179:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

for.body64.sw.bb69_crit_edge178:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

for.body64.sw.bb69_crit_edge177:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

for.body64.sw.bb69_crit_edge176:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

for.body64.sw.bb69_crit_edge175:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

for.body64.sw.bb69_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb69

for.body64.for.inc83.sink.split_crit_edge:        ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83.sink.split

for.body64.for.inc83_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

sw.bb69:                                          ; preds = %for.body64.sw.bb69_crit_edge, %for.body64.sw.bb69_crit_edge175, %for.body64.sw.bb69_crit_edge176, %for.body64.sw.bb69_crit_edge177, %for.body64.sw.bb69_crit_edge178, %for.body64.sw.bb69_crit_edge179
  %mul = shl nuw nsw i32 %bit.0168, 1
  %add70 = add i32 %mul, %offset.2.ph
  %add71 = add i32 %add70, 3
  %arrayidx72 = getelementptr i16, ptr %32, i32 %add71
  %134 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx72, align 2
  %inc74 = add i32 %i.0170, 1
  %arrayidx75 = getelementptr %struct.adis16480, ptr %3, i32 0, i32 7, i32 %i.0170
  %136 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %arrayidx75, align 2
  %add78 = add i32 %add70, 2
  br label %for.inc83.sink.split

for.inc83.sink.split:                             ; preds = %sw.bb69, %for.body64.for.inc83.sink.split_crit_edge
  %add78.pn = phi i32 [ %add78, %sw.bb69 ], [ %add65, %for.body64.for.inc83.sink.split_crit_edge ]
  %.sink174 = phi i32 [ 2, %sw.bb69 ], [ 1, %for.body64.for.inc83.sink.split_crit_edge ]
  %i.0170.sink = phi i32 [ %inc74, %sw.bb69 ], [ %i.0170, %for.body64.for.inc83.sink.split_crit_edge ]
  %arrayidx66.sink = getelementptr i16, ptr %32, i32 %add78.pn
  %137 = ptrtoint ptr %arrayidx66.sink to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx66.sink, align 2
  %inc67 = add i32 %i.0170, %.sink174
  %arrayidx68 = getelementptr %struct.adis16480, ptr %3, i32 0, i32 7, i32 %i.0170.sink
  %139 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %arrayidx68, align 2
  br label %for.inc83

for.inc83:                                        ; preds = %for.inc83.sink.split, %for.body64.for.inc83_crit_edge
  %i.1 = phi i32 [ %i.0170, %for.body64.for.inc83_crit_edge ], [ %inc67, %for.inc83.sink.split ]
  %140 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %active_scan_mask, align 4
  %142 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %masklength, align 8
  %add86 = add nuw i32 %bit.0168, 1
  %call87 = call i32 @_find_next_bit_be(ptr noundef %141, i32 noundef %143, i32 noundef %add86) #9
  %144 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %masklength, align 8
  %cmp62 = icmp ult i32 %call87, %145
  br i1 %cmp62, label %for.inc83.for.body64_crit_edge, label %for.inc83.for.end88_crit_edge

for.inc83.for.end88_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end88

for.inc83.for.body64_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body64

for.end88:                                        ; preds = %for.inc83.for.end88_crit_edge, %if.end58.for.end88_crit_edge
  %data89 = getelementptr inbounds %struct.adis16480, ptr %3, i32 0, i32 7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %146 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %scan_timestamp.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i = icmp eq i8 %147, 0
  br i1 %tobool.not.i, label %for.end88.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end88.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #11
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %148 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %150 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %151, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data89, i32 %sub.i
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %149, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end88.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i161 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data89) #9
  br label %irq_done

irq_done:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end55, %do.end39, %do.end17, %do.end
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %153 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %154) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_adis_setup_buffer_and_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adis16480_debugfs_init(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call ptr @iio_get_debugfs_dentry(ptr noundef %indio_dev) #9
  %call2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.49, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16480_firmware_revision_fops) #9
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.50, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16480_firmware_date_fops) #9
  %call4 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.51, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16480_serial_number_fops) #9
  %call5 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16480_product_id_fops) #9
  %call6 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16480_flash_count_fops) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_enable_irq(ptr noundef %adis, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !181
  %call.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 390, ptr noundef nonnull %tmp.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %__adis_read_reg_16.exit

__adis_read_reg_16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %3 = and i32 %2, 65527
  %shl = select i1 %enable, i32 8, i32 0
  %or = or i32 %3, %shl
  %call.i33 = call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef 390, i32 noundef %or, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call.i33, %if.end ], [ %call.i, %__adis_read_reg_16.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_read_reg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i36.i = alloca i32, align 4
  %tmp.i.i352 = alloca i32, align 4
  %tmp.i.i340 = alloca i32, align 4
  %tmp.i.i329 = alloca i32, align 4
  %tmp.i24.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %if.end202
    i32 5, label %sw.bb206
    i32 4, label %sw.bb208
    i32 10, label %sw.bb210
    i32 12, label %sw.bb212
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @adis_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 0, ptr noundef %val) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %4, label %sw.bb2.cleanup_crit_edge [
    i32 4, label %sw.bb3
    i32 3, label %sw.bb5
    i32 5, label %sw.bb8
    i32 9, label %sw.bb9
    i32 17, label %sw.bb13
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %gyro_max_scale = getelementptr inbounds %struct.adis16480_chip_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %gyro_max_scale to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gyro_max_scale, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  %11 = load ptr, ptr %1, align 128
  %gyro_max_val = getelementptr inbounds %struct.adis16480_chip_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %gyro_max_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gyro_max_val, align 4
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val2, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %accel_max_scale = getelementptr inbounds %struct.adis16480_chip_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %accel_max_scale to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %accel_max_scale, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  %20 = load ptr, ptr %1, align 128
  %accel_max_val = getelementptr inbounds %struct.adis16480_chip_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %accel_max_val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %accel_max_val, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 100, ptr %val2, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %temp_scale = getelementptr inbounds %struct.adis16480_chip_info, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %temp_scale to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temp_scale, align 4
  %div = udiv i32 %29, 1000
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div, ptr %val, align 4
  %31 = load ptr, ptr %1, align 128
  %temp_scale12 = getelementptr inbounds %struct.adis16480_chip_info, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %temp_scale12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_scale12, align 4
  %rem = urem i32 %33, 1000
  %mul = mul nuw nsw i32 %rem, 1000
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 131, ptr %val, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2147418112, ptr %val2, align 4
  br label %cleanup

if.end202:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  %temp_scale16 = getelementptr inbounds %struct.adis16480_chip_info, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %temp_scale16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %temp_scale16, align 4
  %div17326 = lshr i32 %40, 1
  %add = add nuw i32 %div17326, 25000000
  %div196 = udiv i32 %add, %40
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div196, ptr %val, align 4
  br label %cleanup

sw.bb206:                                         ; preds = %entry
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %42 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_index.i, align 4
  %arrayidx.i = getelementptr [10 x i32], ptr @adis16480_calibbias_regs, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %46 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %47, label %sw.bb206.cleanup_crit_edge [
    i32 5, label %sw.bb206.sw.bb.i_crit_edge
    i32 17, label %sw.bb206.sw.bb.i_crit_edge371
    i32 4, label %sw.bb206.sw.bb3.i_crit_edge
    i32 3, label %sw.bb206.sw.bb3.i_crit_edge372
  ]

sw.bb206.sw.bb3.i_crit_edge372:                   ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb206.sw.bb3.i_crit_edge:                      ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb206.sw.bb.i_crit_edge371:                    ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb206.sw.bb.i_crit_edge:                       ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb206.cleanup_crit_edge:                       ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb206.sw.bb.i_crit_edge, %sw.bb206.sw.bb.i_crit_edge371
  %adis.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %49 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !181
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #9
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef %45, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %adis_read_reg_16.exit.i

adis_read_reg_16.exit.i:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %conv.i = shl i32 %51, 16
  %shr.i.i = ashr exact i32 %conv.i, 16
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr.i.i, ptr %val, align 4
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb206.sw.bb3.i_crit_edge, %sw.bb206.sw.bb3.i_crit_edge372
  %adis4.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24.i) #9
  %53 = ptrtoint ptr %tmp.i24.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %tmp.i24.i, align 4, !annotation !181
  %state_lock.i.i25.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i25.i, i32 noundef 0) #9
  %call.i.i26.i = call i32 @__adis_read_reg(ptr noundef %adis4.i, i32 noundef %45, ptr noundef nonnull %tmp.i24.i, i32 noundef 4) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i25.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %cmp.i27.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %cmp.i27.i, label %if.then8.i, label %adis_read_reg_32.exit.i

adis_read_reg_32.exit.i:                          ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24.i) #9
  br label %cleanup

if.then8.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %tmp.i24.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tmp.i24.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24.i) #9
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %val, align 4
  br label %cleanup

sw.bb208:                                         ; preds = %entry
  %scan_index.i330 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %57 = ptrtoint ptr %scan_index.i330 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scan_index.i330, align 4
  %arrayidx.i331 = getelementptr [6 x i32], ptr @adis16480_calibscale_regs, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i331 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i331, align 4
  %adis.i333 = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i329) #9
  %61 = ptrtoint ptr %tmp.i.i329 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %tmp.i.i329, align 4, !annotation !181
  %state_lock.i.i.i334 = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i334, i32 noundef 0) #9
  %call.i.i.i335 = call i32 @__adis_read_reg(ptr noundef %adis.i333, i32 noundef %60, ptr noundef nonnull %tmp.i.i329, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i334) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i335)
  %cmp.i.i336 = icmp eq i32 %call.i.i.i335, 0
  br i1 %cmp.i.i336, label %if.end.i, label %adis_read_reg_16.exit.i337

adis_read_reg_16.exit.i337:                       ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i329) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %tmp.i.i329 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tmp.i.i329, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i329) #9
  %conv.i338 = shl i32 %63, 16
  %shr.i.i339 = ashr exact i32 %conv.i338, 16
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shr.i.i339, ptr %val, align 4
  br label %cleanup

sw.bb210:                                         ; preds = %entry
  %scan_index.i342 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %65 = ptrtoint ptr %scan_index.i342 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %scan_index.i342, align 4
  %arrayidx.i343 = getelementptr [9 x [2 x i32]], ptr @ad16480_filter_data, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i343, align 4
  %arrayidx4.i = getelementptr [9 x [2 x i32]], ptr @ad16480_filter_data, i32 0, i32 %66, i32 1
  %69 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx4.i, align 4
  %adis.i344 = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i340) #9
  %71 = ptrtoint ptr %tmp.i.i340 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %tmp.i.i340, align 4, !annotation !181
  %state_lock.i.i.i345 = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i345, i32 noundef 0) #9
  %call.i.i.i346 = call i32 @__adis_read_reg(ptr noundef %adis.i344, i32 noundef %68, ptr noundef nonnull %tmp.i.i340, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i345) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i346)
  %cmp.i.i347 = icmp eq i32 %call.i.i.i346, 0
  br i1 %cmp.i.i347, label %if.end.i350, label %adis_read_reg_16.exit.i348

adis_read_reg_16.exit.i348:                       ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i340) #9
  br label %cleanup

if.end.i350:                                      ; preds = %sw.bb210
  %72 = ptrtoint ptr %tmp.i.i340 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tmp.i.i340, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i340) #9
  %add.i = add i32 %70, 2
  %shl.i = shl nuw i32 1, %add.i
  %conv.i349 = and i32 %73, 65535
  %and.i = and i32 %conv.i349, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i350.if.end11.i_crit_edge, label %if.else.i

if.end.i350.if.end11.i_crit_edge:                 ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 128
  %filter_freqs.i = getelementptr inbounds %struct.adis16480_chip_info, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %filter_freqs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %filter_freqs.i, align 4
  %shr.i = lshr i32 %conv.i349, %70
  %and9.i = and i32 %shr.i, 3
  %arrayidx10.i = getelementptr i32, ptr %77, i32 %and9.i
  %78 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx10.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.end.i350.if.end11.i_crit_edge
  %storemerge.i = phi i32 [ %79, %if.else.i ], [ 0, %if.end.i350.if.end11.i_crit_edge ]
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %storemerge.i, ptr %val, align 4
  br label %cleanup

sw.bb212:                                         ; preds = %entry
  %clk_freq.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 5
  %81 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %clk_freq.i, align 8
  %adis.i354 = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %clk_mode.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 4
  %83 = ptrtoint ptr %clk_mode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %clk_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.i = icmp eq i32 %84, 1
  br i1 %cmp.i, label %if.then.i356, label %sw.bb212.if.end5.i_crit_edge

sw.bb212.if.end5.i_crit_edge:                     ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i356:                                     ; preds = %sw.bb212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i352) #9
  %85 = ptrtoint ptr %tmp.i.i352 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %tmp.i.i352, align 4, !annotation !181
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i354, i32 noundef 400, ptr noundef nonnull %tmp.i.i352, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i355 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i355, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %tmp.i.i352 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tmp.i.i352, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i352) #9
  %88 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %clk_freq.i, align 8
  %conv.i357 = and i32 %87, 65535
  %mul.i = mul i32 %89, %conv.i357
  br label %if.end5.i

cleanup.i:                                        ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i352) #9
  br label %error.i

if.end5.i:                                        ; preds = %cleanup.thread.i, %sw.bb212.if.end5.i_crit_edge
  %sample_rate.1.i = phi i32 [ %82, %sw.bb212.if.end5.i_crit_edge ], [ %mul.i, %cleanup.thread.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i36.i) #9
  %90 = ptrtoint ptr %tmp.i36.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %tmp.i36.i, align 4, !annotation !181
  %call.i37.i = call i32 @__adis_read_reg(ptr noundef %adis.i354, i32 noundef 396, ptr noundef nonnull %tmp.i36.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %cmp.i38.i, label %if.end10.i, label %__adis_read_reg_16.exit41.i

__adis_read_reg_16.exit41.i:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i36.i) #9
  br label %error.i

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %tmp.i36.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tmp.i36.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i36.i) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  %conv12.i = and i32 %92, 65535
  %add.i358 = add nuw nsw i32 %conv12.i, 1
  %div34.i = lshr i32 %add.i358, 1
  %add13.i = add i32 %div34.i, %sample_rate.1.i
  %div14.i = udiv i32 %add13.i, %add.i358
  %div14.i.frozen = freeze i32 %div14.i
  %div15.i = udiv i32 %div14.i.frozen, 1000
  %93 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div15.i, ptr %val, align 4
  %94 = mul i32 %div15.i, 1000
  %rem.i.decomposed = sub i32 %div14.i.frozen, %94
  %mul16.i = mul nuw nsw i32 %rem.i.decomposed, 1000
  %95 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %mul16.i, ptr %val2, align 4
  br label %cleanup

error.i:                                          ; preds = %__adis_read_reg_16.exit41.i, %cleanup.i
  %ret.0.i = phi i32 [ %call.i.i, %cleanup.i ], [ %call.i37.i, %__adis_read_reg_16.exit41.i ]
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error.i, %if.end10.i, %if.end11.i, %adis_read_reg_16.exit.i348, %if.end.i, %adis_read_reg_16.exit.i337, %if.then8.i, %adis_read_reg_32.exit.i, %if.then.i, %adis_read_reg_16.exit.i, %sw.bb206.cleanup_crit_edge, %if.end202, %sw.bb13, %sw.bb9, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end202 ], [ 10, %sw.bb13 ], [ 2, %sw.bb9 ], [ 2, %sw.bb8 ], [ 10, %sw.bb5 ], [ 10, %sw.bb3 ], [ %call1, %sw.bb ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.then8.i ], [ -22, %sw.bb206.cleanup_crit_edge ], [ %call.i.i.i, %adis_read_reg_16.exit.i ], [ %call.i.i26.i, %adis_read_reg_32.exit.i ], [ 1, %if.end.i ], [ %call.i.i.i335, %adis_read_reg_16.exit.i337 ], [ 1, %if.end11.i ], [ %call.i.i.i346, %adis_read_reg_16.exit.i348 ], [ %ret.0.i, %error.i ], [ 2, %if.end10.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %info, label %entry.return_crit_edge [
    i32 5, label %sw.bb
    i32 4, label %sw.bb1
    i32 10, label %sw.bb3
    i32 12, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %1 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %scan_index.i, align 4
  %arrayidx.i = getelementptr [10 x i32], ptr @adis16480_calibbias_regs, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i.i, align 8
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %8, label %sw.bb.return_crit_edge [
    i32 5, label %sw.bb.sw.bb.i_crit_edge
    i32 17, label %sw.bb.sw.bb.i_crit_edge39
    i32 4, label %sw.bb.sw.bb3.i_crit_edge
    i32 3, label %sw.bb.sw.bb3.i_crit_edge40
  ]

sw.bb.sw.bb3.i_crit_edge40:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.sw.bb3.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.sw.bb.i_crit_edge39:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge39
  %10 = add i32 %val, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %10)
  %11 = icmp ult i32 %10, -65536
  br i1 %11, label %sw.bb.i.return_crit_edge, label %if.end.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %adis.i = getelementptr inbounds %struct.adis16480, ptr %6, i32 0, i32 2
  %conv.i.i = and i32 %val, 65535
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16480, ptr %6, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #9
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef %4, i32 noundef %conv.i.i, i32 noundef 2) #9
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %sw.bb.sw.bb3.i_crit_edge, %sw.bb.sw.bb3.i_crit_edge40
  %adis4.i = getelementptr inbounds %struct.adis16480, ptr %6, i32 0, i32 2
  %state_lock.i.i13.i = getelementptr inbounds %struct.adis16480, ptr %6, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i13.i, i32 noundef 0) #9
  %call.i.i14.i = tail call i32 @__adis_write_reg(ptr noundef %adis4.i, i32 noundef %4, i32 noundef %val, i32 noundef 4) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb3.i, %if.end.i
  %state_lock.i.i13.sink.i = phi ptr [ %state_lock.i.i13.i, %sw.bb3.i ], [ %state_lock.i.i.i, %if.end.i ]
  %retval.0.ph.i = phi i32 [ %call.i.i14.i, %sw.bb3.i ], [ %call.i.i.i, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i13.sink.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %12 = add i32 %val, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %12)
  %13 = icmp ult i32 %12, -65536
  br i1 %13, label %sw.bb1.return_crit_edge, label %if.end.i22

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i22:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i.i15 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i15, align 8
  %scan_index.i16 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %16 = ptrtoint ptr %scan_index.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_index.i16, align 4
  %arrayidx.i17 = getelementptr [6 x i32], ptr @adis16480_calibscale_regs, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i17, align 4
  %adis.i18 = getelementptr inbounds %struct.adis16480, ptr %15, i32 0, i32 2
  %conv.i.i19 = and i32 %val, 65535
  %state_lock.i.i.i20 = getelementptr inbounds %struct.adis16480, ptr %15, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i20, i32 noundef 0) #9
  %call.i.i.i21 = tail call i32 @__adis_write_reg(ptr noundef %adis.i18, i32 noundef %19, i32 noundef %conv.i.i19, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i20) #9
  br label %return

sw.bb3:                                           ; preds = %entry
  %priv.i.i24 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %20 = ptrtoint ptr %priv.i.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i.i24, align 8
  %scan_index.i25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %22 = ptrtoint ptr %scan_index.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_index.i25, align 4
  %arrayidx.i26 = getelementptr [9 x [2 x i32]], ptr @ad16480_filter_data, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i26, align 4
  %arrayidx4.i = getelementptr [9 x [2 x i32]], ptr @ad16480_filter_data, i32 0, i32 %23, i32 1
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i, align 4
  %add.i = add i32 %27, 2
  %shl.i = shl nuw i32 1, %add.i
  %adis.i27 = getelementptr inbounds %struct.adis16480, ptr %21, i32 0, i32 2
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %21, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %28 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !181
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i27, i32 noundef %25, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i28, label %__adis_read_reg_16.exit.i

__adis_read_reg_16.exit.i:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  br label %adis16480_set_filter_freq.exit

if.end.i28:                                       ; preds = %sw.bb3
  %29 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i = icmp eq i32 %val, 0
  br i1 %cmp.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  %31 = xor i32 %shl.i, 65535
  %conv8.i = and i32 %30, %31
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %21, align 128
  %filter_freqs.i = getelementptr inbounds %struct.adis16480_chip_info, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %filter_freqs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %filter_freqs.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %val)
  %cmp15.not.i = icmp ult i32 %37, %val
  %sub.i = sub i32 %37, %val
  %38 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %37) #9
  %best_diff.1.i = select i1 %cmp15.not.i, i32 %37, i32 %38
  %arrayidx14.1.i = getelementptr i32, ptr %35, i32 1
  %39 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx14.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %val)
  %cmp15.not.1.i = icmp ult i32 %40, %val
  %sub.1.i = sub i32 %40, %val
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %best_diff.1.i)
  %cmp21.1.i = icmp ult i32 %sub.1.i, %best_diff.1.i
  %41 = call i32 @llvm.umin.i32(i32 %sub.1.i, i32 %best_diff.1.i) #9
  %best_diff.1.1.i = select i1 %cmp15.not.1.i, i32 %best_diff.1.i, i32 %41
  %not.cmp15.not.1.i = xor i1 %cmp15.not.1.i, true
  %narrow.i = select i1 %not.cmp15.not.1.i, i1 %cmp21.1.i, i1 false
  %best_freq.1.1.i = zext i1 %narrow.i to i32
  %arrayidx14.2.i = getelementptr i32, ptr %35, i32 2
  %42 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx14.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %val)
  %cmp15.not.2.i = icmp ult i32 %43, %val
  %sub.2.i = sub i32 %43, %val
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %best_diff.1.1.i)
  %cmp21.2.i = icmp ult i32 %sub.2.i, %best_diff.1.1.i
  %44 = call i32 @llvm.umin.i32(i32 %sub.2.i, i32 %best_diff.1.1.i) #9
  %spec.select60.2.i = select i1 %cmp21.2.i, i32 2, i32 %best_freq.1.1.i
  %best_diff.1.2.i = select i1 %cmp15.not.2.i, i32 %best_diff.1.1.i, i32 %44
  %best_freq.1.2.i = select i1 %cmp15.not.2.i, i32 %best_freq.1.1.i, i32 %spec.select60.2.i
  %arrayidx14.3.i = getelementptr i32, ptr %35, i32 3
  %45 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx14.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %val)
  %cmp15.not.3.i = icmp ult i32 %46, %val
  %sub.3.i = sub i32 %46, %val
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3.i, i32 %best_diff.1.2.i)
  %cmp21.3.i = icmp ult i32 %sub.3.i, %best_diff.1.2.i
  %spec.select60.3.i = select i1 %cmp21.3.i, i32 3, i32 %best_freq.1.2.i
  %best_freq.1.3.i = select i1 %cmp15.not.3.i, i32 %best_freq.1.2.i, i32 %spec.select60.3.i
  %shl26.i = shl i32 3, %27
  %47 = xor i32 %shl26.i, 65535
  %conv30.i = and i32 %30, %47
  %shl31.i = shl i32 %best_freq.1.3.i, %27
  %conv33.i = or i32 %conv30.i, %shl.i
  %conv36.i = or i32 %conv33.i, %shl31.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.then7.i
  %storemerge.i = phi i32 [ %conv36.i, %if.else.i ], [ %conv8.i, %if.then7.i ]
  %conv.i61.i = and i32 %storemerge.i, 65535
  %call.i62.i = call i32 @__adis_write_reg(ptr noundef %adis.i27, i32 noundef %25, i32 noundef %conv.i61.i, i32 noundef 2) #9
  br label %adis16480_set_filter_freq.exit

adis16480_set_filter_freq.exit:                   ; preds = %if.end37.i, %__adis_read_reg_16.exit.i
  %ret.0.i = phi i32 [ %call.i.i, %__adis_read_reg_16.exit.i ], [ %call.i62.i, %if.end37.i ]
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  br label %return

sw.bb5:                                           ; preds = %entry
  %priv.i.i29 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %48 = ptrtoint ptr %priv.i.i29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv.i.i29, align 8
  %clk_freq.i = getelementptr inbounds %struct.adis16480, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %clk_freq.i, align 8
  %52 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %.not.i = icmp sgt i32 %52, -1
  br i1 %.not.i, label %if.end.i31, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i31:                                       ; preds = %sw.bb5
  %mul.i = mul i32 %val, 1000
  %div98.i = udiv i32 %val2, 1000
  %add.i30 = add i32 %div98.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i30)
  %cmp2.i = icmp eq i32 %add.i30, 0
  br i1 %cmp2.i, label %if.end.i31.return_crit_edge, label %if.end4.i

if.end.i31.return_crit_edge:                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4.i:                                        ; preds = %if.end.i31
  %adis.i32 = getelementptr inbounds %struct.adis16480, ptr %49, i32 0, i32 2
  %state_lock.i.i33 = getelementptr inbounds %struct.adis16480, ptr %49, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i33, i32 noundef 0) #9
  %clk_mode.i = getelementptr inbounds %struct.adis16480, ptr %49, i32 0, i32 4
  %53 = ptrtoint ptr %clk_mode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clk_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp5.i = icmp eq i32 %54, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end37.i36_crit_edge

if.end4.i.if.end37.i36_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i36

if.then6.i:                                       ; preds = %if.end4.i
  %55 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clk_freq.i, align 8
  %call8.i = tail call i32 @lcm(i32 noundef %56, i32 noundef %add.i30) #14
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %49, align 128
  %int_clk.i = getelementptr inbounds %struct.adis16480_chip_info, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %int_clk.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %int_clk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %60)
  %cmp9.i = icmp ugt i32 %call8.i, %60
  %.call8.i = select i1 %cmp9.i, i32 %56, i32 %call8.i
  %.pn.i = urem i32 %60, %.call8.i
  %scaled_rate.0.i = sub i32 %60, %.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %scaled_rate.0.i)
  %cmp22.i = icmp ult i32 %scaled_rate.0.i, 4000000
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.then6.i.if.end28.i_crit_edge

if.then6.i.if.end28.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.then6.i
  %61 = load i8, ptr @low_rate_allow, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i, label %if.then23.i, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %add25.i = add i32 %56, 3999999
  %62 = urem i32 %add25.i, %56
  %mul27.i = sub i32 %add25.i, %62
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %land.lhs.true.i.if.end28.i_crit_edge, %if.then6.i.if.end28.i_crit_edge
  %scaled_rate.1.i = phi i32 [ %scaled_rate.0.i, %land.lhs.true.i.if.end28.i_crit_edge ], [ %mul27.i, %if.then23.i ], [ %scaled_rate.0.i, %if.then6.i.if.end28.i_crit_edge ]
  %div30.i = udiv i32 %scaled_rate.1.i, %56
  %conv.i.i34 = and i32 %div30.i, 65535
  %call.i.i35 = tail call i32 @__adis_write_reg(ptr noundef %adis.i32, i32 noundef 400, i32 noundef %conv.i.i34, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool33.not.i = icmp eq i32 %call.i.i35, 0
  br i1 %tobool33.not.i, label %if.end28.i.if.end37.i36_crit_edge, label %if.end28.i.error.i_crit_edge

if.end28.i.error.i_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end28.i.if.end37.i36_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i36

if.end37.i36:                                     ; preds = %if.end28.i.if.end37.i36_crit_edge, %if.end4.i.if.end37.i36_crit_edge
  %sample_rate.1.i = phi i32 [ %scaled_rate.1.i, %if.end28.i.if.end37.i36_crit_edge ], [ %51, %if.end4.i.if.end37.i36_crit_edge ]
  %div3993.i = lshr i32 %add.i30, 1
  %add40.i = add i32 %sample_rate.1.i, %div3993.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i30, i32 %add40.i)
  %tobool42.not.i = icmp ugt i32 %add.i30, %add40.i
  br i1 %tobool42.not.i, label %if.end37.i36.if.end44.i_crit_edge, label %if.then43.i

if.end37.i36.if.end44.i_crit_edge:                ; preds = %if.end37.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.then43.i:                                      ; preds = %if.end37.i36
  call void @__sanitizer_cov_trace_pc() #11
  %div41.i = udiv i32 %add40.i, %add.i30
  %dec.i = add i32 %div41.i, -1
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %if.end37.i36.if.end44.i_crit_edge
  %t.0.i = phi i32 [ %dec.i, %if.then43.i ], [ 0, %if.end37.i36.if.end44.i_crit_edge ]
  %63 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %49, align 128
  %max_dec_rate.i = getelementptr inbounds %struct.adis16480_chip_info, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %max_dec_rate.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_dec_rate.i, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %t.0.i, i32 %66) #9
  %conv.i95.i = and i32 %67, 65535
  %call.i96.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i32, i32 noundef 396, i32 noundef %conv.i95.i, i32 noundef 2) #9
  br label %error.i

error.i:                                          ; preds = %if.end44.i, %if.end28.i.error.i_crit_edge
  %ret.0.i37 = phi i32 [ %call.i.i35, %if.end28.i.error.i_crit_edge ], [ %call.i96.i, %if.end44.i ]
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i33) #9
  br label %return

return:                                           ; preds = %error.i, %if.end.i31.return_crit_edge, %sw.bb5.return_crit_edge, %adis16480_set_filter_freq.exit, %if.end.i22, %sw.bb1.return_crit_edge, %cleanup.sink.split.i, %sw.bb.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %adis16480_set_filter_freq.exit ], [ -22, %entry.return_crit_edge ], [ -22, %sw.bb.i.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i.i21, %if.end.i22 ], [ -22, %sw.bb1.return_crit_edge ], [ %ret.0.i37, %error.i ], [ -22, %sw.bb5.return_crit_edge ], [ -22, %if.end.i31.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_update_scan_mode(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_debugfs_reg_access(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_single_conversion(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_get_debugfs_dentry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_show_firmware_revision(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #9
  %adis = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !181
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 504, ptr noundef nonnull %tmp.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %conv = lshr i32 %5, 8
  %6 = and i32 %conv, 255
  %and = and i32 %5, 255
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 7, ptr noundef nonnull @.str.54, i32 noundef %6, i32 noundef %and) #9
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call.i.i, %adis_read_reg_16.exit ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_show_firmware_date(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tmp.i20 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %buf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #9
  %adis = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !181
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 508, ptr noundef nonnull %tmp.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i20) #9
  %6 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp.i20, align 4, !annotation !181
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i22 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 506, ptr noundef nonnull %tmp.i20, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.i23, label %if.end5, label %adis_read_reg_16.exit26

adis_read_reg_16.exit26:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #9
  %conv = lshr i32 %8, 8
  %9 = and i32 %conv, 255
  %and = and i32 %8, 255
  %conv7 = and i32 %5, 65535
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 12, ptr noundef nonnull @.str.55, i32 noundef %9, i32 noundef %and, i32 noundef %conv7)
  %call10 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %adis_read_reg_16.exit26, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call10, %if.end5 ], [ %call.i.i, %adis_read_reg_16.exit ], [ %call.i.i22, %adis_read_reg_16.exit26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_serial_number_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16480_show_serial_number, ptr noundef null, ptr noundef nonnull @.str.56) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_show_serial_number(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16480, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !181
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 544, ptr noundef nonnull %tmp.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %conv.i.mask = and i32 %2, 65535
  %conv = zext i32 %conv.i.mask to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_16.exit
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_product_id_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16480_show_product_id, ptr noundef null, ptr noundef nonnull @.str.57) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_show_product_id(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16480, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !181
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 126, ptr noundef nonnull %tmp.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %conv.i.mask = and i32 %2, 65535
  %conv = zext i32 %conv.i.mask to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_16.exit
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_flash_count_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16480_show_flash_count, ptr noundef null, ptr noundef nonnull @.str.58) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16480_show_flash_count(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16480, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !181
  %state_lock.i.i = getelementptr inbounds %struct.adis16480, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #9
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 380, ptr noundef nonnull %tmp.i, i32 noundef 4) #9
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_32.exit

adis_read_reg_32.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_32.exit
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !110, !111, !113, !114, !115, !116, !117, !119, !121, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !165, !166, !168, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__param_low_rate_allow, !1, !"__param_low_rate_allow", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/adis16480.c", i32 183, i32 1}
!2 = !{ptr @__UNIQUE_ID_low_rate_allowtype234, !1, !"__UNIQUE_ID_low_rate_allowtype234", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_low_rate_allow235, !4, !"__UNIQUE_ID_low_rate_allow235", i1 false, i1 false}
!4 = !{!"../drivers/iio/imu/adis16480.c", i32 184, i32 1}
!5 = !{ptr @__initcall__kmod_adis16480__281_1536_adis16480_driver_init6, !6, !"__initcall__kmod_adis16480__281_1536_adis16480_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/iio/imu/adis16480.c", i32 1536, i32 1}
!7 = !{ptr @__exitcall_adis16480_driver_exit, !6, !"__exitcall_adis16480_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author282, !9, !"__UNIQUE_ID_author282", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/adis16480.c", i32 1538, i32 1}
!10 = !{ptr @__UNIQUE_ID_description283, !11, !"__UNIQUE_ID_description283", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/adis16480.c", i32 1539, i32 1}
!12 = !{ptr @__UNIQUE_ID_file284, !13, !"__UNIQUE_ID_file284", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/adis16480.c", i32 1540, i32 1}
!14 = !{ptr @__UNIQUE_ID_license285, !13, !"__UNIQUE_ID_license285", i1 false, i1 false}
!15 = !{ptr @low_rate_allow, !16, !"low_rate_allow", i1 false, i1 false}
!16 = !{!"../drivers/iio/imu/adis16480.c", i32 182, i32 13}
!17 = !{ptr @__param_str_low_rate_allow, !1, !"__param_str_low_rate_allow", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/imu/adis16480.c", i32 1530, i32 11}
!20 = !{ptr @adis16480_driver, !21, !"adis16480_driver", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/adis16480.c", i32 1528, i32 26}
!22 = !{ptr @adis16480_ids, !23, !"adis16480_ids", i1 false, i1 false}
!23 = !{!"../drivers/iio/imu/adis16480.c", i32 1496, i32 35}
!24 = !{ptr @adis16480_chip_info, !25, !"adis16480_chip_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/imu/adis16480.c", i32 926, i32 41}
!26 = !{ptr @adis16485_channels, !27, !"adis16485_channels", i1 false, i1 false}
!27 = !{!"../drivers/iio/imu/adis16480.c", i32 822, i32 35}
!28 = !{ptr @adis16480_def_filter_freqs, !29, !"adis16480_def_filter_freqs", i1 false, i1 false}
!29 = !{!"../drivers/iio/imu/adis16480.c", i32 554, i32 27}
!30 = !{ptr @adis16485_timeouts, !31, !"adis16485_timeouts", i1 false, i1 false}
!31 = !{!"../drivers/iio/imu/adis16480.c", i32 902, i32 34}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/imu/adis16480.c", i32 859, i32 37}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/imu/adis16480.c", i32 860, i32 37}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/imu/adis16480.c", i32 861, i32 37}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/imu/adis16480.c", i32 862, i32 37}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/imu/adis16480.c", i32 863, i32 37}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/imu/adis16480.c", i32 864, i32 37}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/imu/adis16480.c", i32 865, i32 37}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/imu/adis16480.c", i32 866, i32 37}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/imu/adis16480.c", i32 867, i32 37}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/imu/adis16480.c", i32 868, i32 36}
!52 = !{ptr @adis16480_status_error_msgs, !53, !"adis16480_status_error_msgs", i1 false, i1 false}
!53 = !{!"../drivers/iio/imu/adis16480.c", i32 858, i32 27}
!54 = !{ptr @adis16480_channels, !55, !"adis16480_channels", i1 false, i1 false}
!55 = !{!"../drivers/iio/imu/adis16480.c", i32 807, i32 35}
!56 = !{ptr @adis16480_timeouts, !57, !"adis16480_timeouts", i1 false, i1 false}
!57 = !{!"../drivers/iio/imu/adis16480.c", i32 908, i32 34}
!58 = !{ptr @adis16495_def_filter_freqs, !59, !"adis16495_def_filter_freqs", i1 false, i1 false}
!59 = !{!"../drivers/iio/imu/adis16480.c", i32 561, i32 27}
!60 = !{ptr @adis16495_timeouts, !61, !"adis16495_timeouts", i1 false, i1 false}
!61 = !{!"../drivers/iio/imu/adis16480.c", i32 914, i32 34}
!62 = !{ptr @adis16495_1_timeouts, !63, !"adis16495_1_timeouts", i1 false, i1 false}
!63 = !{!"../drivers/iio/imu/adis16480.c", i32 920, i32 34}
!64 = !{ptr @adis16480_info, !65, !"adis16480_info", i1 false, i1 false}
!65 = !{!"../drivers/iio/imu/adis16480.c", i32 1207, i32 30}
!66 = !{ptr @adis16480_calibbias_regs, !67, !"adis16480_calibbias_regs", i1 false, i1 false}
!67 = !{!"../drivers/iio/imu/adis16480.c", i32 450, i32 27}
!68 = !{ptr @adis16480_calibscale_regs, !69, !"adis16480_calibscale_regs", i1 false, i1 false}
!69 = !{!"../drivers/iio/imu/adis16480.c", i32 463, i32 27}
!70 = !{ptr @ad16480_filter_data, !71, !"ad16480_filter_data", i1 false, i1 false}
!71 = !{!"../drivers/iio/imu/adis16480.c", i32 568, i32 27}
!72 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/imu/adis16480.c", i32 1221, i32 3}
!74 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @adis16480_stop_device._entry, !73, !"_entry", i1 false, i1 false}
!79 = !{ptr @adis16480_stop_device._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/imu/adis16480.c", i32 1253, i32 3}
!82 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @adis16480_config_irq_pin._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @adis16480_config_irq_pin._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.19, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/imu/adis16480.c", i32 1290, i32 3}
!87 = !{ptr @adis16480_config_irq_pin._entry.18, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @adis16480_config_irq_pin._entry_ptr.20, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/imu/adis16480.c", i32 176, i32 25}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/imu/adis16480.c", i32 177, i32 25}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/imu/adis16480.c", i32 178, i32 25}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/imu/adis16480.c", i32 179, i32 25}
!97 = distinct !{null, !98, !"adis16480_int_pin_names", i1 false, i1 false}
!98 = !{!"../drivers/iio/imu/adis16480.c", i32 175, i32 27}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/imu/adis16480.c", i32 1365, i32 49}
!101 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/imu/adis16480.c", i32 1372, i32 3}
!103 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @adis16480_get_ext_clocks._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @adis16480_get_ext_clocks._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/imu/adis16480.c", i32 1377, i32 50}
!108 = !{ptr @adis16480_get_ext_clocks._entry.29, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/iio/imu/adis16480.c", i32 1384, i32 4}
!110 = !{ptr @adis16480_get_ext_clocks._entry_ptr.30, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/imu/adis16480.c", i32 1340, i32 3}
!113 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @adis16480_ext_clk_config._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @adis16480_ext_clk_config._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/imu/adis16480.c", i32 1306, i32 39}
!119 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/imu/adis16480.c", i32 1315, i32 2}
!121 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @adis16480_of_get_ext_clk_pin._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @adis16480_of_get_ext_clk_pin._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/imu/adis16480.c", i32 1133, i32 4}
!127 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @adis16480_trigger_handler._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @adis16480_trigger_handler._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/imu/adis16480.c", i32 1143, i32 3}
!132 = !{ptr @adis16480_trigger_handler._entry.40, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @adis16480_trigger_handler._entry_ptr.42, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/imu/adis16480.c", i32 1171, i32 3}
!136 = !{ptr @adis16480_trigger_handler._entry.43, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @adis16480_trigger_handler._entry_ptr.45, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/imu/adis16480.c", i32 1178, i32 3}
!140 = !{ptr @adis16480_trigger_handler._entry.46, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @adis16480_trigger_handler._entry_ptr.48, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/iio/imu/adis16480.c", i32 303, i32 29}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/imu/adis16480.c", i32 305, i32 29}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/imu/adis16480.c", i32 307, i32 29}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/iio/imu/adis16480.c", i32 309, i32 29}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/imu/adis16480.c", i32 311, i32 29}
!152 = !{ptr @adis16480_firmware_revision_fops, !153, !"adis16480_firmware_revision_fops", i1 false, i1 false}
!153 = !{!"../drivers/iio/imu/adis16480.c", i32 207, i32 37}
!154 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/imu/adis16480.c", i32 202, i32 36}
!156 = !{ptr @adis16480_firmware_date_fops, !157, !"adis16480_firmware_date_fops", i1 false, i1 false}
!157 = !{!"../drivers/iio/imu/adis16480.c", i32 237, i32 37}
!158 = !{ptr @.str.55, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/imu/adis16480.c", i32 231, i32 35}
!160 = !{ptr @adis16480_serial_number_fops, !161, !"adis16480_serial_number_fops", i1 false, i1 false}
!161 = !{!"../drivers/iio/imu/adis16480.c", i32 259, i32 1}
!162 = !{ptr @.str.56, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @adis16480_product_id_fops, !164, !"adis16480_product_id_fops", i1 false, i1 false}
!164 = !{!"../drivers/iio/imu/adis16480.c", i32 277, i32 1}
!165 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @adis16480_flash_count_fops, !167, !"adis16480_flash_count_fops", i1 false, i1 false}
!167 = !{!"../drivers/iio/imu/adis16480.c", i32 295, i32 1}
!168 = !{ptr @.str.58, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @adis16480_of_match, !170, !"adis16480_of_match", i1 false, i1 false}
!170 = !{!"../drivers/iio/imu/adis16480.c", i32 1512, i32 34}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i8 0, i8 2}
!181 = !{!"auto-init"}
