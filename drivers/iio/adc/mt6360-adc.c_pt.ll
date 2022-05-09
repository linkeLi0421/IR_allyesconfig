; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/mt6360-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/mt6360-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mt6360_adc_data = type { ptr, ptr, %struct.mutex, [11 x i64] }
%struct.anon.44 = type { [11 x i16], i64 }

@__initcall__kmod_mt6360_adc__187_368_mt6360_adc_driver_init6 = internal global ptr @mt6360_adc_driver_init, section ".initcall6.init", align 4
@mt6360_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6360_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6360_adc_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6360_adc_driver_exit = internal global ptr @mt6360_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [52 x i8] c"mt6360_adc.author=Gene Chen <gene_chen@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [41 x i8] c"mt6360_adc.description=MT6360 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [43 x i8] c"mt6360_adc.file=drivers/iio/adc/mt6360-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [26 x i8] c"mt6360_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt6360-adc\00", [21 x i8] zeroinitializer }, align 32
@mt6360_adc_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6360-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6360_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get parent regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6360_adc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/mt6360-adc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6360_adc_probe._entry_ptr = internal global ptr @mt6360_adc_probe._entry, section ".printk_index", align 4
@mt6360_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mad->adc_lock\00", [17 x i8] zeroinitializer }, align 32
@mt6360_adc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to reset adc\0A\00", [43 x i8] zeroinitializer }, align 32
@mt6360_adc_probe._entry_ptr.9 = internal global ptr @mt6360_adc_probe._entry.7, section ".printk_index", align 4
@mt6360_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mt6360_adc_read_raw, ptr null, ptr null, ptr null, ptr @mt6360_adc_read_label, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mt6360_adc_channels = internal constant { [12 x %struct.iio_chan_spec], [256 x i8] } { [12 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 64 }, %struct.iio_chan_spec { i32 1, i32 5, i32 0, i32 0, i32 5, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 64 }, %struct.iio_chan_spec { i32 1, i32 6, i32 0, i32 0, i32 6, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.31, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 9, i32 8, i32 0, i32 0, i32 8, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.33, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 9, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.34, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 10, %struct.anon.43 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.35, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 11, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [256 x i8] zeroinitializer }, align 32
@mt6360_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate iio trigger buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@mt6360_adc_probe._entry_ptr.12 = internal global ptr @mt6360_adc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mt6360_channel_labels = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbid\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbusdiv5\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbusdiv2\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsys\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ibus\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ibat\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chg_vddp\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"temp_jc\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vref_ts\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ts\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"USBID\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VBUSDIV5\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VBUSDIV2\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VSYS\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IBUS\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CHG_VDDP\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEMP_JC\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VREF_TS\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TS\00", [29 x i8] zeroinitializer }, align 32
@mt6360_adc_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 273, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get channel %d conversion val\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt6360_adc_trigger_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt6360_adc_trigger_handler._entry_ptr = internal global ptr @mt6360_adc_trigger_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"mt6360_adc_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 361, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 363, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"mt6360_adc_of_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 355, i32 49 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 320, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 331, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 335, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"mt6360_adc_iio_info\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 221, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"mt6360_adc_channels\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 243, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 348, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 218, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"mt6360_channel_labels\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 210, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 23 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 43 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 51 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 59 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 211, i32 67 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 212, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 212, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 212, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 244, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 245, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 246, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 247, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 248, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 249, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 250, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 251, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 252, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 253, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 254, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [32 x i8] c"../drivers/iio/adc/mt6360-adc.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 273, i32 4 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_mt6360_adc_driver_exit, ptr @__initcall__kmod_mt6360_adc__187_368_mt6360_adc_driver_init6, ptr @mt6360_adc_driver_exit, ptr @mt6360_adc_probe._entry, ptr @mt6360_adc_probe._entry.10, ptr @mt6360_adc_probe._entry.7, ptr @mt6360_adc_probe._entry_ptr, ptr @mt6360_adc_probe._entry_ptr.12, ptr @mt6360_adc_probe._entry_ptr.9, ptr @mt6360_adc_trigger_handler._entry, ptr @mt6360_adc_trigger_handler._entry_ptr, ptr @mt6360_adc_driver, ptr @.str, ptr @mt6360_adc_of_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt6360_adc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @mt6360_adc_iio_info, ptr @mt6360_adc_channels, ptr @.str.11, ptr @.str.13, ptr @mt6360_channel_labels, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_channels to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_channel_labels to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_adc_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6360_adc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6360_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6360_adc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %adc_enable.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 192) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %3, align 8
  %regmap10 = getelementptr inbounds %struct.mt6360_adc_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %regmap10, align 4
  %adc_lock = getelementptr inbounds %struct.mt6360_adc_data, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %adc_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt6360_adc_probe.__key) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_enable.i) #7
  %6 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap10, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 856, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.mt6360_adc_reset.exit_crit_edge

if.end6.mt6360_adc_reset.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_adc_reset.exit

if.end.i:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %adc_enable.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -32768, ptr %adc_enable.i, align 2
  %9 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap10, align 4
  %call2.i = call i32 @regmap_raw_write(ptr noundef %10, i32 noundef 854, ptr noundef nonnull %adc_enable.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %mt6360_adc_reset.exit.thread, label %if.end.i.mt6360_adc_reset.exit_crit_edge

if.end.i.mt6360_adc_reset.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_adc_reset.exit

mt6360_adc_reset.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i64 @ktime_get() #7
  %arrayidx.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call6.i, ptr %arrayidx.i, align 8
  %arrayidx.1.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call6.i, ptr %arrayidx.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call6.i, ptr %arrayidx.2.i, align 8
  %arrayidx.3.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call6.i, ptr %arrayidx.3.i, align 8
  %arrayidx.4.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call6.i, ptr %arrayidx.4.i, align 8
  %arrayidx.5.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call6.i, ptr %arrayidx.5.i, align 8
  %arrayidx.6.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call6.i, ptr %arrayidx.6.i, align 8
  %arrayidx.7.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call6.i, ptr %arrayidx.7.i, align 8
  %arrayidx.8.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call6.i, ptr %arrayidx.8.i, align 8
  %arrayidx.9.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 9
  %20 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call6.i, ptr %arrayidx.9.i, align 8
  %arrayidx.10.i = getelementptr %struct.mt6360_adc_data, ptr %3, i32 0, i32 3, i32 10
  %21 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call6.i, ptr %arrayidx.10.i, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_enable.i) #7
  br label %if.end20

mt6360_adc_reset.exit:                            ; preds = %if.end.i.mt6360_adc_reset.exit_crit_edge, %if.end6.mt6360_adc_reset.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end6.mt6360_adc_reset.exit_crit_edge ], [ %call2.i, %if.end.i.mt6360_adc_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_enable.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end18, label %mt6360_adc_reset.exit.if.end20_crit_edge

mt6360_adc_reset.exit.if.end20_crit_edge:         ; preds = %mt6360_adc_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end18:                                         ; preds = %mt6360_adc_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end20:                                         ; preds = %mt6360_adc_reset.exit.if.end20_crit_edge, %mt6360_adc_reset.exit.thread
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i60 = icmp eq ptr %23, null
  br i1 %tobool.not.i60, label %if.end.i61, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i61:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i61, %if.end20.dev_name.exit_crit_edge
  %retval.0.i62 = phi ptr [ %25, %if.end.i61 ], [ %23, %if.end20.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %26 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i62, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %27 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mt6360_adc_iio_info, ptr %info, align 8
  %28 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %call3, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %29 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mt6360_adc_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %30 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12, ptr %num_channels, align 4
  %call24 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call3, ptr noundef null, ptr noundef nonnull @mt6360_adc_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end31:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call3, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end29, %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end18 ], [ %call24, %do.end29 ], [ %call33, %if.end31 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_adc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %data = alloca %struct.anon.44, align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !102
  %5 = call ptr @memset(ptr %data, i32 0, i32 32)
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %7, i32 noundef %9, i32 noundef 0) #7
  %10 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %11)
  %cmp24 = icmp ult i32 %call2, %11
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %bit.026 = phi i32 [ %call8, %if.end.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %i.025 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call4 = call fastcc i32 @mt6360_adc_read_channel(ptr noundef %3, i32 noundef %bit.026, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %bit.026) #10
  br label %out

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %conv = trunc i32 %13 to i16
  %inc = add i32 %i.025, 1
  %arrayidx = getelementptr [11 x i16], ptr %data, i32 0, i32 %i.025
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %arrayidx, align 2
  %15 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_scan_mask, align 4
  %17 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.026, 1
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef %16, i32 noundef %18, i32 noundef %add) #7
  %19 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call8, %20
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call9 = tail call i64 @iio_get_time_ns(ptr noundef %1) #7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %scan_timestamp.i, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %24, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call9, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %data) #7
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %27) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_adc_read_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %call1 = tail call fastcc i32 @mt6360_adc_read_channel(ptr noundef %1, i32 noundef %4, ptr noundef %val)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %channel3 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %7 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %regval.i, align 4, !annotation !102
  %8 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %6, label %sw.bb2.mt6360_adc_read_scale.exit_crit_edge [
    i32 0, label %sw.bb2.sw.bb.i_crit_edge
    i32 3, label %sw.bb2.sw.bb.i_crit_edge15
    i32 4, label %sw.bb2.sw.bb.i_crit_edge16
    i32 7, label %sw.bb2.sw.bb.i_crit_edge17
    i32 9, label %sw.bb2.sw.bb.i_crit_edge18
    i32 10, label %sw.bb2.sw.bb.i_crit_edge19
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.sw.bb2.i_crit_edge
    i32 5, label %sw.bb2.sw.bb2.i_crit_edge20
    i32 6, label %sw.bb2.sw.bb2.i_crit_edge21
    i32 8, label %sw.bb8.i
  ]

sw.bb2.sw.bb2.i_crit_edge21:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.sw.bb2.i_crit_edge20:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.sw.bb2.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.sw.bb.i_crit_edge19:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge18:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge17:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge16:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge15:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb2.mt6360_adc_read_scale.exit_crit_edge:      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_adc_read_scale.exit

sw.bb.i:                                          ; preds = %sw.bb2.sw.bb.i_crit_edge, %sw.bb2.sw.bb.i_crit_edge15, %sw.bb2.sw.bb.i_crit_edge16, %sw.bb2.sw.bb.i_crit_edge17, %sw.bb2.sw.bb.i_crit_edge18, %sw.bb2.sw.bb.i_crit_edge19
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1250, ptr %val, align 4
  br label %mt6360_adc_read_scale.exit

sw.bb1.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6250, ptr %val, align 4
  br label %mt6360_adc_read_scale.exit

sw.bb2.i:                                         ; preds = %sw.bb2.sw.bb2.i_crit_edge, %sw.bb2.sw.bb2.i_crit_edge20, %sw.bb2.sw.bb2.i_crit_edge21
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2500, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp.i = icmp eq i32 %6, 5
  br i1 %cmp.i, label %if.then.i, label %sw.bb2.i.mt6360_adc_read_scale.exit_crit_edge

sw.bb2.i.mt6360_adc_read_scale.exit_crit_edge:    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_adc_read_scale.exit

if.then.i:                                        ; preds = %sw.bb2.i
  %regmap.i = getelementptr inbounds %struct.mt6360_adc_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 787, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.mt6360_adc_read_scale.exit_crit_edge

if.then.i.mt6360_adc_read_scale.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_adc_read_scale.exit

if.end.i:                                         ; preds = %if.then.i
  %14 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval.i, align 4
  %16 = and i32 %15, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %16)
  %cmp4.i = icmp ult i32 %16, 24
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.mt6360_adc_read_scale.exit_crit_edge

if.end.i.mt6360_adc_read_scale.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_adc_read_scale.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1900, ptr %val, align 4
  br label %mt6360_adc_read_scale.exit

sw.bb8.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 105, ptr %val, align 4
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100, ptr %val2, align 4
  br label %mt6360_adc_read_scale.exit

mt6360_adc_read_scale.exit:                       ; preds = %sw.bb8.i, %if.then5.i, %if.end.i.mt6360_adc_read_scale.exit_crit_edge, %if.then.i.mt6360_adc_read_scale.exit_crit_edge, %sw.bb2.i.mt6360_adc_read_scale.exit_crit_edge, %sw.bb1.i, %sw.bb.i, %sw.bb2.mt6360_adc_read_scale.exit_crit_edge
  %retval.0.i = phi i32 [ 10, %sw.bb8.i ], [ 1, %sw.bb1.i ], [ 1, %sw.bb.i ], [ %call.i, %if.then.i.mt6360_adc_read_scale.exit_crit_edge ], [ 1, %if.end.i.mt6360_adc_read_scale.exit_crit_edge ], [ 1, %if.then5.i ], [ 1, %sw.bb2.i.mt6360_adc_read_scale.exit_crit_edge ], [ -22, %sw.bb2.mt6360_adc_read_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %channel6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %20 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp.i14 = icmp eq i32 %21, 8
  %cond.i = select i1 %cmp.i14, i32 -80, i32 0
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %mt6360_adc_read_scale.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb5 ], [ %retval.0.i, %mt6360_adc_read_scale.exit ], [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_adc_read_label(ptr nocapture noundef readnone %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %label) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr [11 x ptr], ptr @mt6360_channel_labels, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %label, i32 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt6360_adc_read_channel(ptr noundef %mad, i32 noundef %channel, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %adc_enable = alloca i16, align 2
  %rpt = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_enable) #7
  %0 = ptrtoint ptr %adc_enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %adc_enable, align 2, !annotation !102
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rpt) #7
  %1 = ptrtoint ptr %rpt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %rpt, align 1, !annotation !102
  %2 = getelementptr inbounds [3 x i8], ptr %rpt, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !102
  %4 = getelementptr inbounds [3 x i8], ptr %rpt, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !102
  %adc_lock = getelementptr inbounds %struct.mt6360_adc_data, ptr %mad, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %adc_lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mt6360_adc_data, ptr %mad, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %channel, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 858, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_adc_lock_crit_edge

entry.out_adc_lock_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_adc_lock

if.end:                                           ; preds = %entry
  %shl1 = shl nuw i32 1, %channel
  %8 = trunc i32 %shl1 to i16
  %conv = or i16 %8, -32768
  %9 = ptrtoint ptr %adc_enable to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %adc_enable, align 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_raw_write(ptr noundef %11, i32 noundef 854, ptr noundef nonnull %adc_enable, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_adc_lock_crit_edge

if.end.out_adc_lock_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_adc_lock

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.mt6360_adc_data, ptr %mad, i32 0, i32 3, i32 %channel
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %add.i = add i64 %13, 50000000
  %call8 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call8, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call8, %add.i
  %. = select i1 %cmp3.i.i, i32 25, i32 75
  %call12 = call i32 @msleep_interruptible(i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.out_adc_conv_crit_edge

if.end6.out_adc_conv_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_adc_conv

if.end15:                                         ; preds = %if.end6
  %call16 = call i64 @ktime_get() #7
  %add.i63 = add i64 %call16, 100000000
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call1965 = call i32 @regmap_raw_read(ptr noundef %15, i32 noundef 858, ptr noundef nonnull %rpt, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1965)
  %tobool20.not66 = icmp eq i32 %call1965, 0
  br i1 %tobool20.not66, label %if.end15.if.end22_crit_edge, label %if.end15.out_adc_conv_crit_edge

if.end15.out_adc_conv_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_adc_conv

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  br label %if.end22

if.end22:                                         ; preds = %if.end33.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %16 = ptrtoint ptr %rpt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rpt, align 1
  %18 = and i8 %17, 15
  %and = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %channel)
  %cmp = icmp eq i32 %and, %channel
  br i1 %cmp, label %while.end, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call28, i64 %add.i63)
  %cmp3.i = icmp sgt i64 %call28, %add.i63
  br i1 %cmp3.i, label %if.end27.out_adc_conv_crit_edge, label %if.end33

if.end27.out_adc_conv_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_adc_conv

if.end33:                                         ; preds = %if.end27
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_raw_read(ptr noundef %20, i32 noundef 858, ptr noundef nonnull %rpt, i32 noundef 3) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end33.if.end22_crit_edge, label %if.end33.out_adc_conv_crit_edge

if.end33.out_adc_conv_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_adc_conv

if.end33.if.end22_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

while.end:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %2, align 1
  %conv35 = zext i8 %22 to i32
  %shl36 = shl nuw nsw i32 %conv35, 8
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  %conv38 = zext i8 %24 to i32
  %or39 = or i32 %shl36, %conv38
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or39, ptr %val, align 4
  br label %out_adc_conv

out_adc_conv:                                     ; preds = %while.end, %if.end33.out_adc_conv_crit_edge, %if.end27.out_adc_conv_crit_edge, %if.end15.out_adc_conv_crit_edge, %if.end6.out_adc_conv_crit_edge
  %ret.0 = phi i32 [ 1, %while.end ], [ -512, %if.end6.out_adc_conv_crit_edge ], [ %call1965, %if.end15.out_adc_conv_crit_edge ], [ %call19, %if.end33.out_adc_conv_crit_edge ], [ -110, %if.end27.out_adc_conv_crit_edge ]
  %26 = ptrtoint ptr %adc_enable to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -32768, ptr %adc_enable, align 2
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call41 = call i32 @regmap_raw_write(ptr noundef %28, i32 noundef 854, ptr noundef nonnull %adc_enable, i32 noundef 2) #7
  %call42 = call i64 @ktime_get() #7
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call42, ptr %arrayidx, align 8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i64 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 858, i32 noundef 240, i32 noundef 240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out_adc_lock

out_adc_lock:                                     ; preds = %out_adc_conv, %if.end.out_adc_lock_crit_edge, %entry.out_adc_lock_crit_edge
  %ret.1 = phi i32 [ %call.i, %entry.out_adc_lock_crit_edge ], [ %call3, %if.end.out_adc_lock_crit_edge ], [ %ret.0, %out_adc_conv ]
  call void @mutex_unlock(ptr noundef %adc_lock) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rpt) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_enable) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_mt6360_adc__187_368_mt6360_adc_driver_init6, !1, !"__initcall__kmod_mt6360_adc__187_368_mt6360_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 368, i32 1}
!2 = !{ptr @__exitcall_mt6360_adc_driver_exit, !1, !"__exitcall_mt6360_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 370, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 371, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 372, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 363, i32 11}
!12 = !{ptr @mt6360_adc_driver, !13, !"mt6360_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 361, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 320, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt6360_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt6360_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mt6360_adc_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 331, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 335, i32 3}
!27 = !{ptr @mt6360_adc_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt6360_adc_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 348, i32 3}
!31 = !{ptr @mt6360_adc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mt6360_adc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mt6360_adc_iio_info, !34, !"mt6360_adc_iio_info", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 221, i32 30}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 218, i32 36}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 11}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 23}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 35}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 43}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 51}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 59}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 211, i32 67}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 212, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 212, i32 13}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 212, i32 24}
!59 = !{ptr @mt6360_channel_labels, !60, !"mt6360_channel_labels", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 210, i32 20}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 244, i32 2}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 245, i32 2}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 246, i32 2}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 247, i32 2}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 248, i32 2}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 249, i32 2}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 250, i32 2}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 251, i32 2}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 252, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 253, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 254, i32 2}
!83 = !{ptr @mt6360_adc_channels, !84, !"mt6360_adc_channels", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 243, i32 35}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 273, i32 4}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mt6360_adc_trigger_handler._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @mt6360_adc_trigger_handler._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @mt6360_adc_of_id, !92, !"mt6360_adc_of_id", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/mt6360-adc.c", i32 355, i32 49}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i8 0, i8 2}
