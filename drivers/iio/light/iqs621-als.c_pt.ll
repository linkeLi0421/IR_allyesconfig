; ModuleID = '/llk/IR_all_yes/drivers/iio/light/iqs621-als.c_pt.bc'
source_filename = "../drivers/iio/light/iqs621-als.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.iqs621_als_private = type { ptr, ptr, %struct.notifier_block, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.iqs62x_dev_desc = type { ptr, ptr, i32, i8, i8, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.iqs62x_core = type { ptr, ptr, ptr, %struct.blocking_notifier_head, %struct.list_head, %struct.completion, %struct.completion, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iqs62x_event_data = type { i16, i8, i8, i8 }

@__initcall__kmod_iqs621_als__170_613_iqs621_als_platform_driver_init6 = internal global ptr @iqs621_als_platform_driver_init, section ".initcall6.init", align 4
@iqs621_als_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iqs621_als_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iqs621_als_platform_driver_exit = internal global ptr @iqs621_als_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [50 x i8] c"iqs621_als.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [63 x i8] c"iqs621_als.description=Azoteq IQS621/622 Ambient Light Sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [45 x i8] c"iqs621_als.file=drivers/iio/light/iqs621-als\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"iqs621_als.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [37 x i8] c"iqs621_als.alias=platform:iqs621-als\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs621-als\00", [21 x i8] zeroinitializer }, align 32
@iqs622_als_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 12, i32 20, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @iqs621_als_range_events, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 21, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 23, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @iqs622_als_prox_events, i32 1, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@iqs621_als_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 22, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @iqs621_als_range_events, i32 1, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 23, i32 0, %struct.anon.43 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @iqs621_als_light_events, i32 3, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@iqs621_als_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @iqs621_als_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iqs621_als_read_event_config, ptr @iqs621_als_write_event_config, ptr @iqs621_als_read_event_value, ptr @iqs621_als_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@iqs621_als_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&iqs621_als->lock\00", [46 x i8] zeroinitializer }, align 32
@iqs621_als_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register notifier: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iqs621_als_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/light/iqs621-als.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iqs621_als_probe._entry_ptr = internal global ptr @iqs621_als_probe._entry, section ".printk_index", align 4
@iqs621_als_range_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 5, i32 0, i32 1, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@iqs622_als_prox_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 3, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@iqs621_als_light_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@iqs621_als_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-initialize device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iqs621_als_notifier\00", [44 x i8] zeroinitializer }, align 32
@iqs621_als_notifier._entry_ptr = internal global ptr @iqs621_als_notifier._entry, section ".printk_index", align 4
@iqs621_als_notifier_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to unregister notifier: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iqs621_als_notifier_unregister\00", [33 x i8] zeroinitializer }, align 32
@iqs621_als_notifier_unregister._entry_ptr = internal global ptr @iqs621_als_notifier_unregister._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"iqs621_als_platform_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 607, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 609, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"iqs622_als_channels\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 515, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"iqs621_als_channels\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 489, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"iqs621_als_info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 455, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 588, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 594, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"iqs621_als_range_events\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 463, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"iqs622_als_prox_events\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 506, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"iqs621_als_light_events\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 471, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 115, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [34 x i8] c"../drivers/iio/light/iqs621-als.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 201, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_iqs621_als_platform_driver_exit, ptr @__initcall__kmod_iqs621_als__170_613_iqs621_als_platform_driver_init6, ptr @iqs621_als_notifier._entry, ptr @iqs621_als_notifier._entry_ptr, ptr @iqs621_als_notifier_unregister._entry, ptr @iqs621_als_notifier_unregister._entry_ptr, ptr @iqs621_als_platform_driver_exit, ptr @iqs621_als_probe._entry, ptr @iqs621_als_probe._entry_ptr, ptr @iqs621_als_platform_driver, ptr @.str, ptr @iqs622_als_channels, ptr @iqs621_als_channels, ptr @iqs621_als_info, ptr @iqs621_als_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iqs621_als_range_events, ptr @iqs622_als_prox_events, ptr @iqs621_als_light_events, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs622_als_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_range_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs622_als_prox_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_light_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_als_notifier_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iqs621_als_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iqs621_als_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @iqs621_als_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !58
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 124) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %6, align 4
  %indio_dev5 = getelementptr inbounds %struct.iqs621_als_private, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %indio_dev5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %indio_dev5, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %prod_num = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %prod_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %prod_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %12)
  %cmp = icmp eq i8 %12, 66
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @regmap_read(ptr noundef %14, i32 noundef 146, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %16 to i8
  %thresh_prox = getelementptr inbounds %struct.iqs621_als_private, ptr %6, i32 0, i32 12
  %17 = ptrtoint ptr %thresh_prox to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %thresh_prox, align 4
  %ir_flags_mask = getelementptr inbounds %struct.iqs621_als_private, ptr %6, i32 0, i32 8
  %18 = ptrtoint ptr %ir_flags_mask to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %ir_flags_mask, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end
  %call14 = call i32 @regmap_read(ptr noundef %14, i32 noundef 129, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %conv18 = trunc i32 %20 to i8
  %thresh_light = getelementptr inbounds %struct.iqs621_als_private, ptr %6, i32 0, i32 10
  %21 = ptrtoint ptr %thresh_light to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv18, ptr %thresh_light, align 2
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_read(ptr noundef %23, i32 noundef 128, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %conv24 = trunc i32 %25 to i8
  %thresh_dark = getelementptr inbounds %struct.iqs621_als_private, ptr %6, i32 0, i32 11
  %26 = ptrtoint ptr %thresh_dark to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv24, ptr %thresh_dark, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end11
  %iqs621_als_channels.sink = phi ptr [ @iqs621_als_channels, %if.end23 ], [ @iqs622_als_channels, %if.end11 ]
  %.sink = phi i32 [ 2, %if.end23 ], [ 3, %if.end11 ]
  %channels25 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %27 = ptrtoint ptr %channels25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %iqs621_als_channels.sink, ptr %channels25, align 8
  %num_channels26 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %28 = ptrtoint ptr %num_channels26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %num_channels26, align 4
  %29 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call2, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %34 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %35 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @iqs621_als_info, ptr %info, align 8
  %lock = getelementptr inbounds %struct.iqs621_als_private, ptr %6, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @iqs621_als_probe.__key) #6
  %notifier = getelementptr inbounds %struct.iqs621_als_private, ptr %6, i32 0, i32 2
  %36 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @iqs621_als_notifier, ptr %notifier, align 4
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %6, align 4
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %38, i32 0, i32 3
  %call31 = call i32 @blocking_notifier_chain_register(ptr noundef %nh, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call31) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %call.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @iqs621_als_notifier_unregister, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end43, label %if.then.i

if.then.i:                                        ; preds = %if.end38
  %39 = ptrtoint ptr %indio_dev5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %indio_dev5, align 4
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %6, align 4
  %nh.i.i = getelementptr inbounds %struct.iqs62x_core, ptr %42, i32 0, i32 3
  %call.i.i = call i32 @blocking_notifier_chain_unregister(ptr noundef %nh.i.i, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %do.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i.i = getelementptr inbounds %struct.iio_dev, ptr %40, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.9, i32 noundef %call.i.i) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end.i.i, %if.then.i.cleanup_crit_edge, %do.end36, %if.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end36 ], [ %call45, %if.end43 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call14, %if.else.cleanup_crit_edge ], [ %call20, %if.end17.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_notifier(ptr noundef %notifier, i32 noundef %event_flags, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %indio_dev1 = getelementptr i8, ptr %notifier, i32 -4
  %0 = ptrtoint ptr %indio_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indio_dev1, align 4
  %call = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %lock = getelementptr i8, ptr %notifier, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %and = and i32 %event_flags, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %notifier, i32 -8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %ir_flags_mask.i = getelementptr i8, ptr %notifier, i32 108
  %4 = ptrtoint ptr %ir_flags_mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ir_flags_mask.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default.i [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %thresh_prox.i = getelementptr i8, ptr %notifier, i32 112
  %9 = ptrtoint ptr %thresh_prox.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %thresh_prox.i, align 4
  %conv2.i = zext i8 %10 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 146, i32 noundef %conv2.i) #6
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %regmap4.i = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap4.i, align 4
  %thresh_prox5.i = getelementptr i8, ptr %notifier, i32 112
  %13 = ptrtoint ptr %thresh_prox5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %thresh_prox5.i, align 4
  %conv6.i = zext i8 %14 to i32
  %call7.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 145, i32 noundef %conv6.i) #6
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  %regmap8.i = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap8.i, align 4
  %thresh_light.i = getelementptr i8, ptr %notifier, i32 110
  %17 = ptrtoint ptr %thresh_light.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %thresh_light.i, align 2
  %conv9.i = zext i8 %18 to i32
  %call10.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 129, i32 noundef %conv9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.default.i.do.end_crit_edge

sw.default.i.do.end_crit_edge:                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %regmap8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap8.i, align 4
  %thresh_dark.i = getelementptr i8, ptr %notifier, i32 111
  %21 = ptrtoint ptr %thresh_dark.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %thresh_dark.i, align 1
  %conv12.i = zext i8 %22 to i32
  %call13.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 128, i32 noundef %conv12.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i, %sw.bb3.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call13.i, %if.end.i ], [ %call7.i, %sw.bb3.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool14.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %sw.epilog.i.do.end_crit_edge

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end16.i:                                       ; preds = %sw.epilog.i
  %light_en.i = getelementptr i8, ptr %notifier, i32 104
  %23 = ptrtoint ptr %light_en.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %light_en.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not.i = icmp eq i8 %24, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i, label %if.end16.i.if.then21.i_crit_edge

if.end16.i.if.then21.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %range_en.i = getelementptr i8, ptr %notifier, i32 105
  %25 = ptrtoint ptr %range_en.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %range_en.i, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool19.not.i = icmp eq i8 %26, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i.if.end23.i_crit_edge, label %lor.lhs.false.i.if.then21.i_crit_edge

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

lor.lhs.false.i.if.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.end16.i.if.then21.i_crit_edge
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %als_mask.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %als_mask.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %als_mask.i, align 1
  %conv22.i = zext i8 %30 to i32
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %lor.lhs.false.i.if.end23.i_crit_edge
  %event_mask.0.i = phi i32 [ %conv22.i, %if.then21.i ], [ 0, %lor.lhs.false.i.if.end23.i_crit_edge ]
  %prox_en.i = getelementptr i8, ptr %notifier, i32 106
  %31 = ptrtoint ptr %prox_en.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %prox_en.i, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool24.not.i = icmp eq i8 %32, 0
  br i1 %tobool24.not.i, label %if.end23.i.iqs621_als_init.exit_crit_edge, label %if.then25.i

if.end23.i.iqs621_als_init.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs621_als_init.exit

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %ir_mask.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %ir_mask.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ir_mask.i, align 2
  %conv27.i = zext i8 %36 to i32
  %or28.i = or i32 %event_mask.0.i, %conv27.i
  br label %iqs621_als_init.exit

iqs621_als_init.exit:                             ; preds = %if.then25.i, %if.end23.i.iqs621_als_init.exit_crit_edge
  %event_mask.1.i = phi i32 [ %or28.i, %if.then25.i ], [ %event_mask.0.i, %if.end23.i.iqs621_als_init.exit_crit_edge ]
  %regmap30.i = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %regmap30.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap30.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 215, i32 noundef %event_mask.1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %iqs621_als_init.exit.err_mutex_crit_edge, label %iqs621_als_init.exit.do.end_crit_edge

iqs621_als_init.exit.do.end_crit_edge:            ; preds = %iqs621_als_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

iqs621_als_init.exit.err_mutex_crit_edge:         ; preds = %iqs621_als_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

do.end:                                           ; preds = %iqs621_als_init.exit.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge, %sw.default.i.do.end_crit_edge
  %retval.0.i167 = phi i32 [ %call.i.i, %iqs621_als_init.exit.do.end_crit_edge ], [ %ret.0.i, %sw.epilog.i.do.end_crit_edge ], [ %call10.i, %sw.default.i.do.end_crit_edge ]
  %parent = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i167) #9
  br label %err_mutex

if.end5:                                          ; preds = %entry
  %light_en = getelementptr i8, ptr %notifier, i32 104
  %41 = ptrtoint ptr %light_en to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %light_en, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool6.not = icmp eq i8 %42, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  %range_en = getelementptr i8, ptr %notifier, i32 105
  %43 = ptrtoint ptr %range_en to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %range_en, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool7.not = icmp eq i8 %44, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %prox_en = getelementptr i8, ptr %notifier, i32 106
  %45 = ptrtoint ptr %prox_en to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %prox_en, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool9.not = icmp eq i8 %46, 0
  br i1 %tobool9.not, label %land.lhs.true8.err_mutex_crit_edge, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true8.err_mutex_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end11:                                         ; preds = %land.lhs.true8.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %als_flags = getelementptr inbounds %struct.iqs62x_event_data, ptr %context, i32 0, i32 1
  %47 = ptrtoint ptr %als_flags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %als_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool13.not = icmp sgt i8 %48, -1
  %als_flags14 = getelementptr i8, ptr %notifier, i32 107
  %49 = ptrtoint ptr %als_flags14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %als_flags14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %tobool17.not = icmp sgt i8 %50, -1
  %brmerge = select i1 %tobool6.not, i1 true, i1 %tobool13.not
  %tobool17.not.not = xor i1 %tobool17.not, true
  %brmerge157 = select i1 %brmerge, i1 true, i1 %tobool17.not.not
  br i1 %brmerge157, label %if.else29, label %if.end11.if.end41.sink.split_crit_edge

if.end11.if.end41.sink.split_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else29:                                        ; preds = %if.end11
  %tobool13.not.not = xor i1 %tobool13.not, true
  %brmerge158 = select i1 %tobool6.not, i1 true, i1 %tobool13.not.not
  %brmerge159 = select i1 %brmerge158, i1 true, i1 %tobool17.not
  br i1 %brmerge159, label %if.else29.if.end41_crit_edge, label %if.else29.if.end41.sink.split_crit_edge

if.else29.if.end41.sink.split_crit_edge:          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else29.if.end41_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41.sink.split:                              ; preds = %if.else29.if.end41.sink.split_crit_edge, %if.end11.if.end41.sink.split_crit_edge
  %.sink = phi i64 [ 281500746514432, %if.end11.if.end41.sink.split_crit_edge ], [ 562975723225088, %if.else29.if.end41.sink.split_crit_edge ]
  %call39 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef %.sink, i64 noundef %call) #6
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else29.if.end41_crit_edge
  %51 = ptrtoint ptr %als_flags to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %als_flags, align 2
  %53 = and i8 %52, 15
  %54 = ptrtoint ptr %als_flags14 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %als_flags14, align 1
  %56 = and i8 %55, 15
  %range_en50 = getelementptr i8, ptr %notifier, i32 105
  %57 = ptrtoint ptr %range_en50 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %range_en50, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool51.not = icmp ne i8 %58, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %56)
  %cmp = icmp ugt i8 %53, %56
  %or.cond = select i1 %tobool51.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end41.if.end71.sink.split_crit_edge, label %if.else59

if.end41.if.end71.sink.split_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.sink.split

if.else59:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %56)
  %cmp66 = icmp ult i8 %53, %56
  %or.cond160 = select i1 %tobool51.not, i1 %cmp66, i1 false
  br i1 %or.cond160, label %if.else59.if.end71.sink.split_crit_edge, label %if.else59.if.end71_crit_edge

if.else59.if.end71_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.else59.if.end71.sink.split_crit_edge:          ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %if.else59.if.end71.sink.split_crit_edge, %if.end41.if.end71.sink.split_crit_edge
  %.sink168 = phi i64 [ 360569475231121408, %if.end41.if.end71.sink.split_crit_edge ], [ 360850950207832064, %if.else59.if.end71.sink.split_crit_edge ]
  %call69 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef %.sink168, i64 noundef %call) #6
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.else59.if.end71_crit_edge
  %ir_flags = getelementptr inbounds %struct.iqs62x_event_data, ptr %context, i32 0, i32 2
  %59 = ptrtoint ptr %ir_flags to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ir_flags, align 1
  %ir_flags_mask = getelementptr i8, ptr %notifier, i32 108
  %61 = ptrtoint ptr %ir_flags_mask to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ir_flags_mask, align 4
  %and74155 = and i8 %62, %60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and74155)
  %tobool75.not = icmp eq i8 %and74155, 0
  %ir_flags77 = getelementptr i8, ptr %notifier, i32 109
  %63 = ptrtoint ptr %ir_flags77 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ir_flags77, align 1
  %and81156 = and i8 %64, %62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and81156)
  %tobool82.not = icmp eq i8 %and81156, 0
  %prox_en84 = getelementptr i8, ptr %notifier, i32 106
  %65 = ptrtoint ptr %prox_en84 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %prox_en84, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool85.not = icmp eq i8 %66, 0
  %brmerge161 = select i1 %tobool85.not, i1 true, i1 %tobool75.not
  %tobool82.not.not = xor i1 %tobool82.not, true
  %brmerge162 = select i1 %brmerge161, i1 true, i1 %tobool82.not.not
  br i1 %brmerge162, label %if.else94, label %if.end71.if.end106.sink.split_crit_edge

if.end71.if.end106.sink.split_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.sink.split

if.else94:                                        ; preds = %if.end71
  %tobool75.not.not = xor i1 %tobool75.not, true
  %brmerge163 = select i1 %tobool85.not, i1 true, i1 %tobool75.not.not
  %brmerge164 = select i1 %brmerge163, i1 true, i1 %tobool82.not
  br i1 %brmerge164, label %if.else94.if.end106_crit_edge, label %if.else94.if.end106.sink.split_crit_edge

if.else94.if.end106.sink.split_crit_edge:         ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.sink.split

if.else94.if.end106_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.end106.sink.split:                             ; preds = %if.else94.if.end106.sink.split_crit_edge, %if.end71.if.end106.sink.split_crit_edge
  %.sink169 = phi i64 [ 281509336449024, %if.end71.if.end106.sink.split_crit_edge ], [ 562984313159680, %if.else94.if.end106.sink.split_crit_edge ]
  %call104 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef %.sink169, i64 noundef %call) #6
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.else94.if.end106_crit_edge
  %67 = ptrtoint ptr %als_flags to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %als_flags, align 2
  %69 = ptrtoint ptr %als_flags14 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %als_flags14, align 1
  %70 = ptrtoint ptr %ir_flags to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ir_flags, align 1
  %72 = ptrtoint ptr %ir_flags77 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %ir_flags77, align 1
  br label %err_mutex

err_mutex:                                        ; preds = %if.end106, %land.lhs.true8.err_mutex_crit_edge, %do.end, %iqs621_als_init.exit.err_mutex_crit_edge
  %ret.0 = phi i32 [ 32770, %do.end ], [ 1, %if.end106 ], [ 1, %iqs621_als_init.exit.err_mutex_crit_edge ], [ 0, %land.lhs.true8.err_mutex_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iqs621_als_notifier_unregister(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %indio_dev1 = getelementptr inbounds %struct.iqs621_als_private, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %indio_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indio_dev1, align 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 3
  %notifier = getelementptr inbounds %struct.iqs621_als_private, ptr %context, i32 0, i32 2
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %nh, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %val_buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_buf) #6
  %4 = ptrtoint ptr %val_buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val_buf, align 2, !annotation !58
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %entry.sw.bb3_crit_edge
    i32 6, label %entry.sw.bb3_crit_edge21
  ]

entry.sw.bb3_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  %call2 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef %11, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and = and i32 %13, 15
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge21
  %regmap4 = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap4, align 4
  %address5 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %address5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address5, align 4
  %call6 = call i32 @regmap_raw_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %val_buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val_buf to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val_buf, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv = zext i16 %20 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.end
  %conv.sink = phi i32 [ %conv, %if.end9 ], [ %and, %if.end ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 7, label %sw.bb2
    i32 8, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %light_en = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %light_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %light_en, align 4, !range !59
  %7 = zext i8 %6 to i32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %range_en = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %range_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %range_en, align 1, !range !59
  %10 = zext i8 %9 to i32
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prox_en = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %prox_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %prox_en, align 2, !range !59
  %13 = zext i8 %12 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %13, %sw.bb5 ], [ %10, %sw.bb2 ], [ %7, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !58
  %lock = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %als_flags = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %als_flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %als_flags, align 4
  %conv = zext i8 %10 to i32
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err_mutex_crit_edge

entry.err_mutex_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %conv3 = trunc i32 %12 to i8
  %als_flags4 = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %als_flags4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %als_flags4, align 1
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %15, label %if.end.err_mutex_crit_edge [
    i32 6, label %sw.bb
    i32 7, label %sw.bb17
    i32 8, label %sw.bb36
  ]

if.end.err_mutex_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

sw.bb:                                            ; preds = %if.end
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %als_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %als_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %als_mask, align 1
  %conv8 = zext i8 %22 to i32
  %range_en = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %range_en to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %range_en, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool11.not = icmp eq i32 %state, 0
  %25 = and i1 %tobool11.not, %tobool9.not
  %26 = select i1 %25, i32 255, i32 0
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 215, i32 noundef %conv8, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.then14, label %sw.bb.err_mutex_crit_edge

sw.bb.err_mutex_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool15 = icmp ne i32 %state, 0
  %light_en = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 4
  %frombool = zext i1 %tobool15 to i8
  %27 = ptrtoint ptr %light_en to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %light_en, align 4
  br label %err_mutex

sw.bb17:                                          ; preds = %if.end
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %als_mask20 = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %als_mask20 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %als_mask20, align 1
  %conv21 = zext i8 %33 to i32
  %light_en22 = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %light_en22 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %light_en22, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool23.not = icmp eq i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool26.not = icmp eq i32 %state, 0
  %36 = and i1 %tobool26.not, %tobool23.not
  %37 = select i1 %36, i32 255, i32 0
  %call.i83 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 215, i32 noundef %conv21, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool30.not = icmp eq i32 %call.i83, 0
  br i1 %tobool30.not, label %if.then31, label %sw.bb17.err_mutex_crit_edge

sw.bb17.err_mutex_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.then31:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool32 = icmp ne i32 %state, 0
  %range_en33 = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 5
  %frombool34 = zext i1 %tobool32 to i8
  %38 = ptrtoint ptr %range_en33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool34, ptr %range_en33, align 1
  br label %err_mutex

sw.bb36:                                          ; preds = %if.end
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call38 = call i32 @regmap_read(ptr noundef %40, i32 noundef 22, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %sw.bb36.err_mutex_crit_edge

sw.bb36.err_mutex_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end41:                                         ; preds = %sw.bb36
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %conv42 = trunc i32 %42 to i8
  %ir_flags = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %ir_flags to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv42, ptr %ir_flags, align 1
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %ir_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %ir_mask to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ir_mask, align 2
  %conv45 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool46 = icmp ne i32 %state, 0
  %cond47 = select i1 %tobool46, i32 0, i32 255
  %call.i84 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 215, i32 noundef %conv45, i32 noundef %cond47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool49.not = icmp eq i32 %call.i84, 0
  br i1 %tobool49.not, label %if.then50, label %if.end41.err_mutex_crit_edge

if.end41.err_mutex_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %prox_en = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 6
  %frombool52 = zext i1 %tobool46 to i8
  %50 = ptrtoint ptr %prox_en to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool52, ptr %prox_en, align 2
  br label %err_mutex

err_mutex:                                        ; preds = %if.then50, %if.end41.err_mutex_crit_edge, %sw.bb36.err_mutex_crit_edge, %if.then31, %sw.bb17.err_mutex_crit_edge, %if.then14, %sw.bb.err_mutex_crit_edge, %if.end.err_mutex_crit_edge, %entry.err_mutex_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.err_mutex_crit_edge ], [ %call38, %sw.bb36.err_mutex_crit_edge ], [ %call.i84, %if.end41.err_mutex_crit_edge ], [ 0, %if.then50 ], [ %call.i83, %sw.bb17.err_mutex_crit_edge ], [ 0, %if.then31 ], [ %call.i, %sw.bb.err_mutex_crit_edge ], [ 0, %if.then14 ], [ -22, %if.end.err_mutex_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %dir, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thresh_light = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %thresh_light to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %thresh_light, align 2
  %conv = zext i8 %4 to i32
  %mul = shl nuw nsw i32 %conv, 4
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thresh_dark = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %thresh_dark to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %thresh_dark, align 1
  %conv2 = zext i8 %6 to i32
  %mul3 = shl nuw nsw i32 %conv2, 2
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ir_flags_mask = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %ir_flags_mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ir_flags_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  %thresh_prox = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %thresh_prox to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %thresh_prox, align 4
  %conv7 = zext i8 %10 to i32
  %mul8 = shl nuw nsw i32 %conv7, 2
  %spec.select = select i1 %cmp, i32 %mul8, i32 %conv7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %mul8.sink = phi i32 [ %mul3, %sw.bb1 ], [ %mul, %sw.bb ], [ %spec.select, %sw.bb4 ]
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul8.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 1, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs621_als_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %dir, label %entry.err_mutex_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 0, label %sw.bb4
  ]

entry.err_mutex_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div = sdiv i32 %val, 16
  %thresh_light = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 10
  br label %sw.epilog11

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div3 = sdiv i32 %val, 4
  %thresh_dark = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 11
  br label %sw.epilog11

sw.bb4:                                           ; preds = %entry
  %5 = add i32 %val, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 765, i32 %5)
  %inbounds8 = icmp ult i32 %5, 765
  br i1 %inbounds8, label %sw.bb6, label %sw.caserange

sw.caserange:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %val)
  %inbounds = icmp ult i32 %val, 256
  br i1 %inbounds, label %sw.caserange.sw.epilog11.thread_crit_edge, label %sw.caserange.err_mutex_crit_edge

sw.caserange.err_mutex_crit_edge:                 ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

sw.caserange.sw.epilog11.thread_crit_edge:        ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.thread

sw.bb6:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %div9394041 = lshr i32 %val, 2
  br label %sw.epilog11.thread

sw.epilog11.thread:                               ; preds = %sw.bb6, %sw.caserange.sw.epilog11.thread_crit_edge
  %thresh_reg.0 = phi i32 [ 146, %sw.bb6 ], [ 145, %sw.caserange.sw.epilog11.thread_crit_edge ]
  %thresh_val.0 = phi i32 [ %div9394041, %sw.bb6 ], [ %val, %sw.caserange.sw.epilog11.thread_crit_edge ]
  %ir_flags_mask.0 = phi i8 [ 2, %sw.bb6 ], [ 1, %sw.caserange.sw.epilog11.thread_crit_edge ]
  %thresh_prox = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 12
  br label %if.end

sw.epilog11:                                      ; preds = %sw.bb2, %sw.bb
  %thresh_reg.1 = phi i32 [ 128, %sw.bb2 ], [ 129, %sw.bb ]
  %thresh_val.1 = phi i32 [ %div3, %sw.bb2 ], [ %div, %sw.bb ]
  %thresh_cache.0 = phi ptr [ %thresh_dark, %sw.bb2 ], [ %thresh_light, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %thresh_val.1)
  %cmp = icmp ugt i32 %thresh_val.1, 255
  br i1 %cmp, label %sw.epilog11.err_mutex_crit_edge, label %sw.epilog11.if.end_crit_edge

sw.epilog11.if.end_crit_edge:                     ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.epilog11.err_mutex_crit_edge:                  ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end:                                           ; preds = %sw.epilog11.if.end_crit_edge, %sw.epilog11.thread
  %thresh_cache.038 = phi ptr [ %thresh_prox, %sw.epilog11.thread ], [ %thresh_cache.0, %sw.epilog11.if.end_crit_edge ]
  %ir_flags_mask.137 = phi i8 [ %ir_flags_mask.0, %sw.epilog11.thread ], [ 0, %sw.epilog11.if.end_crit_edge ]
  %thresh_val.136 = phi i32 [ %thresh_val.0, %sw.epilog11.thread ], [ %thresh_val.1, %sw.epilog11.if.end_crit_edge ]
  %thresh_reg.135 = phi i32 [ %thresh_reg.0, %sw.epilog11.thread ], [ %thresh_reg.1, %sw.epilog11.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %thresh_reg.135, i32 noundef %thresh_val.136) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end.err_mutex_crit_edge

if.end.err_mutex_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %thresh_val.136 to i8
  %8 = ptrtoint ptr %thresh_cache.038 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %thresh_cache.038, align 1
  %ir_flags_mask15 = getelementptr inbounds %struct.iqs621_als_private, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ir_flags_mask15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %ir_flags_mask.137, ptr %ir_flags_mask15, align 4
  br label %err_mutex

err_mutex:                                        ; preds = %if.end14, %if.end.err_mutex_crit_edge, %sw.epilog11.err_mutex_crit_edge, %sw.caserange.err_mutex_crit_edge, %entry.err_mutex_crit_edge
  %ret.0 = phi i32 [ -22, %entry.err_mutex_crit_edge ], [ -22, %sw.epilog11.err_mutex_crit_edge ], [ %call12, %if.end.err_mutex_crit_edge ], [ 0, %if.end14 ], [ -22, %sw.caserange.err_mutex_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_iqs621_als__170_613_iqs621_als_platform_driver_init6, !1, !"__initcall__kmod_iqs621_als__170_613_iqs621_als_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/iqs621-als.c", i32 613, i32 1}
!2 = !{ptr @__exitcall_iqs621_als_platform_driver_exit, !1, !"__exitcall_iqs621_als_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/iqs621-als.c", i32 615, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/iqs621-als.c", i32 616, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/iqs621-als.c", i32 617, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/iqs621-als.c", i32 618, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/iqs621-als.c", i32 609, i32 11}
!14 = !{ptr @iqs621_als_platform_driver, !15, !"iqs621_als_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/iqs621-als.c", i32 607, i32 31}
!16 = !{ptr @iqs621_als_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/iqs621-als.c", i32 588, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/iqs621-als.c", i32 594, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @iqs621_als_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @iqs621_als_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @iqs622_als_channels, !28, !"iqs622_als_channels", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/iqs621-als.c", i32 515, i32 35}
!29 = !{ptr @iqs621_als_range_events, !30, !"iqs621_als_range_events", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/iqs621-als.c", i32 463, i32 36}
!31 = !{ptr @iqs622_als_prox_events, !32, !"iqs622_als_prox_events", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/iqs621-als.c", i32 506, i32 36}
!33 = !{ptr @iqs621_als_channels, !34, !"iqs621_als_channels", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/iqs621-als.c", i32 489, i32 35}
!35 = !{ptr @iqs621_als_light_events, !36, !"iqs621_als_light_events", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/iqs621-als.c", i32 471, i32 36}
!37 = !{ptr @iqs621_als_info, !38, !"iqs621_als_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/iqs621-als.c", i32 455, i32 30}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/iqs621-als.c", i32 115, i32 4}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @iqs621_als_notifier._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @iqs621_als_notifier._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/iqs621-als.c", i32 201, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iqs621_als_notifier_unregister._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @iqs621_als_notifier_unregister._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{i8 0, i8 2}
