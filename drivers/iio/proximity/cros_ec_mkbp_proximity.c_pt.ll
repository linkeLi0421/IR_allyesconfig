; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/cros_ec_mkbp_proximity.c_pt.bc'
source_filename = "../drivers/iio/proximity/cros_ec_mkbp_proximity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.44, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.44 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.cros_ec_mkbp_proximity_data = type { ptr, ptr, %struct.mutex, %struct.notifier_block, i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.anon.45 = type { %struct.cros_ec_command, %union.anon.46 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%union.anon.46 = type { i32 }

@__initcall__kmod_cros_ec_mkbp_proximity__183_268_cros_ec_mkbp_proximity_driver_init6 = internal global ptr @cros_ec_mkbp_proximity_driver_init, section ".initcall6.init", align 4
@cros_ec_mkbp_proximity_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_mkbp_proximity_probe, ptr @cros_ec_mkbp_proximity_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_mkbp_proximity_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_mkbp_proximity_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_mkbp_proximity_driver_exit = internal global ptr @cros_ec_mkbp_proximity_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [73 x i8] c"cros_ec_mkbp_proximity.file=drivers/iio/proximity/cros_ec_mkbp_proximity\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [38 x i8] c"cros_ec_mkbp_proximity.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [76 x i8] c"cros_ec_mkbp_proximity.description=ChromeOS EC MKBP proximity sensor driver\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cros-ec-mkbp-proximity\00", [41 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-mkbp-proximity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @cros_ec_mkbp_proximity_resume, ptr null, ptr @cros_ec_mkbp_proximity_resume, ptr null, ptr @cros_ec_mkbp_proximity_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @cros_ec_mkbp_proximity_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_mkbp_proximity_read_event_config, ptr @cros_ec_mkbp_proximity_write_event_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_chan_spec = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.44 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @cros_ec_mkbp_proximity_events, i32 1, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 89, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wrong result size: %d != %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cros_ec_mkbp_proximity_query\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/iio/proximity/cros_ec_mkbp_proximity.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_query._entry_ptr = internal global ptr @cros_ec_mkbp_proximity_query._entry, section ".printk_index", align 4
@cros_ec_mkbp_proximity_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to fetch proximity state on resume: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cros_ec_mkbp_proximity_resume\00", [34 x i8] zeroinitializer }, align 32
@cros_ec_mkbp_proximity_resume._entry_ptr = internal global ptr @cros_ec_mkbp_proximity_resume._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [30 x i8] c"cros_ec_mkbp_proximity_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 259, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 261, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [32 x i8] c"cros_ec_mkbp_proximity_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 253, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [30 x i8] c"cros_ec_mkbp_proximity_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 204, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 223, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [28 x i8] c"cros_ec_mkbp_proximity_info\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 181, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [33 x i8] c"cros_ec_mkbp_proximity_chan_spec\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 43, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 88, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [30 x i8] c"cros_ec_mkbp_proximity_events\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 35, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [50 x i8] c"../drivers/iio/proximity/cros_ec_mkbp_proximity.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 195, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_cros_ec_mkbp_proximity_driver_exit, ptr @__initcall__kmod_cros_ec_mkbp_proximity__183_268_cros_ec_mkbp_proximity_driver_init6, ptr @cros_ec_mkbp_proximity_driver_exit, ptr @cros_ec_mkbp_proximity_query._entry, ptr @cros_ec_mkbp_proximity_query._entry_ptr, ptr @cros_ec_mkbp_proximity_resume._entry, ptr @cros_ec_mkbp_proximity_resume._entry_ptr, ptr @cros_ec_mkbp_proximity_driver, ptr @.str, ptr @cros_ec_mkbp_proximity_of_match, ptr @cros_ec_mkbp_proximity_pm_ops, ptr @cros_ec_mkbp_proximity_probe.__key, ptr @.str.1, ptr @cros_ec_mkbp_proximity_info, ptr @cros_ec_mkbp_proximity_chan_spec, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cros_ec_mkbp_proximity_events, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_chan_spec to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_mkbp_proximity_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_mkbp_proximity_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_mkbp_proximity_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_mkbp_proximity_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 120) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %5, align 4
  %indio_dev5 = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %indio_dev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %indio_dev5, align 4
  %last_proximity = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %last_proximity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %last_proximity, align 4
  %lock = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %5, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cros_ec_mkbp_proximity_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %driver_data.i.i, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %14 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %name6, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cros_ec_mkbp_proximity_info, ptr %info, align 8
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cros_ec_mkbp_proximity_chan_spec, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_channels, align 4
  %call7 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %notifier = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cros_ec_mkbp_proximity_notify, ptr %notifier, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %call12 = tail call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %notifier = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef %notifier) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_notify(ptr noundef %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readonly %_ec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %event_data = getelementptr inbounds %struct.cros_ec_device, ptr %_ec, i32 0, i32 23
  %0 = ptrtoint ptr %event_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_data, align 4
  %2 = and i8 %1, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp = icmp eq i8 %2, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %nb, i32 -100
  %data6 = getelementptr inbounds %struct.cros_ec_device, ptr %_ec, i32 0, i32 23, i32 1
  %3 = ptrtoint ptr %data6 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %data6, align 1
  %5 = lshr i32 %4, 27
  %and.lobit.i = and i32 %5, 1
  tail call fastcc void @cros_ec_mkbp_proximity_push_event(ptr noundef %add.ptr, i32 noundef %and.lobit.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i = alloca %struct.anon.45, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp eq i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cmp2 = icmp eq i32 %mask, 0
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #6
  %6 = getelementptr inbounds i8, ptr %buf.i, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 33816576, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.45, ptr %buf.i, i32 0, i32 1
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 97, ptr %command.i, align 4
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %buf.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 2
  %11 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %outsize.i, align 4
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 3
  %12 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %insize2.i, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.cros_ec_mkbp_proximity_query.exit_crit_edge, label %if.end.i

if.then.cros_ec_mkbp_proximity_query.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_ec_mkbp_proximity_query.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp3.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp3.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %call.i, i32 noundef 4) #9
  br label %cros_ec_mkbp_proximity_query.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 4
  %17 = lshr i32 %16, 27
  %and.lobit.i.i = and i32 %17, 1
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.lobit.i.i, ptr %val, align 4
  br label %cros_ec_mkbp_proximity_query.exit

cros_ec_mkbp_proximity_query.exit:                ; preds = %if.end5.i, %do.end.i, %if.then.cros_ec_mkbp_proximity_query.exit_crit_edge
  %retval.0.i = phi i32 [ -71, %do.end.i ], [ 1, %if.end5.i ], [ %call.i, %if.then.cros_ec_mkbp_proximity_query.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cros_ec_mkbp_proximity_query.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cros_ec_mkbp_proximity_query.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %enabled = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !47
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %enabled = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %1, i32 0, i32 5
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enabled, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_ec_mkbp_proximity_push_event(ptr noundef %data, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %indio_dev1 = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %indio_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indio_dev1, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %last_proximity = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %last_proximity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_proximity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %state)
  %cmp.not = icmp eq i32 %5, %state
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.cros_ec_mkbp_proximity_data, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then.if.end15_crit_edge, label %if.then3

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then3:                                         ; preds = %if.then
  %last_event_time = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %last_event_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last_event_time, align 8
  %call4 = tail call i32 @iio_device_get_clock(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 7
  br i1 %cmp5.not, label %if.then3.if.end_crit_edge, label %if.then6

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3.if.end_crit_edge
  %timestamp.0 = phi i64 [ %call7, %if.then6 ], [ %9, %if.then3.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool8.not = icmp eq i32 %state, 0
  %cond = select i1 %tobool8.not, i32 1, i32 2
  %10 = zext i32 %cond to i64
  %shl = shl nuw nsw i64 %10, 48
  %or10 = or i64 %shl, 34359738368
  %call14 = tail call i32 @iio_push_event(ptr noundef %1, i64 noundef %or10, i64 noundef %timestamp.0) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then.if.end15_crit_edge
  %11 = ptrtoint ptr %last_proximity to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %state, ptr %last_proximity, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %entry.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_get_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_mkbp_proximity_resume(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i = alloca %struct.anon.45, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #6
  %4 = getelementptr inbounds i8, ptr %buf.i, i32 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 33816576, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.45, ptr %buf.i, i32 0, i32 1
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 97, ptr %command.i, align 4
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %buf.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 2
  %9 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %outsize.i, align 4
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 3
  %10 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %insize2.i, align 4
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp3.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp3.not.i, label %if.else, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef %call.i, i32 noundef 4) #9
  br label %do.end

do.end:                                           ; preds = %do.end.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -71, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #9
  br label %if.end

if.else:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  %15 = lshr i32 %14, 27
  %and.lobit.i.i = and i32 %15, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #6
  call fastcc void @cros_ec_mkbp_proximity_push_event(ptr noundef %1, i32 noundef %and.lobit.i.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_cros_ec_mkbp_proximity__183_268_cros_ec_mkbp_proximity_driver_init6, !1, !"__initcall__kmod_cros_ec_mkbp_proximity__183_268_cros_ec_mkbp_proximity_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 268, i32 1}
!2 = !{ptr @__exitcall_cros_ec_mkbp_proximity_driver_exit, !1, !"__exitcall_cros_ec_mkbp_proximity_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 270, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description186, !7, !"__UNIQUE_ID_description186", i1 false, i1 false}
!7 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 271, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 261, i32 11}
!10 = !{ptr @cros_ec_mkbp_proximity_driver, !11, !"cros_ec_mkbp_proximity_driver", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 259, i32 31}
!12 = !{ptr @cros_ec_mkbp_proximity_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 223, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cros_ec_mkbp_proximity_info, !16, !"cros_ec_mkbp_proximity_info", i1 false, i1 false}
!16 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 181, i32 30}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 88, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cros_ec_mkbp_proximity_query._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cros_ec_mkbp_proximity_query._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @cros_ec_mkbp_proximity_chan_spec, !26, !"cros_ec_mkbp_proximity_chan_spec", i1 false, i1 false}
!26 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 43, i32 35}
!27 = !{ptr @cros_ec_mkbp_proximity_events, !28, !"cros_ec_mkbp_proximity_events", i1 false, i1 false}
!28 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 35, i32 36}
!29 = !{ptr @cros_ec_mkbp_proximity_of_match, !30, !"cros_ec_mkbp_proximity_of_match", i1 false, i1 false}
!30 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 253, i32 34}
!31 = !{ptr @cros_ec_mkbp_proximity_pm_ops, !32, !"cros_ec_mkbp_proximity_pm_ops", i1 false, i1 false}
!32 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 204, i32 8}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/proximity/cros_ec_mkbp_proximity.c", i32 195, i32 3}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cros_ec_mkbp_proximity_resume._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @cros_ec_mkbp_proximity_resume._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
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
