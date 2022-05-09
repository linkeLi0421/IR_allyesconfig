; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/envelope-detector.c_pt.bc'
source_filename = "../drivers/iio/adc/envelope-detector.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.envelope = type { %struct.spinlock, i32, %struct.mutex, i32, i32, i32, ptr, %struct.delayed_work, i32, i8, i32, i32, i32, i32, %struct.completion }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_envelope_detector__187_404_envelope_detector_driver_init6 = internal global ptr @envelope_detector_driver_init, section ".initcall6.init", align 4
@envelope_detector_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @envelope_detector_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @envelope_detector_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_envelope_detector_driver_exit = internal global ptr @envelope_detector_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [77 x i8] c"envelope_detector.description=Envelope detector using a DAC and a comparator\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [55 x i8] c"envelope_detector.author=Peter Rosin <peda@axentia.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [57 x i8] c"envelope_detector.file=drivers/iio/adc/envelope-detector\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [33 x i8] c"envelope_detector.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iio-envelope-detector\00", [42 x i8] zeroinitializer }, align 32
@envelope_detector_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axentia,tse850-envelope-detector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@envelope_detector_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&env->comp_lock\00", [16 x i8] zeroinitializer }, align 32
@envelope_detector_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&env->read_lock\00", [16 x i8] zeroinitializer }, align 32
@envelope_detector_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&env->comp_timeout)->work)\00", [49 x i8] zeroinitializer }, align 32
@envelope_detector_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&env->comp_timeout)->timer\00", [35 x i8] zeroinitializer }, align 32
@envelope_detector_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @envelope_detector_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@envelope_detector_iio_channel = internal constant { %struct.iio_chan_spec, [40 x i8] } { %struct.iio_chan_spec { i32 15, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @envelope_detector_ext_info, ptr null, ptr null, i8 64 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dac\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get dac input channel\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"comp\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"envelope-detector\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@envelope_detector_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 378, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dac is of the wrong type\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"envelope_detector_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/adc/envelope-detector.c\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@envelope_detector_probe._entry_ptr = internal global ptr @envelope_detector_probe._entry, section ".printk_index", align 4
@envelope_detector_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.15, i32 384, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"dac does not indicate its raw maximum value\0A\00", [51 x i8] zeroinitializer }, align 32
@envelope_detector_probe._entry_ptr.20 = internal global ptr @envelope_detector_probe._entry.18, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@envelope_detector_ext_info = internal constant { [3 x %struct.iio_chan_spec_ext_info], [36 x i8] } { [3 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.22, i32 0, ptr @envelope_show_invert, ptr @envelope_store_invert, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.23, i32 0, ptr @envelope_show_comp_interval, ptr @envelope_store_comp_interval, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"invert\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"compare_interval\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"envelope_detector_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 397, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 400, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"envelope_detector_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 391, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 339, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 340, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 342, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"envelope_detector_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 319, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant [30 x i8] c"envelope_detector_iio_channel\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 311, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 349, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 352, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 354, i32 48 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 359, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 361, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 378, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 384, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 87, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"envelope_detector_ext_info\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 301, i32 44 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 302, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 305, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [39 x i8] c"../drivers/iio/adc/envelope-detector.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 236, i32 22 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_envelope_detector_driver_exit, ptr @__initcall__kmod_envelope_detector__187_404_envelope_detector_driver_init6, ptr @envelope_detector_driver_exit, ptr @envelope_detector_probe._entry, ptr @envelope_detector_probe._entry.18, ptr @envelope_detector_probe._entry_ptr, ptr @envelope_detector_probe._entry_ptr.20, ptr @envelope_detector_driver, ptr @.str, ptr @envelope_detector_match, ptr @envelope_detector_probe.__key, ptr @.str.1, ptr @envelope_detector_probe.__key.2, ptr @.str.3, ptr @envelope_detector_probe.__key.4, ptr @.str.5, ptr @envelope_detector_probe.__key.6, ptr @.str.7, ptr @envelope_detector_info, ptr @envelope_detector_iio_channel, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @init_completion.__key, ptr @.str.21, ptr @envelope_detector_ext_info, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_iio_channel to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envelope_detector_ext_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_detector_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @envelope_detector_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @envelope_detector_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @envelope_detector_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_detector_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !73
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 336) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %comp_interval = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %comp_interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 50, ptr %comp_interval, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @envelope_detector_probe.__key, i16 noundef signext 3) #7
  %read_lock = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %read_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @envelope_detector_probe.__key.2) #7
  %done = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #7
  %comp_timeout = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 7
  tail call void @__init_work(ptr noundef %comp_timeout, i32 noundef 0) #7
  %6 = ptrtoint ptr %comp_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %comp_timeout, align 4
  %lockdep_map = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @envelope_detector_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry15 = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 7, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @envelope_detector_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @envelope_detector_probe.__key.6) #7
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @envelope_detector_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @envelope_detector_iio_channel, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %num_channels, align 4
  %call27 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %dac = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %dac to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call27, ptr %dac, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end34

if.then30:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call27 to i32
  %call33 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end34:                                         ; preds = %dev_name.exit
  %call35 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.10) #7
  %comp_irq = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %comp_irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call35, ptr %comp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call35, ptr noundef nonnull @envelope_detector_comp_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %21 = ptrtoint ptr %comp_irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %comp_irq, align 4
  %call.i149 = tail call ptr @irq_get_irq_data(i32 noundef %22) #7
  %tobool.not.i150 = icmp eq ptr %call.i149, null
  br i1 %tobool.not.i150, label %irq_get_trigger_type.exit.thread, label %irq_get_trigger_type.exit

irq_get_trigger_type.exit.thread:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %comp_irq_trigger152 = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %comp_irq_trigger152 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %comp_irq_trigger152, align 4
  br label %if.end51

irq_get_trigger_type.exit:                        ; preds = %if.end45
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i149, i32 0, i32 3
  %24 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %common.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i = and i32 %27, 15
  %comp_irq_trigger = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %comp_irq_trigger to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i.i, ptr %comp_irq_trigger, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %irq_get_trigger_type.exit.if.end51_crit_edge, label %if.then50

irq_get_trigger_type.exit.if.end51_crit_edge:     ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then50:                                        ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %comp_irq_trigger_inv = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %comp_irq_trigger_inv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %comp_irq_trigger_inv, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %comp_irq_trigger_inv, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %irq_get_trigger_type.exit.if.end51_crit_edge, %irq_get_trigger_type.exit.thread
  %comp_irq_trigger155 = phi ptr [ %comp_irq_trigger152, %irq_get_trigger_type.exit.thread ], [ %comp_irq_trigger, %if.then50 ], [ %comp_irq_trigger, %irq_get_trigger_type.exit.if.end51_crit_edge ]
  %31 = ptrtoint ptr %comp_irq_trigger155 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %comp_irq_trigger155, align 4
  %and53 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end58_crit_edge, label %if.then55

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %comp_irq_trigger_inv56 = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 5
  %33 = ptrtoint ptr %comp_irq_trigger_inv56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %comp_irq_trigger_inv56, align 4
  %or57 = or i32 %34, 1
  store i32 %or57, ptr %comp_irq_trigger_inv56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end51.if.end58_crit_edge
  %35 = ptrtoint ptr %comp_irq_trigger155 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %comp_irq_trigger155, align 4
  %and60 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end65_crit_edge, label %if.then62

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %comp_irq_trigger_inv63 = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %comp_irq_trigger_inv63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %comp_irq_trigger_inv63, align 4
  %or64 = or i32 %38, 8
  store i32 %or64, ptr %comp_irq_trigger_inv63, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end58.if.end65_crit_edge
  %39 = ptrtoint ptr %comp_irq_trigger155 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %comp_irq_trigger155, align 4
  %and67 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end65.if.end72_crit_edge, label %if.then69

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %comp_irq_trigger_inv70 = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %comp_irq_trigger_inv70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %comp_irq_trigger_inv70, align 4
  %or71 = or i32 %42, 4
  store i32 %or71, ptr %comp_irq_trigger_inv70, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end65.if.end72_crit_edge
  %43 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dac, align 4
  %call74 = call i32 @iio_get_channel_type(ptr noundef %44, ptr noundef nonnull %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end72.cleanup_crit_edge, label %if.end77

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp78.not = icmp eq i32 %46, 0
  br i1 %cmp78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %47 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dac, align 4
  %dac_max = getelementptr inbounds %struct.envelope, ptr %3, i32 0, i32 10
  %call85 = call i32 @iio_read_max_channel_raw(ptr noundef %48, ptr noundef %dac_max) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %do.end90, label %if.end91

do.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %call92 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end90, %do.end82, %if.end72.cleanup_crit_edge, %if.then43, %if.end34.cleanup_crit_edge, %if.then30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.then30 ], [ %call44, %if.then43 ], [ -22, %do.end82 ], [ %call85, %do.end90 ], [ %call92, %if.end91 ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call74, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @envelope_detector_timeout(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  %call = tail call fastcc i32 @envelope_detector_comp_latch(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %invert = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %invert, align 4, !range !74
  %2 = xor i8 %1, 1
  %3 = zext i1 %tobool.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %tobool4.not = icmp eq i8 %2, %3
  %level5 = getelementptr i8, ptr %work, i32 116
  %4 = ptrtoint ptr %level5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level5, align 4
  %. = select i1 %tobool4.not, i32 112, i32 120
  %high = getelementptr i8, ptr %work, i32 %.
  %6 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %high, align 4
  tail call fastcc void @envelope_detector_setup_compare(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_detector_comp_isr(i32 noundef %irq, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %ctx) #7
  %comp = getelementptr inbounds %struct.envelope, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %comp, align 4
  %comp_irq = getelementptr inbounds %struct.envelope, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %comp_irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %comp_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %2) #7
  tail call void @_raw_spin_unlock(ptr noundef %ctx) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_max_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @envelope_detector_comp_latch(ptr noundef %env) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %env) #7
  %comp1 = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 1
  %0 = ptrtoint ptr %comp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %comp1, align 4
  store i32 0, ptr %comp1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %env) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %comp_irq = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 3
  %2 = ptrtoint ptr %comp_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comp_irq, align 4
  tail call void @enable_irq(i32 noundef %3) #7
  %4 = ptrtoint ptr %comp_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comp_irq, align 4
  tail call void @synchronize_irq(i32 noundef %5) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %env) #7
  %6 = ptrtoint ptr %comp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp1, align 4
  store i32 0, ptr %comp1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %env) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %comp_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %comp_irq, align 4
  tail call void @enable_irq(i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then10 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @envelope_detector_setup_compare(ptr noundef %env) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %high = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 11
  %0 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %high, align 4
  %low = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 13
  %2 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %low, align 4
  %add = add i32 %3, %1
  %invert = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 9
  %4 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invert, align 4, !range !74
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %add1 = add i32 %add, %7
  %div = sdiv i32 %add1, 2
  %level = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 12
  %8 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %level, align 4
  %add4 = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add4)
  %cmp = icmp eq i32 %1, %add4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %done = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 14
  tail call void @complete(ptr noundef %done) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dac = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 6
  %9 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dac_max = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 10
  %11 = ptrtoint ptr %dac_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dac_max, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %call = tail call i32 @iio_write_channel_raw(ptr noundef %10, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %cond.end.err_crit_edge, label %if.end9

cond.end.err_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end9:                                          ; preds = %cond.end
  %call10 = tail call fastcc i32 @envelope_detector_comp_latch(ptr noundef %env)
  %13 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dac, align 4
  %15 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level, align 4
  %call13 = tail call i32 @iio_write_channel_raw(ptr noundef %14, i32 noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end9.err_crit_edge, label %if.end16

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %comp_timeout = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 7
  %comp_interval = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 8
  %17 = ptrtoint ptr %comp_interval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %comp_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %18) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %comp_timeout, i32 noundef %call2.i) #7
  br label %cleanup

err:                                              ; preds = %if.end9.err_crit_edge, %cond.end.err_crit_edge
  %ret.0 = phi i32 [ %call, %cond.end.err_crit_edge ], [ %call13, %if.end9.err_crit_edge ]
  %20 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ret.0, ptr %level, align 4
  %done20 = getelementptr inbounds %struct.envelope, ptr %env, i32 0, i32 14
  tail call void @complete(ptr noundef %done20) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end16, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_detector_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %read_lock = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #7
  %dac_max = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %dac_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dac_max, align 4
  %invert = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %invert, align 4, !range !74
  %7 = zext i8 %6 to i32
  %add = add i32 %4, %7
  %high = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %high, align 4
  %add4 = add nsw i32 %7, -1
  %low = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add4, ptr %low, align 4
  tail call fastcc void @envelope_detector_setup_compare(ptr noundef %1)
  %done = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 14
  tail call void @wait_for_completion(ptr noundef %done) #7
  %level = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %read_lock) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %12 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %invert, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dac_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dac_max, align 4
  %sub = sub i32 %15, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ %11, %if.end.cond.end_crit_edge ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %read_lock) #7
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dac = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dac, align 4
  %call15 = tail call i32 @iio_read_channel_scale(ptr noundef %18, ptr noundef %val, ptr noundef %val2) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %cond.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.bb14 ], [ %11, %if.then ], [ 1, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_show_invert(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %ch, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %invert = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invert, align 4, !range !74
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_store_invert(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %ch, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %invert = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %invert) #7
  %2 = ptrtoint ptr %invert to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %invert, align 4, !annotation !73
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %invert) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp ugt i32 %4, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %comp_irq_trigger_inv = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 5
  %comp_irq_trigger = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 4
  %cond.in = select i1 %tobool.not, ptr %comp_irq_trigger, ptr %comp_irq_trigger_inv
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %read_lock = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #7
  %6 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %invert, align 4
  %invert5 = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %invert5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %invert5, align 4, !range !74
  %10 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp7.not = icmp eq i32 %7, %10
  br i1 %cmp7.not, label %if.end4.if.end11_crit_edge, label %if.then9

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %comp_irq = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %comp_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %comp_irq, align 4
  %call10 = call i32 @irq_set_irq_type(i32 noundef %12, i32 noundef %cond) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4.if.end11_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9 ], [ %call.i, %if.end4.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool12.not = icmp eq i32 %ret.0, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14 = icmp ne i32 %14, 0
  %frombool = zext i1 %tobool14 to i8
  %15 = ptrtoint ptr %invert5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %invert5, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end11.if.end16_crit_edge ], [ %len, %if.then13 ]
  call void @mutex_unlock(ptr noundef %read_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end16 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invert) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_show_comp_interval(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %ch, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %comp_interval = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %comp_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comp_interval, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @envelope_store_comp_interval(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %ch, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #7
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %interval, align 4, !annotation !73
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %interval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %cmp2 = icmp ugt i32 %4, 1000
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read_lock = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interval, align 4
  %comp_interval = getelementptr inbounds %struct.envelope, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %comp_interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %comp_interval, align 4
  call void @mutex_unlock(ptr noundef %read_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_envelope_detector__187_404_envelope_detector_driver_init6, !1, !"__initcall__kmod_envelope_detector__187_404_envelope_detector_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/envelope-detector.c", i32 404, i32 1}
!2 = !{ptr @__exitcall_envelope_detector_driver_exit, !1, !"__exitcall_envelope_detector_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/envelope-detector.c", i32 406, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/envelope-detector.c", i32 407, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/envelope-detector.c", i32 408, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/envelope-detector.c", i32 400, i32 11}
!12 = !{ptr @envelope_detector_driver, !13, !"envelope_detector_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/envelope-detector.c", i32 397, i32 31}
!14 = !{ptr @envelope_detector_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/envelope-detector.c", i32 339, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @envelope_detector_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/envelope-detector.c", i32 340, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @envelope_detector_probe.__key.4, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/envelope-detector.c", i32 342, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @envelope_detector_probe.__key.6, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/envelope-detector.c", i32 349, i32 39}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/envelope-detector.c", i32 352, i32 10}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/envelope-detector.c", i32 354, i32 48}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/envelope-detector.c", i32 359, i32 14}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/envelope-detector.c", i32 361, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/envelope-detector.c", i32 378, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @envelope_detector_probe._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @envelope_detector_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/envelope-detector.c", i32 384, i32 3}
!45 = !{ptr @envelope_detector_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @envelope_detector_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @envelope_detector_info, !51, !"envelope_detector_info", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/envelope-detector.c", i32 319, i32 30}
!52 = !{ptr @envelope_detector_iio_channel, !53, !"envelope_detector_iio_channel", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/envelope-detector.c", i32 311, i32 35}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/envelope-detector.c", i32 302, i32 12}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/envelope-detector.c", i32 305, i32 12}
!58 = !{ptr @envelope_detector_ext_info, !59, !"envelope_detector_ext_info", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/envelope-detector.c", i32 301, i32 44}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/envelope-detector.c", i32 236, i32 22}
!62 = !{ptr @envelope_detector_match, !63, !"envelope_detector_match", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/envelope-detector.c", i32 391, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i8 0, i8 2}
