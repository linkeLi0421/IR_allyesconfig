; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/cc10001_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/cc10001_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.cc10001_adc_device = type { ptr, ptr, ptr, ptr, i8, %struct.mutex, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }

@__initcall__kmod_cc10001_adc__288_435_cc10001_adc_driver_init6 = internal global ptr @cc10001_adc_driver_init, section ".initcall6.init", align 4
@cc10001_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cc10001_adc_probe, ptr @cc10001_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cc10001_adc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cc10001_adc_driver_exit = internal global ptr @cc10001_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"cc10001_adc.author=Phani Movva <Phani.Movva@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [51 x i8] c"cc10001_adc.description=Cosmic Circuits ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"cc10001_adc.file=drivers/iio/adc/cc10001_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"cc10001_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cc10001-adc\00", [20 x i8] zeroinitializer }, align 32
@cc10001_adc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cosmic,10001-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adc-reserved-channels\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@cc10001_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @cc10001_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cc10001_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@cc10001_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 349, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get the clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cc10001_adc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/adc/cc10001_adc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc10001_adc_probe._entry_ptr = internal global ptr @cc10001_adc_probe._entry, section ".printk_index", align 4
@cc10001_adc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 356, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable the clock\0A\00", [36 x i8] zeroinitializer }, align 32
@cc10001_adc_probe._entry_ptr.11 = internal global ptr @cc10001_adc_probe._entry.9, section ".printk_index", align 4
@cc10001_adc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 363, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"null clock rate!\0A\00", [46 x i8] zeroinitializer }, align 32
@cc10001_adc_probe._entry_ptr.14 = internal global ptr @cc10001_adc_probe._entry.12, section ".printk_index", align 4
@cc10001_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&adc_dev->lock\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cc10001_adc_trigger_h._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 170, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid sample on channel %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc10001_adc_trigger_h\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cc10001_adc_trigger_h._entry_ptr = internal global ptr @cc10001_adc_trigger_h._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"cc10001_adc_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 427, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 429, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"cc10001_adc_dt_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 421, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 324, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 329, i32 48 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"cc10001_adc_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 260, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 347, i32 46 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 349, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 356, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 363, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 383, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [33 x i8] c"../drivers/iio/adc/cc10001_adc.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 169, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cc10001_adc_driver_exit, ptr @__initcall__kmod_cc10001_adc__288_435_cc10001_adc_driver_init6, ptr @cc10001_adc_driver_exit, ptr @cc10001_adc_probe._entry, ptr @cc10001_adc_probe._entry.12, ptr @cc10001_adc_probe._entry.9, ptr @cc10001_adc_probe._entry_ptr, ptr @cc10001_adc_probe._entry_ptr.11, ptr @cc10001_adc_probe._entry_ptr.14, ptr @cc10001_adc_trigger_h._entry, ptr @cc10001_adc_trigger_h._entry_ptr, ptr @cc10001_adc_driver, ptr @.str, ptr @cc10001_adc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @cc10001_adc_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @cc10001_adc_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc10001_adc_trigger_h._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cc10001_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cc10001_adc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cc10001_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cc10001_adc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc10001_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %channel_map.addr.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !58
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 120) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %ret, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shared = getelementptr inbounds %struct.cc10001_adc_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %shared, align 4
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret, align 4
  %neg = and i32 %7, 255
  %and = xor i32 %neg, 255
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %channel_map.0 = phi i32 [ 255, %if.end.if.end5_crit_edge ], [ %and, %if.then4 ]
  %call7 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %reg = getelementptr inbounds %struct.cc10001_adc_device, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call15 = call i32 @regulator_enable(ptr noundef %call7) #7
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call15, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.dev_name.exit_crit_edge

if.end18.dev_name.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end18.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end18.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cc10001_adc_info, ptr %info, align 8
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call, align 8
  %call21 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call21, ptr %4, align 4
  %cmp.i123 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then24, label %if.end27

if.then24:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call21 to i32
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ret, align 4
  br label %err_disable_reg

if.end27:                                         ; preds = %dev_name.exit
  %call29 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %adc_clk = getelementptr inbounds %struct.cc10001_adc_device, ptr %4, i32 0, i32 1
  %21 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call29, ptr %adc_clk, align 4
  %cmp.i124 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %do.end, label %if.end36

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  %22 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adc_clk, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ret, align 4
  br label %err_disable_reg

if.end36:                                         ; preds = %if.end27
  %call.i = call i32 @clk_prepare(ptr noundef %call29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i125 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i125, label %if.end.i126, label %if.end36.do.end43_crit_edge

if.end36.do.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.end.i126:                                      ; preds = %if.end36
  %call1.i = call i32 @clk_enable(ptr noundef %call29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end45, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call29) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then3.i, %if.end36.do.end43_crit_edge
  %retval.0.i127.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end36.do.end43_crit_edge ]
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i127.ph, ptr %ret, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %err_disable_reg

if.end45:                                         ; preds = %if.end.i126
  %27 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ret, align 4
  %28 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adc_clk, align 4
  %call47 = call i32 @clk_get_rate(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -22, ptr %ret, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %err_disable_clk

if.end54:                                         ; preds = %if.end45
  %div = udiv i32 1000000000, %call47
  %eoc_delay_ns = getelementptr inbounds %struct.cc10001_adc_device, ptr %4, i32 0, i32 7
  %31 = ptrtoint ptr %eoc_delay_ns to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div, ptr %eoc_delay_ns, align 4
  %mul = shl i32 %div, 3
  %start_delay_ns = getelementptr inbounds %struct.cc10001_adc_device, ptr %4, i32 0, i32 6
  %32 = ptrtoint ptr %start_delay_ns to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %start_delay_ns, align 4
  %shared56 = getelementptr inbounds %struct.cc10001_adc_device, ptr %4, i32 0, i32 4
  %33 = ptrtoint ptr %shared56 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %shared56, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool57.not = icmp eq i8 %34, 0
  br i1 %tobool57.not, label %if.end54.if.end59_crit_edge, label %if.then58

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %4, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !61
  %37 = ptrtoint ptr %start_delay_ns to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %start_delay_ns, align 4
  %sub.i.i = add i32 %38, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %39(i32 noundef %div.i.i) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54.if.end59_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel_map.addr.i)
  %40 = ptrtoint ptr %channel_map.addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %channel_map.0, ptr %channel_map.addr.i, align 4
  %and3.i.i = and i32 %channel_map.0, 255
  %call.i.i.i.i = call i32 @__sw_hweight32(i32 noundef %and3.i.i) #7
  %add.i = add i32 %call.i.i.i.i, 1
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %41 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %num_channels.i, align 4
  %42 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 88) #7
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %if.end59.cc10001_adc_channel_init.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !62

if.end59.cc10001_adc_channel_init.exit.thread_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc10001_adc_channel_init.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end59
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %44 = extractvalue { i32, i1 } %42, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %44, i32 noundef 3520) #7
  %tobool.not.i128 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i128, label %devm_kcalloc.exit.i.cc10001_adc_channel_init.exit.thread_crit_edge, label %if.end.i129

devm_kcalloc.exit.i.cc10001_adc_channel_init.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc10001_adc_channel_init.exit.thread

if.end.i129:                                      ; preds = %devm_kcalloc.exit.i
  %call3.i = call i32 @_find_next_bit_be(ptr noundef nonnull %channel_map.addr.i, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i)
  %cmp48.i = icmp ult i32 %call3.i, 8
  br i1 %cmp48.i, label %if.end.i129.for.body.i_crit_edge, label %if.end.i129.do.body64_crit_edge

if.end.i129.do.body64_crit_edge:                  ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

if.end.i129.for.body.i_crit_edge:                 ; preds = %if.end.i129
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i129.for.body.i_crit_edge
  %idx.050.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i129.for.body.i_crit_edge ]
  %bit.049.i = phi i32 [ %call7.i, %for.body.i.for.body.i_crit_edge ], [ %call3.i, %if.end.i129.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx.i, align 4
  %indexed.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 19
  %46 = ptrtoint ptr %indexed.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i = load i8, ptr %indexed.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %indexed.i, align 4
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 1
  %47 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bit.049.i, ptr %channel.i, align 4
  %scan_index.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 4
  %48 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %idx.050.i, ptr %scan_index.i, align 4
  %scan_type.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 5
  %49 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 117, ptr %scan_type.i, align 4
  %realbits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 5, i32 1
  %50 = ptrtoint ptr %realbits.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 10, ptr %realbits.i, align 1
  %storagebits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 5, i32 2
  %51 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 16, ptr %storagebits.i, align 2
  %info_mask_shared_by_type.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 8
  %52 = ptrtoint ptr %info_mask_shared_by_type.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %info_mask_shared_by_type.i, align 4
  %info_mask_separate.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.050.i, i32 6
  %53 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %info_mask_separate.i, align 4
  %inc.i = add i32 %idx.050.i, 1
  %add6.i = add nuw nsw i32 %bit.049.i, 1
  %call7.i = call i32 @_find_next_bit_be(ptr noundef nonnull %channel_map.addr.i, i32 noundef 8, i32 noundef %add6.i) #7
  %cmp.i130 = icmp ult i32 %call7.i, 8
  br i1 %cmp.i130, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body64_crit_edge

for.body.i.do.body64_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cc10001_adc_channel_init.exit.thread:             ; preds = %devm_kcalloc.exit.i.cc10001_adc_channel_init.exit.thread_crit_edge, %if.end59.cc10001_adc_channel_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_map.addr.i)
  %54 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -12, ptr %ret, align 4
  br label %err_disable_clk

do.body64:                                        ; preds = %for.body.i.do.body64_crit_edge, %if.end.i129.do.body64_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.end.i129.do.body64_crit_edge ], [ %inc.i, %for.body.i.do.body64_crit_edge ]
  %arrayidx8.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.0.lcssa.i
  %55 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 13, ptr %arrayidx8.i, align 4
  %channel10.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.0.lcssa.i, i32 1
  %56 = ptrtoint ptr %channel10.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %channel10.i, align 4
  %scan_index11.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.0.lcssa.i, i32 4
  %57 = ptrtoint ptr %scan_index11.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %idx.0.lcssa.i, ptr %scan_index11.i, align 4
  %scan_type12.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.0.lcssa.i, i32 5
  %58 = ptrtoint ptr %scan_type12.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 115, ptr %scan_type12.i, align 4
  %realbits15.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.0.lcssa.i, i32 5, i32 1
  %59 = ptrtoint ptr %realbits15.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 64, ptr %realbits15.i, align 1
  %storagebits17.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idx.0.lcssa.i, i32 5, i32 2
  %60 = ptrtoint ptr %storagebits17.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 64, ptr %storagebits17.i, align 2
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %61 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i.i, ptr %channels.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_map.addr.i)
  %62 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %ret, align 4
  %lock = getelementptr inbounds %struct.cc10001_adc_device, ptr %4, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @cc10001_adc_probe.__key) #7
  %call67 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @cc10001_adc_trigger_h, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %63 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call67, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.body64.err_disable_clk_crit_edge, label %if.end70

do.body64.err_disable_clk_crit_edge:              ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end70:                                         ; preds = %do.body64
  %call71 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  %64 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call71, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %err_cleanup_buffer, label %if.end74

if.end74:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

err_cleanup_buffer:                               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #7
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_cleanup_buffer, %do.body64.err_disable_clk_crit_edge, %cc10001_adc_channel_init.exit.thread, %if.then49
  %66 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adc_clk, align 4
  call void @clk_disable(ptr noundef %67) #7
  call void @clk_unprepare(ptr noundef %67) #7
  br label %err_disable_reg

err_disable_reg:                                  ; preds = %err_disable_clk, %do.end43, %do.end, %if.then24
  %68 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg, align 4
  %call77 = call i32 @regulator_disable(ptr noundef %69) #7
  %70 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_disable_reg, %if.end74, %if.end13.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then10 ], [ %71, %err_disable_reg ], [ 0, %if.end74 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc10001_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !61
  tail call void @iio_device_unregister(ptr noundef %1) #7
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #7
  %adc_clk = getelementptr inbounds %struct.cc10001_adc_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adc_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %reg = getelementptr inbounds %struct.cc10001_adc_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc10001_adc_trigger_h(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %buf = getelementptr inbounds %struct.cc10001_adc_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %lock = getelementptr inbounds %struct.cc10001_adc_device, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %shared = getelementptr inbounds %struct.cc10001_adc_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shared, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !61
  %start_delay_ns.i = getelementptr inbounds %struct.cc10001_adc_device, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %start_delay_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_delay_ns.i, align 4
  %sub.i.i = add i32 %11, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %div.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %eoc_delay_ns = getelementptr inbounds %struct.cc10001_adc_device, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %eoc_delay_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eoc_delay_ns, align 4
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %16, i32 noundef %18, i32 noundef 0) #7
  %19 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %20)
  %cmp75 = icmp ult i32 %call2, %20
  br i1 %cmp75, label %for.body.lr.ph, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.body.lr.ph:                                   ; preds = %if.end
  %div = udiv i32 %14, 20
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %sub.i.i52 = add nuw nsw i32 %div, 999
  %div.i.i53 = udiv i32 %sub.i.i52, 1000
  br label %for.body

for.body:                                         ; preds = %cc10001_adc_poll_done.exit.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cc10001_adc_poll_done.exit.for.body_crit_edge ]
  %scan_idx.076 = phi i32 [ %call2, %for.body.lr.ph ], [ %call14, %cc10001_adc_poll_done.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channels, align 8
  %channel4 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %scan_idx.076, i32 1
  %23 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %and.i = shl i32 %24, 24
  %or.i = and i32 %and.i, 117440512
  %25 = or i32 %or.i, 536870912
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #7
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %32 = or i32 %31, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !61
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %cond.false8.i.i60.while.cond.i_crit_edge, %for.body
  %poll_count.0.i = phi i32 [ 0, %for.body ], [ %inc.i, %cond.false8.i.i60.while.cond.i_crit_edge ]
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %38, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %cond.false8.i.i60, label %while.cond.i.while.cond2.i_crit_edge

while.cond.i.while.cond2.i_crit_edge:             ; preds = %while.cond.i
  br label %while.cond2.i

cond.false8.i.i60:                                ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %div.i.i53) #7
  %inc.i = add nuw nsw i32 %poll_count.0.i, 1
  %cmp.i = icmp eq i32 %poll_count.0.i, 20
  br i1 %cmp.i, label %cond.false8.i.i60.cc10001_adc_poll_done.exit.thread_crit_edge, label %cond.false8.i.i60.while.cond.i_crit_edge

cond.false8.i.i60.while.cond.i_crit_edge:         ; preds = %cond.false8.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

cond.false8.i.i60.cc10001_adc_poll_done.exit.thread_crit_edge: ; preds = %cond.false8.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc10001_adc_poll_done.exit.thread

while.cond2.i:                                    ; preds = %cond.false8.i27.i.while.cond2.i_crit_edge, %while.cond.i.while.cond2.i_crit_edge
  %poll_count.1.i = phi i32 [ %inc7.i, %cond.false8.i27.i.while.cond2.i_crit_edge ], [ 0, %while.cond.i.while.cond2.i_crit_edge ]
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %36, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %43, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !63
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and4.i = and i32 %45, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %24)
  %cmp5.not.i = icmp eq i32 %and4.i, %24
  br i1 %cmp5.not.i, label %cc10001_adc_poll_done.exit, label %cond.false8.i27.i

cond.false8.i27.i:                                ; preds = %while.cond2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %div.i.i53) #7
  %inc7.i = add nuw nsw i32 %poll_count.1.i, 1
  %cmp8.i = icmp eq i32 %poll_count.1.i, 20
  br i1 %cmp8.i, label %cond.false8.i27.i.cc10001_adc_poll_done.exit.thread_crit_edge, label %cond.false8.i27.i.while.cond2.i_crit_edge

cond.false8.i27.i.while.cond2.i_crit_edge:        ; preds = %cond.false8.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond2.i

cond.false8.i27.i.cc10001_adc_poll_done.exit.thread_crit_edge: ; preds = %cond.false8.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc10001_adc_poll_done.exit.thread

cc10001_adc_poll_done.exit.thread:                ; preds = %cond.false8.i27.i.cc10001_adc_poll_done.exit.thread_crit_edge, %cond.false8.i.i60.cc10001_adc_poll_done.exit.thread_crit_edge
  %arrayidx664 = getelementptr i16, ptr %5, i32 %i.077
  %47 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %arrayidx664, align 2
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %24) #10
  br label %done

cc10001_adc_poll_done.exit:                       ; preds = %while.cond2.i
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %36, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #7, !srcloc !63
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %52 = trunc i32 %51 to i16
  %conv.i = and i16 %52, 1023
  %arrayidx6 = getelementptr i16, ptr %5, i32 %i.077
  %53 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i, ptr %arrayidx6, align 2
  %inc = add i32 %i.077, 1
  %54 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %active_scan_mask, align 4
  %56 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %masklength, align 8
  %add = add i32 %scan_idx.076, 1
  %call14 = tail call i32 @_find_next_bit_be(ptr noundef %55, i32 noundef %57, i32 noundef %add) #7
  %58 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call14, %59
  br i1 %cmp, label %cc10001_adc_poll_done.exit.for.body_crit_edge, label %cc10001_adc_poll_done.exit.done_crit_edge

cc10001_adc_poll_done.exit.done_crit_edge:        ; preds = %cc10001_adc_poll_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

cc10001_adc_poll_done.exit.for.body_crit_edge:    ; preds = %cc10001_adc_poll_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

done:                                             ; preds = %cc10001_adc_poll_done.exit.done_crit_edge, %cc10001_adc_poll_done.exit.thread, %if.end.done_crit_edge
  %cmp69 = phi i1 [ true, %cc10001_adc_poll_done.exit.thread ], [ false, %if.end.done_crit_edge ], [ false, %cc10001_adc_poll_done.exit.done_crit_edge ]
  %60 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %shared, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool16.not = icmp eq i8 %61, 0
  br i1 %tobool16.not, label %if.then17, label %done.if.end18_crit_edge

done.if.end18_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 16777216) #7, !srcloc !61
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %done.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br i1 %cmp69, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i64 @iio_get_time_ns(ptr noundef %1) #7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %64 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %scan_timestamp.i, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i62 = icmp eq i8 %65, 0
  br i1 %tobool.not.i62, label %if.then21.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then21.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %67, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %5, i32 %sub.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %call22, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then21.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %5) #7
  br label %if.end24

if.end24:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end18.if.end24_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %70) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc10001_adc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
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
    i32 2, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %3 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %4, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.cc10001_adc_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %shared.i = getelementptr inbounds %struct.cc10001_adc_device, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %shared.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shared.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !61
  %start_delay_ns.i.i = getelementptr inbounds %struct.cc10001_adc_device, ptr %6, i32 0, i32 6
  %11 = ptrtoint ptr %start_delay_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start_delay_ns.i.i, align 4
  %sub.i.i.i = add i32 %12, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %div.i.i.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %eoc_delay_ns.i = getelementptr inbounds %struct.cc10001_adc_device, ptr %6, i32 0, i32 7
  %14 = ptrtoint ptr %eoc_delay_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eoc_delay_ns.i, align 4
  %div.i = udiv i32 %15, 20
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %and.i.i = shl i32 %17, 24
  %or.i.i = and i32 %and.i.i, 117440512
  %18 = or i32 %or.i.i, 536870912
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %25 = or i32 %24, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !61
  %28 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel.i, align 4
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 8
  %sub.i.i14.i = add nuw nsw i32 %div.i, 999
  %div.i.i15.i = udiv i32 %sub.i.i14.i, 1000
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %cond.false8.i.i22.i.while.cond.i.i_crit_edge, %if.end.i
  %poll_count.0.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %cond.false8.i.i22.i.while.cond.i.i_crit_edge ]
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %cond.false8.i.i22.i, label %while.cond.i.i.while.cond2.i.i_crit_edge

while.cond.i.i.while.cond2.i.i_crit_edge:         ; preds = %while.cond.i.i
  br label %while.cond2.i.i

cond.false8.i.i22.i:                              ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %div.i.i15.i) #7
  %inc.i.i = add nuw nsw i32 %poll_count.0.i.i, 1
  %cmp.i.i = icmp eq i32 %poll_count.0.i.i, 20
  br i1 %cmp.i.i, label %cond.false8.i.i22.i.cc10001_adc_poll_done.exit.i_crit_edge, label %cond.false8.i.i22.i.while.cond.i.i_crit_edge

cond.false8.i.i22.i.while.cond.i.i_crit_edge:     ; preds = %cond.false8.i.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

cond.false8.i.i22.i.cc10001_adc_poll_done.exit.i_crit_edge: ; preds = %cond.false8.i.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc10001_adc_poll_done.exit.i

while.cond2.i.i:                                  ; preds = %cond.false8.i27.i.i.while.cond2.i.i_crit_edge, %while.cond.i.i.while.cond2.i.i_crit_edge
  %poll_count.1.i.i = phi i32 [ %inc7.i.i, %cond.false8.i27.i.i.while.cond2.i.i_crit_edge ], [ 0, %while.cond.i.i.while.cond2.i.i_crit_edge ]
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %31, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %38, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i.i) #7, !srcloc !63
  %40 = lshr i32 %39, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and4.i.i = and i32 %40, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.i, i32 %29)
  %cmp5.not.i.i = icmp eq i32 %and4.i.i, %29
  br i1 %cmp5.not.i.i, label %while.end11.i.i, label %cond.false8.i27.i.i

cond.false8.i27.i.i:                              ; preds = %while.cond2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %div.i.i15.i) #7
  %inc7.i.i = add nuw nsw i32 %poll_count.1.i.i, 1
  %cmp8.i.i = icmp eq i32 %poll_count.1.i.i, 20
  br i1 %cmp8.i.i, label %cond.false8.i27.i.i.cc10001_adc_poll_done.exit.i_crit_edge, label %cond.false8.i27.i.i.while.cond2.i.i_crit_edge

cond.false8.i27.i.i.while.cond2.i.i_crit_edge:    ; preds = %cond.false8.i27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond2.i.i

cond.false8.i27.i.i.cc10001_adc_poll_done.exit.i_crit_edge: ; preds = %cond.false8.i27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc10001_adc_poll_done.exit.i

while.end11.i.i:                                  ; preds = %while.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %31, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %45 = and i32 %44, -16580608
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  br label %cc10001_adc_poll_done.exit.i

cc10001_adc_poll_done.exit.i:                     ; preds = %while.end11.i.i, %cond.false8.i27.i.i.cc10001_adc_poll_done.exit.i_crit_edge, %cond.false8.i.i22.i.cc10001_adc_poll_done.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %46, %while.end11.i.i ], [ 65535, %cond.false8.i27.i.i.cc10001_adc_poll_done.exit.i_crit_edge ], [ 65535, %cond.false8.i.i22.i.cc10001_adc_poll_done.exit.i_crit_edge ]
  %47 = ptrtoint ptr %shared.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %shared.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool4.not.i = icmp eq i8 %48, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %cc10001_adc_poll_done.exit.i.cc10001_adc_read_raw_voltage.exit_crit_edge

cc10001_adc_poll_done.exit.i.cc10001_adc_read_raw_voltage.exit_crit_edge: ; preds = %cc10001_adc_poll_done.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc10001_adc_read_raw_voltage.exit

if.then5.i:                                       ; preds = %cc10001_adc_poll_done.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %6, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i, i32 16777216) #7, !srcloc !61
  br label %cc10001_adc_read_raw_voltage.exit

cc10001_adc_read_raw_voltage.exit:                ; preds = %if.then5.i, %cc10001_adc_poll_done.exit.i.cc10001_adc_read_raw_voltage.exit_crit_edge
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i.i, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %53)
  %cmp = icmp eq i32 %53, 65535
  %. = select i1 %cmp, i32 -5, i32 1
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.cc10001_adc_device, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg, align 4
  %call8 = tail call i32 @regulator_get_voltage(ptr noundef %55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %sw.bb7.cleanup_crit_edge, label %if.end12

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %div24 = udiv i32 %call8, 1000
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div24, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %realbits, align 1
  %conv13 = zext i8 %58 to i32
  %59 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv13, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.bb7.cleanup_crit_edge, %cc10001_adc_read_raw_voltage.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end12 ], [ -16, %sw.bb.cleanup_crit_edge ], [ %., %cc10001_adc_read_raw_voltage.exit ], [ %call8, %sw.bb7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc10001_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buf = getelementptr inbounds %struct.cc10001_adc_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %3) #7
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %4 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_bytes, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #11
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_cc10001_adc__288_435_cc10001_adc_driver_init6, !1, !"__initcall__kmod_cc10001_adc__288_435_cc10001_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_cc10001_adc_driver_exit, !1, !"__exitcall_cc10001_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 439, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 429, i32 13}
!12 = !{ptr @cc10001_adc_driver, !13, !"cc10001_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 427, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 324, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 329, i32 48}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 347, i32 46}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 349, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cc10001_adc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @cc10001_adc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 356, i32 3}
!30 = !{ptr @cc10001_adc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cc10001_adc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 363, i32 3}
!34 = !{ptr @cc10001_adc_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cc10001_adc_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @cc10001_adc_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 383, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cc10001_adc_info, !40, !"cc10001_adc_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 260, i32 30}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 169, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cc10001_adc_trigger_h._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @cc10001_adc_trigger_h._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @cc10001_adc_dt_ids, !48, !"cc10001_adc_dt_ids", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/cc10001_adc.c", i32 421, i32 34}
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
!60 = !{i64 2155096836}
!61 = !{i64 5994876}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 5995294}
!64 = !{i64 2155097696}
