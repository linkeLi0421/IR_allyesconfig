; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/berlin2-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/berlin2-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.berlin2_adc_priv = type { ptr, %struct.mutex, %struct.wait_queue_head, i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_berlin2_adc__187_363_berlin2_adc_driver_init6 = internal global ptr @berlin2_adc_driver_init, section ".initcall6.init", align 4
@berlin2_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @berlin2_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @berlin2_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_berlin2_adc_driver_exit = internal global ptr @berlin2_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [70 x i8] c"berlin2_adc.author=Antoine Tenart <antoine.tenart@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [51 x i8] c"berlin2_adc.description=Marvell Berlin2 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [45 x i8] c"berlin2_adc.file=drivers/iio/adc/berlin2-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [27 x i8] c"berlin2_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"berlin2-adc\00", [20 x i8] zeroinitializer }, align 32
@berlin2_adc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tsen\00", [27 x i8] zeroinitializer }, align 32
@berlin2_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&priv->wq\00", [22 x i8] zeroinitializer }, align 32
@berlin2_adc_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@berlin2_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @berlin2_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@berlin2_adc_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.7, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.8, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 9, i32 6, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 0 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/adc/berlin2-adc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel0\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel1\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel2\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel3\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel4\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel5\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel6\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel7\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"berlin2_adc_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 356, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 358, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"berlin2_adc_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 350, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 309, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 313, i32 43 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 327, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 328, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"berlin2_adc_info\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 279, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"berlin2_adc_channels\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 89, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 126, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 90, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 91, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 92, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 93, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 94, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 95, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 98, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [33 x i8] c"../drivers/iio/adc/berlin2-adc.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 103, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_berlin2_adc_driver_exit, ptr @__initcall__kmod_berlin2_adc__187_363_berlin2_adc_driver_init6, ptr @berlin2_adc_driver_exit, ptr @berlin2_adc_driver, ptr @.str, ptr @berlin2_adc_match, ptr @.str.1, ptr @.str.2, ptr @berlin2_adc_probe.__key, ptr @.str.3, ptr @berlin2_adc_probe.__key.4, ptr @.str.5, ptr @berlin2_adc_info, ptr @berlin2_adc_channels, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_adc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_adc_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_adc_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @berlin2_adc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @berlin2_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @berlin2_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_parent(ptr noundef %1) #5
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 156) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @syscon_node_to_regmap(ptr noundef %call) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %3, align 4
  tail call void @of_node_put(ptr noundef %call) #5
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call11, ptr noundef nonnull @berlin2_adc_irq, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef nonnull %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i88 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef nonnull @berlin2_adc_tsen_irq, ptr noundef null, i32 noundef 0, ptr noundef %15, ptr noundef nonnull %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool29.not = icmp eq i32 %call.i88, 0
  br i1 %tobool29.not, label %do.body, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end23
  %wq = getelementptr inbounds %struct.berlin2_adc_priv, ptr %3, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.3, ptr noundef nonnull @berlin2_adc_probe.__key) #5
  %lock = getelementptr inbounds %struct.berlin2_adc_priv, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @berlin2_adc_probe.__key.4) #5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %do.body.dev_name.exit_crit_edge ]
  %name37 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %20 = ptrtoint ptr %name37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %name37, align 8
  %21 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %call2, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @berlin2_adc_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @berlin2_adc_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %24 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9, ptr %num_channels, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 20, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call42 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %dev_name.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then7 ], [ %call47, %if.end45 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call.i, %if.end17.cleanup_crit_edge ], [ %call.i88, %if.end23.cleanup_crit_edge ], [ %call42, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_adc_irq(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !57
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 28, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %data = getelementptr inbounds %struct.berlin2_adc_priv, ptr %1, i32 0, i32 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 32, ptr noundef %data) #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %and5 = and i32 %10, 1023
  store i32 %and5, ptr %data, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and6 = and i32 %12, -65536
  store i32 %and6, ptr %val, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call8 = call i32 @regmap_write(ptr noundef %14, i32 noundef 28, i32 noundef %and6) #5
  %data_available = getelementptr inbounds %struct.berlin2_adc_priv, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %data_available to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %data_available, align 4
  %wq = getelementptr inbounds %struct.berlin2_adc_priv, ptr %1, i32 0, i32 2
  call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_adc_tsen_irq(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !57
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 36, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %data = getelementptr inbounds %struct.berlin2_adc_priv, ptr %1, i32 0, i32 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 40, ptr noundef %data) #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %and5 = and i32 %10, 1023
  store i32 %and5, ptr %data, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and6 = and i32 %12, -2
  store i32 %and6, ptr %val, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call8 = call i32 @regmap_write(ptr noundef %14, i32 noundef 36, i32 noundef %and6) #5
  %data_available = getelementptr inbounds %struct.berlin2_adc_priv, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %data_available to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %data_available, align 4
  %wq = getelementptr inbounds %struct.berlin2_adc_priv, ptr %1, i32 0, i32 2
  call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @berlin2_adc_powerdown, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %data, i32 noundef 20, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @berlin2_adc_powerdown(ptr noundef %regmap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 20, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_adc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %__wq_entry.i27 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.berlin2_adc_priv, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %shl1.i = shl i32 65536, %4
  %call2.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 28, i32 noundef %shl1.i) #5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %shl4.i = shl i32 %4, 5
  %or.i = or i32 %shl4.i, 4096
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 20, i32 noundef 12768, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 127) #5
  %data_available.i = getelementptr inbounds %struct.berlin2_adc_priv, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %data_available.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data_available.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then15.i, label %.thread107.i

.thread107.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i90100.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 28, i32 noundef %shl1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %berlin2_adc_read.exit

if.then15.i:                                      ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  %15 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #5
  %wq.i = getelementptr inbounds %struct.berlin2_adc_priv, ptr %6, i32 0, i32 2
  %call18112.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #5
  %16 = ptrtoint ptr %data_available.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data_available.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not113.not.i = icmp eq i8 %17, 0
  br i1 %tobool21.not113.not.i, label %if.then15.i.if.end37.i_crit_edge, label %if.then15.i.if.end44.i_crit_edge

if.then15.i.if.end44.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.then15.i.if.end37.i_crit_edge:                 ; preds = %if.then15.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %cleanup.i.if.end37.i_crit_edge, %if.then15.i.if.end37.i_crit_edge
  %__ret16.1116.i = phi i32 [ %__ret16.1.i, %cleanup.i.if.end37.i_crit_edge ], [ 100, %if.then15.i.if.end37.i_crit_edge ]
  %call18115.i = phi i32 [ %call18.i, %cleanup.i.if.end37.i_crit_edge ], [ %call18112.i, %if.then15.i.if.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18115.i)
  %tobool38.not.i = icmp eq i32 %call18115.i, 0
  br i1 %tobool38.not.i, label %cleanup.i, label %if.end44.thread102.i

if.end44.thread102.i:                             ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %call.i90104.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 28, i32 noundef %shl1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %25

cleanup.i:                                        ; preds = %if.end37.i
  %call41.i = call i32 @schedule_timeout(i32 noundef %__ret16.1116.i) #5
  %call18.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #5
  %20 = ptrtoint ptr %data_available.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data_available.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not.i = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool25.not.i = icmp eq i32 %call41.i, 0
  %spec.store.select64.i = select i1 %tobool25.not.i, i32 1, i32 %call41.i
  %__ret16.1.i = select i1 %tobool21.not.i, i32 %call41.i, i32 %spec.store.select64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i)
  %tobool31.not.i = icmp eq i32 %__ret16.1.i, 0
  %not.tobool21.not.i = xor i1 %tobool21.not.i, true
  %22 = select i1 %not.tobool21.not.i, i1 true, i1 %tobool31.not.i
  br i1 %22, label %cleanup.i.if.end44.i_crit_edge, label %cleanup.i.if.end37.i_crit_edge

cleanup.i.if.end37.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

cleanup.i.if.end44.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %cleanup.i.if.end44.i_crit_edge, %if.then15.i.if.end44.i_crit_edge
  %__ret16.1.lcssa.i = phi i32 [ 100, %if.then15.i.if.end44.i_crit_edge ], [ %__ret16.1.i, %cleanup.i.if.end44.i_crit_edge ]
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %6, align 4
  %call.i90.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 28, i32 noundef %shl1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.lcssa.i)
  %cmp.i = icmp eq i32 %__ret16.1.lcssa.i, 0
  br i1 %cmp.i, label %if.end44.i.berlin2_adc_read.exit.thread_crit_edge, label %if.end44.i._crit_edge

if.end44.i._crit_edge:                            ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %25

if.end44.i.berlin2_adc_read.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %berlin2_adc_read.exit.thread

25:                                               ; preds = %if.end44.i._crit_edge, %if.end44.thread102.i
  %26 = phi i32 [ %__ret16.1.lcssa.i, %if.end44.i._crit_edge ], [ %call18115.i, %if.end44.thread102.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp52.i = icmp slt i32 %26, 0
  br i1 %cmp52.i, label %.berlin2_adc_read.exit.thread_crit_edge, label %.berlin2_adc_read.exit_crit_edge

.berlin2_adc_read.exit_crit_edge:                 ; preds = %25
  call void @__sanitizer_cov_trace_pc() #7
  br label %berlin2_adc_read.exit

.berlin2_adc_read.exit.thread_crit_edge:          ; preds = %25
  call void @__sanitizer_cov_trace_pc() #7
  br label %berlin2_adc_read.exit.thread

berlin2_adc_read.exit.thread:                     ; preds = %.berlin2_adc_read.exit.thread_crit_edge, %if.end44.i.berlin2_adc_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %if.end44.i.berlin2_adc_read.exit.thread_crit_edge ], [ %26, %.berlin2_adc_read.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #5
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i.ph, ptr %val, align 4
  br label %34

berlin2_adc_read.exit:                            ; preds = %.berlin2_adc_read.exit_crit_edge, %.thread107.i
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %call.i91.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 20, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %data58.i = getelementptr inbounds %struct.berlin2_adc_priv, ptr %6, i32 0, i32 4
  %30 = ptrtoint ptr %data58.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data58.i, align 4
  %32 = ptrtoint ptr %data_available.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %data_available.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #5
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1 = icmp slt i32 %31, 0
  br i1 %cmp1, label %berlin2_adc_read.exit._crit_edge, label %berlin2_adc_read.exit.cleanup_crit_edge

berlin2_adc_read.exit.cleanup_crit_edge:          ; preds = %berlin2_adc_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

berlin2_adc_read.exit._crit_edge:                 ; preds = %berlin2_adc_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %34

34:                                               ; preds = %berlin2_adc_read.exit._crit_edge, %berlin2_adc_read.exit.thread
  %retval.0.i51 = phi i32 [ %retval.0.i.ph, %berlin2_adc_read.exit.thread ], [ %31, %berlin2_adc_read.exit._crit_edge ]
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %35 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %36)
  %cmp6.not = icmp eq i32 %36, 9
  br i1 %cmp6.not, label %if.end8, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  %priv.i.i28 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %37 = ptrtoint ptr %priv.i.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i.i28, align 8
  %lock.i29 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %38, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i29, i32 noundef 0) #5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 36, i32 noundef 2) #5
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %call.i.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 20, i32 noundef 537395200, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %38, align 4
  %call.i87.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 116, i32 noundef 65011968, i32 noundef 14680320, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 178) #5
  %data_available.i31 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %38, i32 0, i32 3
  %45 = ptrtoint ptr %data_available.i31 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data_available.i31, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i32 = icmp eq i8 %46, 0
  br i1 %tobool.not.i32, label %if.then15.i34, label %.thread105.i

.thread105.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %38, align 4
  %call.i8898.i = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 36, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %berlin2_adc_tsen_read.exit

if.then15.i34:                                    ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i27) #5
  %49 = call ptr @memset(ptr %__wq_entry.i27, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i27, i32 noundef 0) #5
  %wq.i33 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %38, i32 0, i32 2
  %call18110.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i33, ptr noundef nonnull %__wq_entry.i27, i32 noundef 1) #5
  %50 = ptrtoint ptr %data_available.i31 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %data_available.i31, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool21.not111.not.i = icmp eq i8 %51, 0
  br i1 %tobool21.not111.not.i, label %if.then15.i34.if.end37.i36_crit_edge, label %if.then15.i34.if.end44.i47_crit_edge

if.then15.i34.if.end44.i47_crit_edge:             ; preds = %if.then15.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i47

if.then15.i34.if.end37.i36_crit_edge:             ; preds = %if.then15.i34
  br label %if.end37.i36

if.end37.i36:                                     ; preds = %cleanup.i44.if.end37.i36_crit_edge, %if.then15.i34.if.end37.i36_crit_edge
  %__ret16.1114.i = phi i32 [ %__ret16.1.i41, %cleanup.i44.if.end37.i36_crit_edge ], [ 100, %if.then15.i34.if.end37.i36_crit_edge ]
  %call18113.i = phi i32 [ %call18.i38, %cleanup.i44.if.end37.i36_crit_edge ], [ %call18110.i, %if.then15.i34.if.end37.i36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18113.i)
  %tobool38.not.i35 = icmp eq i32 %call18113.i, 0
  br i1 %tobool38.not.i35, label %cleanup.i44, label %if.end44.thread100.i

if.end44.thread100.i:                             ; preds = %if.end37.i36
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i27) #5
  %52 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %38, align 4
  %call.i88102.i = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 36, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %59

cleanup.i44:                                      ; preds = %if.end37.i36
  %call41.i37 = call i32 @schedule_timeout(i32 noundef %__ret16.1114.i) #5
  %call18.i38 = call i32 @prepare_to_wait_event(ptr noundef %wq.i33, ptr noundef nonnull %__wq_entry.i27, i32 noundef 1) #5
  %54 = ptrtoint ptr %data_available.i31 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data_available.i31, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool21.not.i39 = icmp eq i8 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i37)
  %tobool25.not.i40 = icmp eq i32 %call41.i37, 0
  %spec.store.select62.i = select i1 %tobool25.not.i40, i32 1, i32 %call41.i37
  %__ret16.1.i41 = select i1 %tobool21.not.i39, i32 %call41.i37, i32 %spec.store.select62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i41)
  %tobool31.not.i42 = icmp eq i32 %__ret16.1.i41, 0
  %not.tobool21.not.i43 = xor i1 %tobool21.not.i39, true
  %56 = select i1 %not.tobool21.not.i43, i1 true, i1 %tobool31.not.i42
  br i1 %56, label %cleanup.i44.if.end44.i47_crit_edge, label %cleanup.i44.if.end37.i36_crit_edge

cleanup.i44.if.end37.i36_crit_edge:               ; preds = %cleanup.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i36

cleanup.i44.if.end44.i47_crit_edge:               ; preds = %cleanup.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i47

if.end44.i47:                                     ; preds = %cleanup.i44.if.end44.i47_crit_edge, %if.then15.i34.if.end44.i47_crit_edge
  %__ret16.1.lcssa.i45 = phi i32 [ 100, %if.then15.i34.if.end44.i47_crit_edge ], [ %__ret16.1.i41, %cleanup.i44.if.end44.i47_crit_edge ]
  call void @finish_wait(ptr noundef %wq.i33, ptr noundef nonnull %__wq_entry.i27) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i27) #5
  %57 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %38, align 4
  %call.i88.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 36, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.lcssa.i45)
  %cmp.i46 = icmp eq i32 %__ret16.1.lcssa.i45, 0
  br i1 %cmp.i46, label %if.end44.i47.berlin2_adc_tsen_read.exit.thread_crit_edge, label %if.end44.i47._crit_edge

if.end44.i47._crit_edge:                          ; preds = %if.end44.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %59

if.end44.i47.berlin2_adc_tsen_read.exit.thread_crit_edge: ; preds = %if.end44.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %berlin2_adc_tsen_read.exit.thread

59:                                               ; preds = %if.end44.i47._crit_edge, %if.end44.thread100.i
  %60 = phi i32 [ %__ret16.1.lcssa.i45, %if.end44.i47._crit_edge ], [ %call18113.i, %if.end44.thread100.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp50.i = icmp slt i32 %60, 0
  br i1 %cmp50.i, label %.berlin2_adc_tsen_read.exit.thread_crit_edge, label %.berlin2_adc_tsen_read.exit_crit_edge

.berlin2_adc_tsen_read.exit_crit_edge:            ; preds = %59
  call void @__sanitizer_cov_trace_pc() #7
  br label %berlin2_adc_tsen_read.exit

.berlin2_adc_tsen_read.exit.thread_crit_edge:     ; preds = %59
  call void @__sanitizer_cov_trace_pc() #7
  br label %berlin2_adc_tsen_read.exit.thread

berlin2_adc_tsen_read.exit.thread:                ; preds = %.berlin2_adc_tsen_read.exit.thread_crit_edge, %if.end44.i47.berlin2_adc_tsen_read.exit.thread_crit_edge
  %retval.0.i48.ph = phi i32 [ -110, %if.end44.i47.berlin2_adc_tsen_read.exit.thread_crit_edge ], [ %60, %.berlin2_adc_tsen_read.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i29) #5
  br label %cleanup

berlin2_adc_tsen_read.exit:                       ; preds = %.berlin2_adc_tsen_read.exit_crit_edge, %.thread105.i
  %61 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %38, align 4
  %call.i89.i = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 116, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %data56.i = getelementptr inbounds %struct.berlin2_adc_priv, ptr %38, i32 0, i32 4
  %63 = ptrtoint ptr %data56.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data56.i, align 4
  %65 = ptrtoint ptr %data_available.i31 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %data_available.i31, align 4
  call void @mutex_unlock(ptr noundef %lock.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp10 = icmp slt i32 %64, 0
  br i1 %cmp10, label %berlin2_adc_tsen_read.exit.cleanup_crit_edge, label %if.end12

berlin2_adc_tsen_read.exit.cleanup_crit_edge:     ; preds = %berlin2_adc_tsen_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %berlin2_adc_tsen_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %64)
  %cmp13 = icmp ugt i32 %64, 2047
  %sub = add nsw i32 %64, -4096
  %spec.select = select i1 %cmp13, i32 %sub, i32 %64
  %mul = mul i32 %spec.select, 100000
  %div = sdiv i32 %mul, 264
  %sub16 = add nsw i32 %div, -270000
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub16, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %berlin2_adc_tsen_read.exit.cleanup_crit_edge, %berlin2_adc_tsen_read.exit.thread, %sw.bb4.cleanup_crit_edge, %34, %berlin2_adc_read.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end12 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ %64, %berlin2_adc_tsen_read.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i51, %34 ], [ 1, %berlin2_adc_read.exit.cleanup_crit_edge ], [ %retval.0.i48.ph, %berlin2_adc_tsen_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_berlin2_adc__187_363_berlin2_adc_driver_init6, !1, !"__initcall__kmod_berlin2_adc__187_363_berlin2_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_berlin2_adc_driver_exit, !1, !"__exitcall_berlin2_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 365, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 366, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 367, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 358, i32 12}
!12 = !{ptr @berlin2_adc_driver, !13, !"berlin2_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 356, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 309, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 313, i32 43}
!18 = !{ptr @berlin2_adc_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 327, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @berlin2_adc_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 328, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @berlin2_adc_info, !25, !"berlin2_adc_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 279, i32 30}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 126, i32 8}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 90, i32 2}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 91, i32 2}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 92, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 93, i32 2}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 94, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 95, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 98, i32 22}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 103, i32 2}
!44 = !{ptr @berlin2_adc_channels, !45, !"berlin2_adc_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 89, i32 35}
!46 = !{ptr @berlin2_adc_match, !47, !"berlin2_adc_match", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/berlin2-adc.c", i32 350, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
