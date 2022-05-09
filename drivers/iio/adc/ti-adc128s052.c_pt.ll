; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-adc128s052.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-adc128s052.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adc128_configuration = type { ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adc128 = type { ptr, ptr, %struct.mutex, [28 x i8], [2 x i8], [126 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ti_adc128s052__290_224_adc128_driver_init6 = internal global ptr @adc128_driver_init, section ".initcall6.init", align 4
@adc128_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adc128_id, ptr @adc128_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adc128_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adc128_driver_exit = internal global ptr @adc128_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [71 x i8] c"ti_adc128s052.author=Angelo Compagnucci <angelo.compagnucci@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"ti_adc128s052.description=Texas Instruments ADC128S052\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"ti_adc128s052.file=drivers/iio/adc/ti-adc128s052\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"ti_adc128s052.license=GPL v2\00", section ".modinfo", align 1
@adc128_id = internal constant { [8 x %struct.spi_device_id], [64 x i8] } { [8 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adc128s052\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adc122s021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adc122s051\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adc122s101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adc124s021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adc124s051\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adc124s101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc128s052\00", [21 x i8] zeroinitializer }, align 32
@adc128_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc128s052\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc122s021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc122s051\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc122s101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc124s021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc124s051\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc124s101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@adc128_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adc128_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adc128_config = internal constant { [3 x %struct.adc128_configuration], [40 x i8] } { [3 x %struct.adc128_configuration] [%struct.adc128_configuration { ptr @adc128s052_channels, i8 8 }, %struct.adc128_configuration { ptr @adc122s021_channels, i8 2 }, %struct.adc128_configuration { ptr @adc124s021_channels, i8 4 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@adc128_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@adc128s052_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [160 x i8] zeroinitializer }, align 32
@adc122s021_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@adc124s021_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"adc128_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 215, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"adc128_id\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 195, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 217, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"adc128_of_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 183, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"adc128_info\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 131, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"adc128_config\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 125, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 166, i32 43 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 178, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"adc128s052_channels\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 102, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"adc122s021_channels\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 113, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"adc124s021_channels\00", align 1
@___asan_gen_.37 = private constant [35 x i8] c"../drivers/iio/adc/ti-adc128s052.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 118, i32 35 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_adc128_driver_exit, ptr @__initcall__kmod_ti_adc128s052__290_224_adc128_driver_init6, ptr @adc128_driver_exit, ptr @adc128_driver, ptr @adc128_id, ptr @.str, ptr @adc128_of_match, ptr @adc128_info, ptr @adc128_config, ptr @.str.1, ptr @adc128_probe.__key, ptr @.str.2, ptr @adc128s052_channels, ptr @adc122s021_channels, ptr @adc124s021_channels], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_id to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128s052_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc122s021_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc124s021_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adc128_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc128_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adc128_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_fwnode(ptr noundef %spi) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call ptr @device_get_match_data(ptr noundef %spi) #4
  %0 = ptrtoint ptr %call2 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %config.0 = phi i32 [ %0, %if.then ], [ %2, %if.else ]
  %call5 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %4, align 128
  %call11 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %name12 = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 15
  %6 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %name12, align 8
  %7 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call5, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 17
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adc128_info, ptr %info, align 8
  %arrayidx = getelementptr [3 x %struct.adc128_configuration], ptr @adc128_config, i32 0, i32 %config.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %channels13 = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 13
  %11 = ptrtoint ptr %channels13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %channels13, align 8
  %num_channels = getelementptr [3 x %struct.adc128_configuration], ptr @adc128_config, i32 0, i32 %config.0, i32 1
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %13 to i32
  %num_channels15 = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %num_channels15, align 4
  %call17 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #4
  %reg = getelementptr inbounds %struct.adc128, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %call25 = tail call i32 @regulator_enable(ptr noundef %call17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adc128_disable_regulator, ptr noundef %18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %18) #4
  br label %cleanup

do.body:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.adc128, ptr %4, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @adc128_probe.__key) #4
  %call36 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call5, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %devm_add_action_or_reset.exit, %if.end23.cleanup_crit_edge, %if.then20, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then20 ], [ %call36, %do.body ], [ -12, %if.end.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adc128_disable_regulator(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i35.i = alloca %struct.spi_message, align 4
  %t.i36.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
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
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel1 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %3 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel1, align 4
  %conv = trunc i32 %4 to i8
  %lock.i = getelementptr inbounds %struct.adc128, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %shl.i = shl i8 %conv, 3
  %buffer.i = getelementptr inbounds %struct.adc128, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %shl.i, ptr %buffer.i, align 128
  %arrayidx3.i = getelementptr %struct.adc128, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx3.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.spi_write.exit.i_crit_edge

sw.bb.spi_write.exit.i_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cleanup

if.end.i:                                         ; preds = %spi_write.exit.i
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i36.i) #4
  %25 = call ptr @memset(ptr %t.i36.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i36.i, i32 0, i32 1
  %26 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buffer.i, ptr %rx_buf.i.i, align 4
  %len1.i37.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i36.i, i32 0, i32 2
  %27 = ptrtoint ptr %len1.i37.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len1.i37.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i35.i) #4
  %28 = getelementptr inbounds i8, ptr %msg.i.i35.i, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i35.i, ptr %msg.i.i35.i, align 4
  %prev.i.i.i.i.i.i38.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i35.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i35.i, ptr %prev.i.i.i.i.i.i38.i, align 4
  %resources.i.i.i.i.i39.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i35.i, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i.i39.i, ptr %resources.i.i.i.i.i39.i, align 4
  %prev.i2.i.i.i.i.i40.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i35.i, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i.i39.i, ptr %prev.i2.i.i.i.i.i40.i, align 4
  %transfer_list.i.i.i.i41.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i36.i, i32 0, i32 18
  %call.i.i.i.i.i.i42.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i41.i, ptr noundef nonnull %msg.i.i35.i, ptr noundef nonnull %msg.i.i35.i) #4
  br i1 %call.i.i.i.i.i.i42.i, label %if.end.i.i.i.i.i.i44.i, label %if.end.i.spi_read.exit.i_crit_edge

if.end.i.spi_read.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i44.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i.i41.i, ptr %prev.i.i.i.i.i.i38.i, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i35.i, ptr %transfer_list.i.i.i.i41.i, align 4
  %prev3.i.i.i.i.i.i43.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i36.i, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i35.i, ptr %prev3.i.i.i.i.i.i43.i, align 4
  %37 = ptrtoint ptr %msg.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i.i41.i, ptr %msg.i.i35.i, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i44.i, %if.end.i.spi_read.exit.i_crit_edge
  %call.i.i45.i = call i32 @spi_sync(ptr noundef %24, ptr noundef nonnull %msg.i.i35.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i35.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i36.i) #4
  call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i)
  %cmp11.i = icmp slt i32 %call.i.i45.i, 0
  br i1 %cmp11.i, label %spi_read.exit.i.cleanup_crit_edge, label %adc128_adc_conversion.exit

spi_read.exit.i.cleanup_crit_edge:                ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

adc128_adc_conversion.exit:                       ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buffer.i, align 128
  %conv17.i = zext i8 %39 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3.i, align 1
  %conv21.i = zext i8 %41 to i32
  %shl18.masked.i = and i32 %shl18.i, 3840
  %and.i = or i32 %shl18.masked.i, %conv21.i
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.adc128, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg, align 4
  %call5 = tail call i32 @regulator_get_voltage(ptr noundef %44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %if.end9

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %div20 = udiv i32 %call5, 1000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div20, ptr %val, align 4
  %46 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 12, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.bb4.cleanup_crit_edge, %adc128_adc_conversion.exit, %spi_read.exit.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end9 ], [ 1, %adc128_adc_conversion.exit ], [ %call5, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i45.i, %spi_read.exit.i.cleanup_crit_edge ], [ %call.i.i.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_ti_adc128s052__290_224_adc128_driver_init6, !1, !"__initcall__kmod_ti_adc128s052__290_224_adc128_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 224, i32 1}
!2 = !{ptr @__exitcall_adc128_driver_exit, !1, !"__exitcall_adc128_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 226, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 227, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 228, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 217, i32 11}
!12 = !{ptr @adc128_driver, !13, !"adc128_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 215, i32 26}
!14 = !{ptr @adc128_id, !15, !"adc128_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 195, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 166, i32 43}
!18 = !{ptr @adc128_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 178, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @adc128_info, !22, !"adc128_info", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 131, i32 30}
!23 = !{ptr @adc128_config, !24, !"adc128_config", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 125, i32 42}
!25 = !{ptr @adc128s052_channels, !26, !"adc128s052_channels", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 102, i32 35}
!27 = !{ptr @adc122s021_channels, !28, !"adc122s021_channels", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 113, i32 35}
!29 = !{ptr @adc124s021_channels, !30, !"adc124s021_channels", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 118, i32 35}
!31 = !{ptr @adc128_of_match, !32, !"adc128_of_match", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/ti-adc128s052.c", i32 183, i32 34}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
