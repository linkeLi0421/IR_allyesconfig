; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/adis16475.c_pt.bc'
source_filename = "../drivers/iio/imu/adis16475.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adis16475_chip_info = type { ptr, ptr, %struct.adis_data, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8 }
%struct.adis_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, ptr, i8, i8, i32, i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.adis16475_sync = type { i16, i16, i16 }
%struct.adis_timeout = type { i16, i16, i16 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.adis16475 = type { ptr, [124 x i8], %struct.adis, i32, i8, i32, i16, [2 x i8], [20 x i16], [72 x i8] }
%struct.adis = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.spi_message, ptr, i32, i32, ptr, [76 x i8], [10 x i8], [4 x i8], [114 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_low_rate_allow = internal constant [25 x i8] c"adis16475.low_rate_allow\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@low_rate_allow = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_low_rate_allow = internal constant %struct.kernel_param { ptr @__param_str_low_rate_allow, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @low_rate_allow } }, section "__param", align 4
@__UNIQUE_ID_low_rate_allowtype234 = internal constant [39 x i8] c"adis16475.parmtype=low_rate_allow:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_low_rate_allow235 = internal constant [128 x i8] c"adis16475.parm=low_rate_allow:Allow IMU rates below the minimum advisable when external clk is used in SCALED mode (default: N)\00", section ".modinfo", align 1
@__initcall__kmod_adis16475__262_1363_adis16475_driver_init6 = internal global ptr @adis16475_driver_init, section ".initcall6.init", align 4
@adis16475_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @adis16475_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adis16475_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adis16475_driver_exit = internal global ptr @adis16475_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author263 = internal constant [46 x i8] c"adis16475.author=Nuno Sa <nuno.sa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [58 x i8] c"adis16475.description=Analog Devices ADIS16475 IMU driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file265 = internal constant [41 x i8] c"adis16475.file=drivers/iio/imu/adis16475\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [22 x i8] c"adis16475.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16475\00", [22 x i8] zeroinitializer }, align 32
@adis16475_of_match = internal constant { [21 x %struct.of_device_id], [1036 x i8] } { [21 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adis16475_chip_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16475-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 124) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16475-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 248) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16475-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 372) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16477-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 496) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16477-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 620) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16477-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 744) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16465-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 868) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16465-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 992) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16465-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1116) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16467-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1240) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16467-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1364) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16467-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1488) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1612) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16505-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1736) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16505-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1860) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16505-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 1984) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16507-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 2108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16507-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 2232) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adis16507-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adis16475_chip_info, i64 2356) }, %struct.of_device_id zeroinitializer], [1036 x i8] zeroinitializer }, align 32
@adis16475_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adis16475_read_raw, ptr null, ptr null, ptr @adis16475_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adis_update_scan_mode, ptr @adis_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adis16475_calib_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 64, i32 68, i32 72, i32 76, i32 80, i32 84], [40 x i8] zeroinitializer }, align 32
@adis16475_3db_freqs = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 720, i32 360, i32 164, i32 80, i32 40, i32 20, i32 10], [36 x i8] zeroinitializer }, align 32
@adis16475_config_irq_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not find IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adis16475_config_irq_pin\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/imu/adis16475.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adis16475_config_irq_pin._entry_ptr = internal global ptr @adis16475_config_irq_pin._entry, section ".printk_index", align 4
@adis16475_config_irq_pin._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid interrupt type 0x%x specified\0A\00", [57 x i8] zeroinitializer }, align 32
@adis16475_config_irq_pin._entry_ptr.8 = internal global ptr @adis16475_config_irq_pin._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adi,sync-mode\00", [18 x i8] zeroinitializer }, align 32
@adis16475_config_sync_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid sync mode: %u for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adis16475_config_sync_mode\00", [37 x i8] zeroinitializer }, align 32
@adis16475_config_sync_mode._entry_ptr = internal global ptr @adis16475_config_sync_mode._entry, section ".printk_index", align 4
@adis16475_config_sync_mode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 1171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Clk rate:%u not in a valid range:[%u %u]\0A\00", [54 x i8] zeroinitializer }, align 32
@adis16475_config_sync_mode._entry_ptr.14 = internal global ptr @adis16475_config_sync_mode._entry.12, section ".printk_index", align 4
@adis16475_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1062, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid crc\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adis16475_trigger_handler\00", [38 x i8] zeroinitializer }, align 32
@adis16475_trigger_handler._entry_ptr = internal global ptr @adis16475_trigger_handler._entry, section ".printk_index", align 4
@adis16475_burst32_check.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adis16475_burst32_check\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Enable burst32 mode, xfer:%d\00", [35 x i8] zeroinitializer }, align 32
@adis16475_burst32_check.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Disable burst32 mode, xfer:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@adis16475_serial_number_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16475_serial_number_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@adis16475_product_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16475_product_id_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flash_count\00", [20 x i8] zeroinitializer }, align 32
@adis16475_flash_count_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adis16475_flash_count_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"firmware_revision\00", [46 x i8] zeroinitializer }, align 32
@adis16475_firmware_revision_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @adis16475_show_firmware_revision, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware_date\00", [18 x i8] zeroinitializer }, align 32
@adis16475_firmware_date_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @adis16475_show_firmware_date, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%.4llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x.%x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%.2x-%.2x-%.4x\0A\00", [16 x i8] zeroinitializer }, align 32
@adis16475_chip_info = internal constant { [20 x %struct.adis16475_chip_info], [624 x i8] } { [20 x %struct.adis16475_chip_info] [%struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16470, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.30, i32 8, i32 1, i32 37549394, i32 1, i32 5346250, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16475, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.31, i32 8, i32 1, i32 600790300, i32 1, i32 26731249, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16475, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.32, i32 8, i32 1, i32 150197575, i32 1, i32 26731249, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16475, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.33, i32 8, i32 1, i32 37549394, i32 1, i32 26731249, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16477, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.34, i32 8, i32 1, i32 600790300, i32 1, i32 5346250, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16477, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.35, i32 8, i32 1, i32 150197575, i32 1, i32 5346250, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16477, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.36, i32 8, i32 1, i32 37549394, i32 1, i32 5346250, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16465, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.37, i32 8, i32 1, i32 600790300, i32 1, i32 26731249, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16465, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.38, i32 8, i32 1, i32 150197575, i32 1, i32 26731249, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16465, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.39, i32 8, i32 1, i32 37549394, i32 1, i32 26731249, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16467, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.40, i32 8, i32 1, i32 600790300, i32 1, i32 5346250, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16467, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.41, i32 8, i32 1, i32 150197575, i32 1, i32 5346250, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16467, i32 4, i32 104, i8 0, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.42, i32 8, i32 1, i32 37549394, i32 1, i32 5346250, i32 100, i32 2000, i16 1999, i8 4, i8 0 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16500, i32 4, i32 104, i8 0, ptr @adis1650x_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.43, i32 8, i32 1, i32 37549394, i32 392, i32 2097152000, i32 100, i32 2000, i16 1999, i8 3, i8 1 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16505, i32 4, i32 104, i8 0, ptr @adis1650x_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.44, i32 8, i32 1, i32 600790300, i32 78, i32 2097152000, i32 100, i32 2000, i16 1999, i8 3, i8 1 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16505, i32 4, i32 104, i8 0, ptr @adis1650x_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.45, i32 8, i32 1, i32 150197575, i32 78, i32 2097152000, i32 100, i32 2000, i16 1999, i8 3, i8 1 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16505, i32 4, i32 104, i8 0, ptr @adis1650x_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.46, i32 8, i32 1, i32 37549394, i32 78, i32 2097152000, i32 100, i32 2000, i16 1999, i8 3, i8 1 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16507, i32 4, i32 104, i8 0, ptr @adis1650x_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.47, i32 8, i32 1, i32 600790300, i32 392, i32 2097152000, i32 100, i32 2000, i16 1999, i8 3, i8 1 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16507, i32 4, i32 104, i8 0, ptr @adis1650x_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.48, i32 8, i32 1, i32 150197575, i32 392, i32 2097152000, i32 100, i32 2000, i16 1999, i8 3, i8 1 }, %struct.adis16475_chip_info { ptr @adis16475_channels, ptr @adis16475_sync_mode, %struct.adis_data { i32 5, i32 5, i32 16, i32 104, i32 96, i32 2, i32 114, i32 16507, i32 4, i32 104, i8 0, ptr @adis1650x_timeouts, ptr @adis16475_status_error_msgs, i32 254, ptr null, i8 1, i8 0, i32 104, i32 20, i32 32, i32 1000000 }, ptr @.str.49, i32 8, i32 1, i32 37549394, i32 392, i32 2097152000, i32 100, i32 2000, i16 1999, i8 3, i8 1 }], [624 x i8] zeroinitializer }, align 32
@adis16475_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 4, i32 0, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 8, i32 1, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 12, i32 2, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 16, i32 3, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 20, i32 4, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 24, i32 5, %struct.anon.71 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 28, i32 6, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [160 x i8] zeroinitializer }, align 32
@adis16475_sync_mode = internal constant { [4 x %struct.adis16475_sync], [40 x i8] } { [4 x %struct.adis16475_sync] [%struct.adis16475_sync { i16 3, i16 0, i16 0 }, %struct.adis16475_sync { i16 1, i16 1900, i16 2100 }, %struct.adis16475_sync { i16 2, i16 1, i16 128 }, %struct.adis16475_sync { i16 5, i16 1000, i16 2100 }], [40 x i8] zeroinitializer }, align 32
@adis16475_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 200, i16 200, i16 20 }, [26 x i8] zeroinitializer }, align 32
@adis16475_status_error_msgs = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr null, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16470\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16475-1\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16475-2\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16475-3\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16477-1\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16477-2\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16477-3\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16465-1\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16465-2\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16465-3\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16467-1\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16467-2\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16467-3\00", [20 x i8] zeroinitializer }, align 32
@adis1650x_timeouts = internal constant { %struct.adis_timeout, [26 x i8] } { %struct.adis_timeout { i16 260, i16 260, i16 30 }, [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adis16500\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16505-1\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16505-2\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16505-3\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16507-1\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16507-2\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adis16507-3\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Data Path Overrun\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Flash memory update failure\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPI communication error\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Standby mode\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sensor failure\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Memory failure\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Clock error\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 5, i64 10, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 10, i64 12]
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"low_rate_allow\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 122, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"adis16475_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1356, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1358, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"adis16475_of_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1259, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"adis16475_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 974, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"adis16475_calib_regs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 423, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"adis16475_3db_freqs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 374, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1224, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1239, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1138, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1143, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1169, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1062, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1019, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1035, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 242, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant [29 x i8] c"adis16475_serial_number_fops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 244, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"adis16475_product_id_fops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 246, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant [27 x i8] c"adis16475_flash_count_fops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 248, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant [33 x i8] c"adis16475_firmware_revision_fops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 147, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 250, i32 22 }
@___asan_gen_.169 = private unnamed_addr constant [29 x i8] c"adis16475_firmware_date_fops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 178, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 199, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 216, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 234, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 142, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 172, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c"adis16475_chip_info\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 657, i32 41 }
@___asan_gen_.190 = private unnamed_addr constant [19 x i8] c"adis16475_channels\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 556, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"adis16475_sync_mode\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 638, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"adis16475_timeouts\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 645, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"adis16475_status_error_msgs\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 600, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 659, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 674, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 689, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 704, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 719, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 734, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 749, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 764, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 779, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 794, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 809, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 824, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 839, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant [19 x i8] c"adis1650x_timeouts\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 651, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 854, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 871, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 888, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 905, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 922, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 939, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 956, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 601, i32 36 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 602, i32 36 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 603, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 604, i32 34 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 605, i32 33 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 606, i32 33 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [31 x i8] c"../drivers/iio/imu/adis16475.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 607, i32 30 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__UNIQUE_ID_low_rate_allow235, ptr @__UNIQUE_ID_low_rate_allowtype234, ptr @__exitcall_adis16475_driver_exit, ptr @__initcall__kmod_adis16475__262_1363_adis16475_driver_init6, ptr @__param_low_rate_allow, ptr @adis16475_config_irq_pin._entry, ptr @adis16475_config_irq_pin._entry.6, ptr @adis16475_config_irq_pin._entry_ptr, ptr @adis16475_config_irq_pin._entry_ptr.8, ptr @adis16475_config_sync_mode._entry, ptr @adis16475_config_sync_mode._entry.12, ptr @adis16475_config_sync_mode._entry_ptr, ptr @adis16475_config_sync_mode._entry_ptr.14, ptr @adis16475_driver_exit, ptr @adis16475_trigger_handler._entry, ptr @adis16475_trigger_handler._entry_ptr, ptr @low_rate_allow, ptr @adis16475_driver, ptr @.str, ptr @adis16475_of_match, ptr @adis16475_info, ptr @adis16475_calib_regs, ptr @adis16475_3db_freqs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @adis16475_serial_number_fops, ptr @.str.21, ptr @adis16475_product_id_fops, ptr @.str.22, ptr @adis16475_flash_count_fops, ptr @.str.23, ptr @adis16475_firmware_revision_fops, ptr @.str.24, ptr @adis16475_firmware_date_fops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @adis16475_chip_info, ptr @adis16475_channels, ptr @adis16475_sync_mode, ptr @adis16475_timeouts, ptr @adis16475_status_error_msgs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @adis1650x_timeouts, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_rate_allow to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_of_match to i32), i32 4116, i32 5152, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_calib_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_3db_freqs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_config_irq_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_config_irq_pin._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_config_sync_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_config_sync_mode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_serial_number_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_product_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_flash_count_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_firmware_revision_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_firmware_date_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_chip_info to i32), i32 2480, i32 3104, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_sync_mode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis16475_status_error_msgs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adis1650x_timeouts to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adis16475_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adis16475_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adis16475_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_probe(ptr noundef %spi) #2 align 64 {
entry:
  %sync_mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call3 = tail call ptr @device_get_match_data(ptr noundef %spi) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %1, align 128
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %adis = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %adis_data = getelementptr inbounds %struct.adis16475_chip_info, ptr %call3, i32 0, i32 2
  %call9 = tail call i32 @adis_init(ptr noundef %adis, ptr noundef nonnull %call, ptr noundef %spi, ptr noundef %adis_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %name = getelementptr inbounds %struct.adis16475_chip_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %name14 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name14, align 8
  %8 = load ptr, ptr %1, align 128
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %channels16 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %channels16, align 8
  %12 = load ptr, ptr %1, align 128
  %num_channels = getelementptr inbounds %struct.adis16475_chip_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_channels, align 4
  %num_channels18 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_channels18, align 4
  %info19 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %info19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @adis16475_info, ptr %info19, align 8
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call, align 8
  %call21 = tail call i32 @__adis_initial_startup(ptr noundef %adis) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adis, align 128
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %21) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef %23) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %common.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i = and i32 %27, 15
  %28 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %do.end13.i [
    i32 1, label %if.end.i.do.body23.i_crit_edge
    i32 2, label %if.then7.i
  ]

if.end.i.do.body23.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %and.i.i) #11
  br label %cleanup

do.body23.i:                                      ; preds = %if.then7.i, %if.end.i.do.body23.i_crit_edge
  %polarity.0.i = phi i32 [ 0, %if.then7.i ], [ %and.i.i, %if.end.i.do.body23.i_crit_edge ]
  %irq_flag.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %irq_flag.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i.i, ptr %irq_flag.i, align 4
  %call44.i = tail call i32 @__adis_update_bits_base(ptr noundef %adis, i32 noundef 96, i32 noundef 1, i32 noundef %polarity.0.i, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end28, label %do.body23.i.cleanup_crit_edge

do.body23.i.cleanup_crit_edge:                    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %do.body23.i
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 260, i32 noundef 2) #8
  %30 = ptrtoint ptr %adis to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adis, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sync_mode.i) #8
  %32 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %sync_mode.i, align 4, !annotation !167
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 128
  %int_clk.i = getelementptr inbounds %struct.adis16475_chip_info, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %int_clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %int_clk.i, align 4
  %mul.i = mul i32 %36, 1000
  %clk_freq.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.i, ptr %clk_freq.i, align 128
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef nonnull %sync_mode.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i80 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i80, label %if.end.i81, label %if.end28.adis16475_config_sync_mode.exit.thread88_crit_edge

if.end28.adis16475_config_sync_mode.exit.thread88_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %adis16475_config_sync_mode.exit.thread88

if.end.i81:                                       ; preds = %if.end28
  %38 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sync_mode.i, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %num_sync.i = getelementptr inbounds %struct.adis16475_chip_info, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %num_sync.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_sync.i, align 2
  %conv.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %39, %conv.i
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i82

do.end.i82:                                       ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.adis16475_chip_info, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, i32 noundef %39, ptr noundef %45) #11
  br label %adis16475_config_sync_mode.exit.thread

if.end6.i:                                        ; preds = %if.end.i81
  %sync8.i = getelementptr inbounds %struct.adis16475_chip_info, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %sync8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sync8.i, align 4
  %arrayidx.i = getelementptr %struct.adis16475_sync, ptr %47, i32 %39
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i, align 2
  %sync_mode10.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %sync_mode10.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %sync_mode10.i, align 4
  %51 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %51)
  %cmp13.not.i = icmp eq i16 %51, 3
  br i1 %cmp13.not.i, label %if.end6.i.do.end70.i_crit_edge, label %if.then15.i

if.end6.i.do.end70.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70.i

if.then15.i:                                      ; preds = %if.end6.i
  %call16.i = call ptr @devm_clk_get(ptr noundef %31, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %adis16475_config_sync_mode.exit, label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i
  %call.i121.i = call i32 @clk_prepare(ptr noundef %call16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool.not.i.i = icmp eq i32 %call.i121.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end20.i.adis16475_config_sync_mode.exit.thread_crit_edge

if.end20.i.adis16475_config_sync_mode.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adis16475_config_sync_mode.exit.thread

if.end.i.i:                                       ; preds = %if.end20.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end24.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call16.i) #8
  br label %adis16475_config_sync_mode.exit.thread

if.end24.i:                                       ; preds = %if.end.i.i
  %call.i122.i = call i32 @devm_add_action(ptr noundef %31, ptr noundef nonnull @adis16475_disable_clk, ptr noundef %call16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool.not.i123.i, label %if.end28.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_disable(ptr noundef %call16.i) #8
  call void @clk_unprepare(ptr noundef %call16.i) #8
  br label %adis16475_config_sync_mode.exit.thread

if.end28.i:                                       ; preds = %if.end24.i
  %call29.i = call i32 @clk_get_rate(ptr noundef %call16.i) #8
  %52 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call29.i, ptr %clk_freq.i, align 128
  %min_rate.i = getelementptr %struct.adis16475_sync, ptr %47, i32 %39, i32 1
  %53 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %min_rate.i, align 2
  %conv32.i = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i, i32 %conv32.i)
  %cmp33.i = icmp ult i32 %call29.i, %conv32.i
  br i1 %cmp33.i, label %if.end28.i.do.end42.i_crit_edge, label %lor.lhs.false.i

if.end28.i.do.end42.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42.i

lor.lhs.false.i:                                  ; preds = %if.end28.i
  %max_rate.i = getelementptr %struct.adis16475_sync, ptr %47, i32 %39, i32 2
  %55 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %max_rate.i, align 2
  %conv36.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i, i32 %conv36.i)
  %cmp37.i = icmp ugt i32 %call29.i, %conv36.i
  br i1 %cmp37.i, label %lor.lhs.false.i.do.end42.i_crit_edge, label %if.end48.i

lor.lhs.false.i.do.end42.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42.i

do.end42.i:                                       ; preds = %lor.lhs.false.i.do.end42.i_crit_edge, %if.end28.i.do.end42.i_crit_edge
  %max_rate46.i = getelementptr %struct.adis16475_sync, ptr %47, i32 %39, i32 2
  %57 = ptrtoint ptr %max_rate46.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %max_rate46.i, align 2
  %conv47.i = zext i16 %58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13, i32 noundef %call29.i, i32 noundef %conv32.i, i32 noundef %conv47.i) #11
  br label %adis16475_config_sync_mode.exit.thread

if.end48.i:                                       ; preds = %lor.lhs.false.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %60)
  %cmp51.i = icmp eq i16 %60, 2
  br i1 %cmp51.i, label %if.then53.i, label %if.end48.i.cleanup64.i_crit_edge

if.end48.i.cleanup64.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64.i

if.then53.i:                                      ; preds = %if.end48.i
  %div.i = udiv i32 2100, %call29.i
  %call.i125.i = call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef 98, i32 noundef %div.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %tobool58.not.i = icmp eq i32 %call.i125.i, 0
  br i1 %tobool58.not.i, label %if.then53.i.cleanup64.i_crit_edge, label %if.then53.i.adis16475_config_sync_mode.exit.thread_crit_edge

if.then53.i.adis16475_config_sync_mode.exit.thread_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adis16475_config_sync_mode.exit.thread

if.then53.i.cleanup64.i_crit_edge:                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.then53.i.cleanup64.i_crit_edge, %if.end48.i.cleanup64.i_crit_edge
  %61 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clk_freq.i, align 128
  %mul63.i = mul i32 %62, 1000
  store i32 %mul63.i, ptr %clk_freq.i, align 128
  br label %do.end70.i

do.end70.i:                                       ; preds = %cleanup64.i, %if.end6.i.do.end70.i_crit_edge
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i, align 2
  %conv73.i = zext i16 %64 to i32
  %call74.i = call i32 @__adis_update_bits_base(ptr noundef %adis, i32 noundef 96, i32 noundef 28, i32 noundef %conv73.i, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %do.end70.i.adis16475_config_sync_mode.exit.thread_crit_edge

do.end70.i.adis16475_config_sync_mode.exit.thread_crit_edge: ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adis16475_config_sync_mode.exit.thread

if.end77.i:                                       ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 250, i32 noundef 260, i32 noundef 2) #8
  br label %adis16475_config_sync_mode.exit.thread88

adis16475_config_sync_mode.exit.thread:           ; preds = %do.end70.i.adis16475_config_sync_mode.exit.thread_crit_edge, %if.then53.i.adis16475_config_sync_mode.exit.thread_crit_edge, %do.end42.i, %devm_add_action_or_reset.exit.i, %if.then3.i.i, %if.end20.i.adis16475_config_sync_mode.exit.thread_crit_edge, %do.end.i82
  %retval.3.i.ph = phi i32 [ %call.i121.i, %if.end20.i.adis16475_config_sync_mode.exit.thread_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i125.i, %if.then53.i.adis16475_config_sync_mode.exit.thread_crit_edge ], [ -22, %do.end42.i ], [ %call.i122.i, %devm_add_action_or_reset.exit.i ], [ %call74.i, %do.end70.i.adis16475_config_sync_mode.exit.thread_crit_edge ], [ -22, %do.end.i82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sync_mode.i) #8
  br label %cleanup

adis16475_config_sync_mode.exit.thread88:         ; preds = %if.end77.i, %if.end28.adis16475_config_sync_mode.exit.thread88_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sync_mode.i) #8
  %call34 = call i32 @devm_adis_setup_buffer_and_trigger(ptr noundef %adis, ptr noundef nonnull %call, ptr noundef nonnull @adis16475_trigger_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %adis16475_config_sync_mode.exit.thread88.cleanup_crit_edge

adis16475_config_sync_mode.exit.thread88.cleanup_crit_edge: ; preds = %adis16475_config_sync_mode.exit.thread88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

adis16475_config_sync_mode.exit:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %call16.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sync_mode.i) #8
  br label %cleanup

if.end37:                                         ; preds = %adis16475_config_sync_mode.exit.thread88
  %call39 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @adis16475_debugfs_init(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end37.cleanup_crit_edge, %adis16475_config_sync_mode.exit, %adis16475_config_sync_mode.exit.thread88.cleanup_crit_edge, %adis16475_config_sync_mode.exit.thread, %do.body23.i.cleanup_crit_edge, %do.end13.i, %do.end.i, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call21, %if.end12.cleanup_crit_edge ], [ %65, %adis16475_config_sync_mode.exit ], [ %call34, %adis16475_config_sync_mode.exit.thread88.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ %retval.3.i.ph, %adis16475_config_sync_mode.exit.thread ], [ %call44.i, %do.body23.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end13.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adis_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_initial_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_adis_setup_buffer_and_trigger(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %adis2 = getelementptr inbounds %struct.adis16475, ptr %3, i32 0, i32 2
  %burst32 = getelementptr inbounds %struct.adis16475, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %burst32 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %burst32, align 4, !range !168
  %6 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adis2, align 128
  %msg = getelementptr inbounds %struct.adis16475, ptr %3, i32 0, i32 2, i32 5
  %call3 = tail call i32 @spi_sync(ptr noundef %7, ptr noundef %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.check_burst32_crit_edge

entry.check_burst32_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_burst32

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool.not, i32 7, i32 13
  %buffer5 = getelementptr inbounds %struct.adis16475, ptr %3, i32 0, i32 2, i32 9
  %8 = ptrtoint ptr %buffer5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer5, align 16
  %add = add nuw nsw i32 %conv, 2
  %arrayidx = getelementptr i16, ptr %9, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = ptrtoint ptr %burst32 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %burst32, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  %sub.i = select i1 %tobool9.not, i32 18, i32 30
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.014.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %crc.addr.013.i = phi i16 [ %11, %if.end ], [ %sub5.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %9, i32 %i.014.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %15 to i16
  %sub5.i = sub i16 %crc.addr.013.i, %conv3.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %adis16475_validate_crc.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

adis16475_validate_crc.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub5.i)
  %cmp8.i = icmp eq i16 %sub5.i, 0
  br i1 %cmp8.i, label %if.end14, label %do.end

do.end:                                           ; preds = %adis16475_validate_crc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %adis2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adis2, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.15) #11
  br label %check_burst32

if.end14:                                         ; preds = %adis16475_validate_crc.exit
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %masklength, align 8
  %call15 = tail call i32 @_find_next_bit_be(ptr noundef %19, i32 noundef %21, i32 noundef 0) #8
  %22 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %23)
  %cmp106 = icmp ult i32 %call15, %23
  br i1 %cmp106, label %for.body.lr.ph, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %lsb_flag = getelementptr inbounds %struct.adis16475, ptr %3, i32 0, i32 5
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %3, i32 0, i32 2, i32 4
  %arrayidx18 = getelementptr i16, ptr %9, i32 %conv
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %bit.0107 = phi i32 [ %call15, %for.body.lr.ph ], [ %call58, %for.inc.for.body_crit_edge ]
  %24 = zext i32 %bit.0107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %bit.0107, label %for.body.for.inc_crit_edge [
    i32 6, label %sw.bb
    i32 0, label %for.body.sw.bb20_crit_edge
    i32 1, label %for.body.sw.bb20_crit_edge113
    i32 2, label %for.body.sw.bb20_crit_edge114
    i32 3, label %for.body.sw.bb20_crit_edge115
    i32 4, label %for.body.sw.bb20_crit_edge116
    i32 5, label %for.body.sw.bb20_crit_edge117
  ]

for.body.sw.bb20_crit_edge117:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

for.body.sw.bb20_crit_edge116:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

for.body.sw.bb20_crit_edge115:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

for.body.sw.bb20_crit_edge114:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

for.body.sw.bb20_crit_edge113:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

for.body.sw.bb20_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx18, align 2
  br label %for.inc.sink.split

sw.bb20:                                          ; preds = %for.body.sw.bb20_crit_edge, %for.body.sw.bb20_crit_edge113, %for.body.sw.bb20_crit_edge114, %for.body.sw.bb20_crit_edge115, %for.body.sw.bb20_crit_edge116, %for.body.sw.bb20_crit_edge117
  %27 = ptrtoint ptr %burst32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %burst32, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool22.not = icmp eq i8 %28, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl nuw nsw i32 %bit.0107, 1
  %add24 = add nuw nsw i32 %mul, 2
  %arrayidx25 = getelementptr i16, ptr %9, i32 %add24
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx25, align 2
  %inc27 = add i32 %i.0110, 1
  %arrayidx28 = getelementptr %struct.adis16475, ptr %3, i32 0, i32 8, i32 %i.0110
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx28, align 2
  %add30 = or i32 %mul, 1
  %arrayidx31 = getelementptr i16, ptr %9, i32 %add30
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx31, align 2
  br label %for.inc.sink.split

if.else:                                          ; preds = %sw.bb20
  %add35 = add nuw nsw i32 %bit.0107, 1
  %arrayidx36 = getelementptr i16, ptr %9, i32 %add35
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx36, align 2
  %inc38 = add i32 %i.0110, 1
  %arrayidx39 = getelementptr %struct.adis16475, ptr %3, i32 0, i32 8, i32 %i.0110
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx39, align 2
  %37 = ptrtoint ptr %lsb_flag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lsb_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool40.not = icmp eq i32 %38, 0
  br i1 %tobool40.not, label %if.else.for.inc.sink.split_crit_edge, label %land.lhs.true

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

land.lhs.true:                                    ; preds = %if.else
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 128
  %has_burst32 = getelementptr inbounds %struct.adis16475_chip_info, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %has_burst32 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_burst32, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool41.not = icmp eq i8 %42, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.for.inc.sink.split_crit_edge

land.lhs.true.for.inc.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.then42:                                        ; preds = %land.lhs.true
  %mul43 = shl nuw nsw i32 %bit.0107, 2
  %add44 = add nuw nsw i32 %mul43, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %tmp.i, align 4, !annotation !167
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis2, i32 noundef %add44, ptr noundef nonnull %tmp.i, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then42.adis_read_reg_16.exit_crit_edge

if.then42.adis_read_reg_16.exit_crit_edge:        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %adis_read_reg_16.exit

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmp.i, align 4
  %conv.i = trunc i32 %45 to i16
  br label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %if.then.i, %if.then42.adis_read_reg_16.exit_crit_edge
  %val.0 = phi i16 [ %conv.i, %if.then.i ], [ 0, %if.then42.adis_read_reg_16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %adis_read_reg_16.exit, %land.lhs.true.for.inc.sink.split_crit_edge, %if.else.for.inc.sink.split_crit_edge, %if.then23, %sw.bb
  %.sink112 = phi i32 [ 1, %sw.bb ], [ 2, %adis_read_reg_16.exit ], [ 2, %if.then23 ], [ 2, %land.lhs.true.for.inc.sink.split_crit_edge ], [ 2, %if.else.for.inc.sink.split_crit_edge ]
  %i.0110.sink = phi i32 [ %i.0110, %sw.bb ], [ %inc38, %adis_read_reg_16.exit ], [ %inc27, %if.then23 ], [ %inc38, %land.lhs.true.for.inc.sink.split_crit_edge ], [ %inc38, %if.else.for.inc.sink.split_crit_edge ]
  %.sink = phi i16 [ %26, %sw.bb ], [ %val.0, %adis_read_reg_16.exit ], [ %33, %if.then23 ], [ 0, %land.lhs.true.for.inc.sink.split_crit_edge ], [ 0, %if.else.for.inc.sink.split_crit_edge ]
  %inc = add i32 %i.0110, %.sink112
  %arrayidx19 = getelementptr %struct.adis16475, ptr %3, i32 0, i32 8, i32 %i.0110.sink
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %.sink, ptr %arrayidx19, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.0110, %for.body.for.inc_crit_edge ], [ %inc, %for.inc.sink.split ]
  %47 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_scan_mask, align 4
  %49 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %masklength, align 8
  %add57 = add nuw i32 %bit.0107, 1
  %call58 = call i32 @_find_next_bit_be(ptr noundef %48, i32 noundef %50, i32 noundef %add57) #8
  %51 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call58, %52
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %data59 = getelementptr inbounds %struct.adis16475, ptr %3, i32 0, i32 8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %scan_timestamp.i, align 8, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i105

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i105:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %55 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %58, 3
  %sub.i103 = add nsw i32 %div1.i, -1
  %arrayidx.i104 = getelementptr i64, ptr %data59, i32 %sub.i103
  %59 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %56, ptr %arrayidx.i104, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i105, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data59) #8
  br label %check_burst32

check_burst32:                                    ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end, %entry.check_burst32_crit_edge
  call fastcc void @adis16475_burst32_check(ptr noundef %3)
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %61) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adis16475_debugfs_init(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call ptr @iio_get_debugfs_dentry(ptr noundef %indio_dev) #8
  %call2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16475_serial_number_fops) #8
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16475_product_id_fops) #8
  %call4 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16475_flash_count_fops) #8
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16475_firmware_revision_fops) #8
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %1, ptr noundef nonnull @adis16475_firmware_date_fops) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %tmp.i32.i = alloca i32, align 4
  %tmp.i.i49 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 5, label %sw.bb11
    i32 10, label %sw.bb13
    i32 12, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @adis_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 0, ptr noundef %val) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %4, label %sw.bb2.cleanup_crit_edge [
    i32 4, label %sw.bb3
    i32 3, label %sw.bb6
    i32 9, label %sw.bb9
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %gyro_max_val = getelementptr inbounds %struct.adis16475_chip_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %gyro_max_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gyro_max_val, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  %11 = load ptr, ptr %1, align 128
  %gyro_max_scale = getelementptr inbounds %struct.adis16475_chip_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %gyro_max_scale to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gyro_max_scale, align 4
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %accel_max_val = getelementptr inbounds %struct.adis16475_chip_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %accel_max_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %accel_max_val, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  %20 = load ptr, ptr %1, align 128
  %accel_max_scale = getelementptr inbounds %struct.adis16475_chip_info, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %accel_max_scale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %accel_max_scale, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val2, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %temp_scale = getelementptr inbounds %struct.adis16475_chip_info, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %temp_scale to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp_scale, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %adis = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %29 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [6 x i32], ptr @adis16475_calib_regs, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %33 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %tmp.i, align 4, !annotation !167
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef %32, ptr noundef nonnull %tmp.i, i32 noundef 4) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb11.adis_read_reg_32.exit_crit_edge

sw.bb11.adis_read_reg_32.exit_crit_edge:          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %adis_read_reg_32.exit

if.then.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tmp.i, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val, align 4
  br label %adis_read_reg_32.exit

adis_read_reg_32.exit:                            ; preds = %if.then.i, %sw.bb11.adis_read_reg_32.exit_crit_edge
  %.call12 = phi i32 [ %call.i.i, %sw.bb11.adis_read_reg_32.exit_crit_edge ], [ 1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %adis.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %37 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !167
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #8
  %call.i.i.i = call i32 @__adis_read_reg(ptr noundef %adis.i, i32 noundef 92, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %adis_read_reg_16.exit.i

adis_read_reg_16.exit.i:                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tmp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %40 = and i32 %39, 7
  %arrayidx.i = getelementptr [7 x i32], ptr @adis16475_3db_freqs, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %clk_freq.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %clk_freq.i, align 128
  %adis.i50 = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %state_lock.i.i51 = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i51, i32 noundef 0) #8
  %sync_mode.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sync_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %47)
  %cmp.i52 = icmp eq i16 %47, 2
  br i1 %cmp.i52, label %if.then.i55, label %sw.bb18.if.end6.i_crit_edge

sw.bb18.if.end6.i_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i55:                                      ; preds = %sw.bb18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i49) #8
  %48 = ptrtoint ptr %tmp.i.i49 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %tmp.i.i49, align 4, !annotation !167
  %call.i.i53 = call i32 @__adis_read_reg(ptr noundef %adis.i50, i32 noundef 98, ptr noundef nonnull %tmp.i.i49, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %cmp.i.i54 = icmp eq i32 %call.i.i53, 0
  br i1 %cmp.i.i54, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %tmp.i.i49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tmp.i.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i49) #8
  %51 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %clk_freq.i, align 128
  %conv5.i = and i32 %50, 65535
  %mul.i = mul i32 %52, %conv5.i
  br label %if.end6.i

cleanup.i:                                        ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i49) #8
  br label %adis16475_get_freq.exit

if.end6.i:                                        ; preds = %cleanup.thread.i, %sw.bb18.if.end6.i_crit_edge
  %sample_rate.1.i = phi i32 [ %45, %sw.bb18.if.end6.i_crit_edge ], [ %mul.i, %cleanup.thread.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i32.i) #8
  %53 = ptrtoint ptr %tmp.i32.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %tmp.i32.i, align 4, !annotation !167
  %call.i33.i = call i32 @__adis_read_reg(ptr noundef %adis.i50, i32 noundef 100, ptr noundef nonnull %tmp.i32.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp.i34.i = icmp eq i32 %call.i33.i, 0
  br i1 %cmp.i34.i, label %if.end22, label %__adis_read_reg_16.exit37.i

__adis_read_reg_16.exit37.i:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i32.i) #8
  br label %adis16475_get_freq.exit

adis16475_get_freq.exit:                          ; preds = %__adis_read_reg_16.exit37.i, %cleanup.i
  %ret.0.i = phi i32 [ %call.i.i53, %cleanup.i ], [ %call.i33.i, %__adis_read_reg_16.exit37.i ]
  call void @mutex_unlock(ptr noundef %state_lock.i.i51) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %tmp.i32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tmp.i32.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i32.i) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i51) #8
  %conv13.i = and i32 %55, 65535
  %add.i = add nuw nsw i32 %conv13.i, 1
  %div30.i = lshr i32 %add.i, 1
  %add14.i = add i32 %div30.i, %sample_rate.1.i
  %div15.i = udiv i32 %add14.i, %add.i
  %div15.i.frozen = freeze i32 %div15.i
  %div = udiv i32 %div15.i.frozen, 1000
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div, ptr %val, align 4
  %57 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %div15.i.frozen, %57
  %mul = mul nuw nsw i32 %rem.decomposed, 1000
  %58 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %adis16475_get_freq.exit, %if.end.i, %adis_read_reg_16.exit.i, %adis_read_reg_32.exit, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end22 ], [ 1, %sw.bb9 ], [ 10, %sw.bb6 ], [ 10, %sw.bb3 ], [ %call1, %sw.bb ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %.call12, %adis_read_reg_32.exit ], [ %ret.0.i, %adis16475_get_freq.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i.i, %adis_read_reg_16.exit.i ], [ 1, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 10, label %sw.bb2
    i32 5, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mul = mul i32 %val, 1000
  %div = sdiv i32 %val2, 1000
  %add = add i32 %div, %mul
  %clk_freq.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i = icmp eq i32 %add, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %3 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_freq.i, align 128
  %adis.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %sync_mode.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sync_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp.i = icmp eq i16 %6, 2
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then2.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_freq.i, align 128
  %call.i = tail call i32 @lcm(i32 noundef %8, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2100000, i32 %call.i)
  %cmp4.i = icmp ugt i32 %call.i, 2100000
  %.call.i = select i1 %cmp4.i, i32 %8, i32 %call.i
  %.pn.i = urem i32 2100000, %.call.i
  %scaled_rate.0.i = sub nuw nsw i32 2100000, %.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %.pn.i)
  %cmp12.i = icmp ugt i32 %.pn.i, 200000
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.then2.i.if.end19.i_crit_edge

if.then2.i.if.end19.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %9 = load i8, ptr @low_rate_allow, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not.i = icmp eq i8 %9, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %8, 1899999
  %10 = urem i32 %add.i, %8
  %mul18.i = sub i32 %add.i, %10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %land.lhs.true.i.if.end19.i_crit_edge, %if.then2.i.if.end19.i_crit_edge
  %scaled_rate.1.i = phi i32 [ %scaled_rate.0.i, %land.lhs.true.i.if.end19.i_crit_edge ], [ %mul18.i, %if.then15.i ], [ %scaled_rate.0.i, %if.then2.i.if.end19.i_crit_edge ]
  %div21.i = udiv i32 %scaled_rate.1.i, %8
  %conv.i.i = and i32 %div21.i, 65535
  %call.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 98, i32 noundef %conv.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.not.i, label %if.end19.i.if.end29.i_crit_edge, label %if.end19.i.error.i_crit_edge

if.end19.i.error.i_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end19.i.if.end29.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end19.i.if.end29.i_crit_edge, %if.end.i.if.end29.i_crit_edge
  %sample_rate.1.i = phi i32 [ %scaled_rate.1.i, %if.end19.i.if.end29.i_crit_edge ], [ %4, %if.end.i.if.end29.i_crit_edge ]
  %div3188.i = lshr i32 %add, 1
  %add32.i = add i32 %sample_rate.1.i, %div3188.i
  %div33.i = udiv i32 %add32.i, %add
  %conv34.i = trunc i32 %div33.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv34.i)
  %tobool35.not.i = icmp eq i16 %conv34.i, 0
  %dec37.i = add i16 %conv34.i, -1
  %spec.select.i = select i1 %tobool35.not.i, i16 0, i16 %dec37.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %max_dec.i = getelementptr inbounds %struct.adis16475_chip_info, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %max_dec.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_dec.i, align 4
  %15 = tail call i16 @llvm.umin.i16(i16 %spec.select.i, i16 %14) #8
  %conv.i90.i = zext i16 %15 to i32
  %call.i91.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i, i32 noundef 100, i32 noundef %conv.i90.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool49.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end29.i.error.i_crit_edge

if.end29.i.error.i_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end51.i:                                       ; preds = %if.end29.i
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  %lsb_flag.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool53.not.i = icmp eq i16 %15, 0
  br i1 %tobool53.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %lsb_flag.i) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %lsb_flag.i) #8
  br label %cleanup

error.i:                                          ; preds = %if.end29.i.error.i_crit_edge, %if.end19.i.error.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.end19.i.error.i_crit_edge ], [ %call.i91.i, %if.end29.i.error.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %val)
  %cmp.not.i = icmp ugt i32 %val, 10
  br i1 %cmp.not.i, label %while.cond.1.i, label %sw.bb2.do.end15.i_crit_edge

sw.bb2.do.end15.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

while.cond.1.i:                                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %val)
  %cmp.not.1.i = icmp ugt i32 %val, 20
  br i1 %cmp.not.1.i, label %while.cond.2.i, label %while.cond.1.i.do.end15.i_crit_edge

while.cond.1.i.do.end15.i_crit_edge:              ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %val)
  %cmp.not.2.i = icmp ugt i32 %val, 40
  br i1 %cmp.not.2.i, label %while.cond.3.i, label %while.cond.2.i.do.end15.i_crit_edge

while.cond.2.i.do.end15.i_crit_edge:              ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

while.cond.3.i:                                   ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %val)
  %cmp.not.3.i = icmp ugt i32 %val, 80
  br i1 %cmp.not.3.i, label %while.cond.4.i, label %while.cond.3.i.do.end15.i_crit_edge

while.cond.3.i.do.end15.i_crit_edge:              ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

while.cond.4.i:                                   ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 164, i32 %val)
  %cmp.not.4.i = icmp ugt i32 %val, 164
  br i1 %cmp.not.4.i, label %while.cond.5.i, label %while.cond.4.i.do.end15.i_crit_edge

while.cond.4.i.do.end15.i_crit_edge:              ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

while.cond.5.i:                                   ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %val)
  %cmp.not.5.i = icmp ugt i32 %val, 360
  %not.cmp.not.5.i = xor i1 %cmp.not.5.i, true
  %spec.select.i11 = zext i1 %not.cmp.not.5.i to i32
  br label %do.end15.i

do.end15.i:                                       ; preds = %while.cond.5.i, %while.cond.4.i.do.end15.i_crit_edge, %while.cond.3.i.do.end15.i_crit_edge, %while.cond.2.i.do.end15.i_crit_edge, %while.cond.1.i.do.end15.i_crit_edge, %sw.bb2.do.end15.i_crit_edge
  %dec.lcssa.i = phi i32 [ 6, %sw.bb2.do.end15.i_crit_edge ], [ 5, %while.cond.1.i.do.end15.i_crit_edge ], [ 4, %while.cond.2.i.do.end15.i_crit_edge ], [ 3, %while.cond.3.i.do.end15.i_crit_edge ], [ 2, %while.cond.4.i.do.end15.i_crit_edge ], [ %spec.select.i11, %while.cond.5.i ]
  %tobool.not.lcssa.i = phi i1 [ false, %sw.bb2.do.end15.i_crit_edge ], [ false, %while.cond.1.i.do.end15.i_crit_edge ], [ false, %while.cond.2.i.do.end15.i_crit_edge ], [ false, %while.cond.3.i.do.end15.i_crit_edge ], [ false, %while.cond.4.i.do.end15.i_crit_edge ], [ %cmp.not.5.i, %while.cond.5.i ]
  %adis.i12 = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %state_lock.i.i.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i.i, i32 noundef 0) #8
  %call.i.i.i = tail call i32 @__adis_write_reg(ptr noundef %adis.i12, i32 noundef 92, i32 noundef %dec.lcssa.i, i32 noundef 2) #8
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool17.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool17.not.i, label %if.end19.i14, label %do.end15.i.cleanup_crit_edge

do.end15.i.cleanup_crit_edge:                     ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.i14:                                     ; preds = %do.end15.i
  %lsb_flag.i13 = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 5
  br i1 %tobool.not.lcssa.i, label %if.else.i.i16, label %if.then.i.i15

if.then.i.i15:                                    ; preds = %if.end19.i14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %lsb_flag.i13) #8
  br label %cleanup

if.else.i.i16:                                    ; preds = %if.end19.i14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %lsb_flag.i13) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adis = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %16 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [6 x i32], ptr @adis16475_calib_regs, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %state_lock.i.i17 = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i17, i32 noundef 0) #8
  %call.i.i18 = tail call i32 @__adis_write_reg(ptr noundef %adis, i32 noundef %19, i32 noundef %val, i32 noundef 4) #8
  tail call void @mutex_unlock(ptr noundef %state_lock.i.i17) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %if.else.i.i16, %if.then.i.i15, %do.end15.i.cleanup_crit_edge, %error.i, %if.else.i.i, %if.then.i.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i18, %sw.bb4 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %error.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ], [ %call.i.i.i, %do.end15.i.cleanup_crit_edge ], [ 0, %if.then.i.i15 ], [ 0, %if.else.i.i16 ]
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
declare dso_local i32 @__adis_read_reg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__adis_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adis16475_disable_clk(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #8
  tail call void @clk_unprepare(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adis16475_burst32_check(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adis1 = getelementptr inbounds %struct.adis16475, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %has_burst32 = getelementptr inbounds %struct.adis16475_chip_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %has_burst32 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_burst32, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup106_crit_edge, label %if.end

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end:                                           ; preds = %entry
  %lsb_flag = getelementptr inbounds %struct.adis16475, ptr %st, i32 0, i32 5
  %4 = ptrtoint ptr %lsb_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lsb_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %burst3243 = getelementptr inbounds %struct.adis16475, ptr %st, i32 0, i32 4
  %6 = ptrtoint ptr %burst3243 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %burst3243, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool44.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool44.not, label %if.then4, label %land.lhs.true.cleanup106_crit_edge

land.lhs.true.cleanup106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.then4:                                         ; preds = %land.lhs.true
  %call = tail call i32 @__adis_update_bits_base(ptr noundef %adis1, i32 noundef 96, i32 noundef 512, i32 noundef 512, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end25, label %if.then4.cleanup106_crit_edge

if.then4.cleanup106_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end25:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %burst3243 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %burst3243, align 4
  %burst_extra_len = getelementptr inbounds %struct.adis16475, ptr %st, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %burst_extra_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %burst_extra_len, align 4
  %xfer = getelementptr inbounds %struct.adis16475, ptr %st, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfer, align 4
  %len = getelementptr %struct.spi_transfer, ptr %11, i32 1, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add = add i32 %13, 12
  store i32 %add, ptr %len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adis16475_burst32_check.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adis16475_burst32_check, %if.then33)) #8
          to label %cleanup106 [label %if.then33], !srcloc !169

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %adis1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adis1, align 128
  %16 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xfer, align 4
  %len36 = getelementptr %struct.spi_transfer, ptr %17, i32 1, i32 2
  %18 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adis16475_burst32_check.__UNIQUE_ID_ddebug247, ptr noundef %15, ptr noundef nonnull @.str.18, i32 noundef %19) #8
  br label %cleanup106

land.lhs.true42:                                  ; preds = %if.end
  br i1 %tobool44.not, label %land.lhs.true42.cleanup106_crit_edge, label %if.then46

land.lhs.true42.cleanup106_crit_edge:             ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.then46:                                        ; preds = %land.lhs.true42
  %call71 = tail call i32 @__adis_update_bits_base(ptr noundef %adis1, i32 noundef 96, i32 noundef 512, i32 noundef 0, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then46.cleanup106_crit_edge

if.then46.cleanup106_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end74:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %burst3243 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %burst3243, align 4
  %burst_extra_len76 = getelementptr inbounds %struct.adis16475, ptr %st, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %burst_extra_len76 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %burst_extra_len76, align 4
  %xfer77 = getelementptr inbounds %struct.adis16475, ptr %st, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %xfer77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer77, align 4
  %len79 = getelementptr %struct.spi_transfer, ptr %23, i32 1, i32 2
  %24 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len79, align 4
  %sub = add i32 %25, -12
  store i32 %sub, ptr %len79, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adis16475_burst32_check.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adis16475_burst32_check, %if.then92)) #8
          to label %cleanup106 [label %if.then92], !srcloc !169

if.then92:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %adis1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adis1, align 128
  %28 = ptrtoint ptr %xfer77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xfer77, align 4
  %len97 = getelementptr %struct.spi_transfer, ptr %29, i32 1, i32 2
  %30 = ptrtoint ptr %len97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len97, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adis16475_burst32_check.__UNIQUE_ID_ddebug254, ptr noundef %27, ptr noundef nonnull @.str.19, i32 noundef %31) #8
  br label %cleanup106

cleanup106:                                       ; preds = %if.then92, %if.end74, %if.then46.cleanup106_crit_edge, %land.lhs.true42.cleanup106_crit_edge, %if.then33, %if.end25, %if.then4.cleanup106_crit_edge, %land.lhs.true.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_get_debugfs_dentry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_serial_number_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16475_show_serial_number, ptr noundef null, ptr noundef nonnull @.str.25) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_show_serial_number(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16475, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !167
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 116, ptr noundef nonnull %tmp.i, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
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
define internal i32 @adis16475_product_id_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16475_show_product_id, ptr noundef null, ptr noundef nonnull @.str.26) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_show_product_id(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16475, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !167
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 114, ptr noundef nonnull %tmp.i, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
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
define internal i32 @adis16475_flash_count_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adis16475_show_flash_count, ptr noundef null, ptr noundef nonnull @.str.27) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_show_flash_count(ptr noundef %arg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adis = getelementptr inbounds %struct.adis16475, ptr %arg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !167
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %arg, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 124, ptr noundef nonnull %tmp.i, i32 noundef 4) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_32.exit

adis_read_reg_32.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_32.exit
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_show_firmware_revision(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #8
  %adis = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !167
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 108, ptr noundef nonnull %tmp.i, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %conv = lshr i32 %5, 8
  %6 = and i32 %conv, 255
  %and = and i32 %5, 255
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 7, ptr noundef nonnull @.str.28, i32 noundef %6, i32 noundef %and) #8
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call.i.i, %adis_read_reg_16.exit ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adis16475_show_firmware_date(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tmp.i20 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %buf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #8
  %adis = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !167
  %state_lock.i.i = getelementptr inbounds %struct.adis16475, ptr %1, i32 0, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 112, ptr noundef nonnull %tmp.i, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end, label %adis_read_reg_16.exit

adis_read_reg_16.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i20) #8
  %6 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp.i20, align 4, !annotation !167
  call void @mutex_lock_nested(ptr noundef %state_lock.i.i, i32 noundef 0) #8
  %call.i.i22 = call i32 @__adis_read_reg(ptr noundef %adis, i32 noundef 110, ptr noundef nonnull %tmp.i20, i32 noundef 2) #8
  call void @mutex_unlock(ptr noundef %state_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.i23, label %if.end5, label %adis_read_reg_16.exit26

adis_read_reg_16.exit26:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #8
  %conv = lshr i32 %8, 8
  %9 = and i32 %conv, 255
  %and = and i32 %8, 255
  %conv7 = and i32 %5, 65535
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 12, ptr noundef nonnull @.str.29, i32 noundef %9, i32 noundef %and, i32 noundef %conv7)
  %call10 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %adis_read_reg_16.exit26, %adis_read_reg_16.exit
  %retval.0 = phi i32 [ %call10, %if.end5 ], [ %call.i.i, %adis_read_reg_16.exit ], [ %call.i.i22, %adis_read_reg_16.exit26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__param_low_rate_allow, !1, !"__param_low_rate_allow", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/adis16475.c", i32 123, i32 1}
!2 = !{ptr @__UNIQUE_ID_low_rate_allowtype234, !1, !"__UNIQUE_ID_low_rate_allowtype234", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_low_rate_allow235, !4, !"__UNIQUE_ID_low_rate_allow235", i1 false, i1 false}
!4 = !{!"../drivers/iio/imu/adis16475.c", i32 124, i32 1}
!5 = !{ptr @__initcall__kmod_adis16475__262_1363_adis16475_driver_init6, !6, !"__initcall__kmod_adis16475__262_1363_adis16475_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/iio/imu/adis16475.c", i32 1363, i32 1}
!7 = !{ptr @__exitcall_adis16475_driver_exit, !6, !"__exitcall_adis16475_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author263, !9, !"__UNIQUE_ID_author263", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/adis16475.c", i32 1365, i32 1}
!10 = !{ptr @__UNIQUE_ID_description264, !11, !"__UNIQUE_ID_description264", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/adis16475.c", i32 1366, i32 1}
!12 = !{ptr @__UNIQUE_ID_file265, !13, !"__UNIQUE_ID_file265", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/adis16475.c", i32 1367, i32 1}
!14 = !{ptr @__UNIQUE_ID_license266, !13, !"__UNIQUE_ID_license266", i1 false, i1 false}
!15 = !{ptr @low_rate_allow, !16, !"low_rate_allow", i1 false, i1 false}
!16 = !{!"../drivers/iio/imu/adis16475.c", i32 122, i32 13}
!17 = !{ptr @__param_str_low_rate_allow, !1, !"__param_str_low_rate_allow", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/imu/adis16475.c", i32 1358, i32 11}
!20 = !{ptr @adis16475_driver, !21, !"adis16475_driver", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/adis16475.c", i32 1356, i32 26}
!22 = !{ptr @adis16475_info, !23, !"adis16475_info", i1 false, i1 false}
!23 = !{!"../drivers/iio/imu/adis16475.c", i32 974, i32 30}
!24 = !{ptr @adis16475_calib_regs, !25, !"adis16475_calib_regs", i1 false, i1 false}
!25 = !{!"../drivers/iio/imu/adis16475.c", i32 423, i32 18}
!26 = !{ptr @adis16475_3db_freqs, !27, !"adis16475_3db_freqs", i1 false, i1 false}
!27 = !{!"../drivers/iio/imu/adis16475.c", i32 374, i32 18}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/imu/adis16475.c", i32 1224, i32 3}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @adis16475_config_irq_pin._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @adis16475_config_irq_pin._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/imu/adis16475.c", i32 1239, i32 3}
!38 = !{ptr @adis16475_config_irq_pin._entry.6, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @adis16475_config_irq_pin._entry_ptr.8, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/imu/adis16475.c", i32 1138, i32 38}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/imu/adis16475.c", i32 1143, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @adis16475_config_sync_mode._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @adis16475_config_sync_mode._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/imu/adis16475.c", i32 1169, i32 4}
!49 = !{ptr @adis16475_config_sync_mode._entry.12, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adis16475_config_sync_mode._entry_ptr.14, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/imu/adis16475.c", i32 1062, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adis16475_trigger_handler._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @adis16475_trigger_handler._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/imu/adis16475.c", i32 1019, i32 3}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @adis16475_burst32_check.__UNIQUE_ID_ddebug247, !57, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/imu/adis16475.c", i32 1035, i32 3}
!62 = !{ptr @adis16475_burst32_check.__UNIQUE_ID_ddebug254, !61, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/imu/adis16475.c", i32 242, i32 29}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/imu/adis16475.c", i32 244, i32 29}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/imu/adis16475.c", i32 246, i32 29}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/imu/adis16475.c", i32 248, i32 22}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/imu/adis16475.c", i32 250, i32 22}
!73 = !{ptr @adis16475_serial_number_fops, !74, !"adis16475_serial_number_fops", i1 false, i1 false}
!74 = !{!"../drivers/iio/imu/adis16475.c", i32 199, i32 1}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @adis16475_product_id_fops, !77, !"adis16475_product_id_fops", i1 false, i1 false}
!77 = !{!"../drivers/iio/imu/adis16475.c", i32 216, i32 1}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @adis16475_flash_count_fops, !80, !"adis16475_flash_count_fops", i1 false, i1 false}
!80 = !{!"../drivers/iio/imu/adis16475.c", i32 234, i32 1}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @adis16475_firmware_revision_fops, !83, !"adis16475_firmware_revision_fops", i1 false, i1 false}
!83 = !{!"../drivers/iio/imu/adis16475.c", i32 147, i32 37}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/imu/adis16475.c", i32 142, i32 36}
!86 = !{ptr @adis16475_firmware_date_fops, !87, !"adis16475_firmware_date_fops", i1 false, i1 false}
!87 = !{!"../drivers/iio/imu/adis16475.c", i32 178, i32 37}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/imu/adis16475.c", i32 172, i32 35}
!90 = !{ptr @adis16475_of_match, !91, !"adis16475_of_match", i1 false, i1 false}
!91 = !{!"../drivers/iio/imu/adis16475.c", i32 1259, i32 34}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/imu/adis16475.c", i32 659, i32 11}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/imu/adis16475.c", i32 674, i32 11}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/imu/adis16475.c", i32 689, i32 11}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/imu/adis16475.c", i32 704, i32 11}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/imu/adis16475.c", i32 719, i32 11}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/imu/adis16475.c", i32 734, i32 11}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/imu/adis16475.c", i32 749, i32 11}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/imu/adis16475.c", i32 764, i32 11}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/imu/adis16475.c", i32 779, i32 11}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/imu/adis16475.c", i32 794, i32 11}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/imu/adis16475.c", i32 809, i32 11}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/imu/adis16475.c", i32 824, i32 11}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/imu/adis16475.c", i32 839, i32 11}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/imu/adis16475.c", i32 854, i32 11}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/imu/adis16475.c", i32 871, i32 11}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/imu/adis16475.c", i32 888, i32 11}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/imu/adis16475.c", i32 905, i32 11}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/imu/adis16475.c", i32 922, i32 11}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/imu/adis16475.c", i32 939, i32 11}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/imu/adis16475.c", i32 956, i32 11}
!132 = !{ptr @adis16475_chip_info, !133, !"adis16475_chip_info", i1 false, i1 false}
!133 = !{!"../drivers/iio/imu/adis16475.c", i32 657, i32 41}
!134 = !{ptr @adis16475_channels, !135, !"adis16475_channels", i1 false, i1 false}
!135 = !{!"../drivers/iio/imu/adis16475.c", i32 556, i32 35}
!136 = !{ptr @adis16475_sync_mode, !137, !"adis16475_sync_mode", i1 false, i1 false}
!137 = !{!"../drivers/iio/imu/adis16475.c", i32 638, i32 36}
!138 = !{ptr @adis16475_timeouts, !139, !"adis16475_timeouts", i1 false, i1 false}
!139 = !{!"../drivers/iio/imu/adis16475.c", i32 645, i32 34}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/imu/adis16475.c", i32 601, i32 36}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/iio/imu/adis16475.c", i32 602, i32 36}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/imu/adis16475.c", i32 603, i32 30}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/imu/adis16475.c", i32 604, i32 34}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/iio/imu/adis16475.c", i32 605, i32 33}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/imu/adis16475.c", i32 606, i32 33}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/iio/imu/adis16475.c", i32 607, i32 30}
!154 = !{ptr @adis16475_status_error_msgs, !155, !"adis16475_status_error_msgs", i1 false, i1 false}
!155 = !{!"../drivers/iio/imu/adis16475.c", i32 600, i32 27}
!156 = !{ptr @adis1650x_timeouts, !157, !"adis1650x_timeouts", i1 false, i1 false}
!157 = !{!"../drivers/iio/imu/adis16475.c", i32 651, i32 34}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"auto-init"}
!168 = !{i8 0, i8 2}
!169 = !{i64 2148789006, i64 2148789011, i64 2148789024, i64 2148789068, i64 2148789102, i64 2148789123}
