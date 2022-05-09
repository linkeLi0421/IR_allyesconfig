; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/rzg2l_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/rzg2l_adc.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.rzg2l_adc_data = type { ptr, i8 }
%struct.rzg2l_adc = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, ptr, %struct.mutex, [8 x i16] }

@__initcall__kmod_rzg2l_adc__198_596_rzg2l_adc_driver_init6 = internal global ptr @rzg2l_adc_driver_init, section ".initcall6.init", align 4
@rzg2l_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rzg2l_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rzg2l_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rzg2l_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rzg2l_adc_driver_exit = internal global ptr @rzg2l_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author199 = internal constant [73 x i8] c"rzg2l_adc.author=Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [48 x i8] c"rzg2l_adc.description=Renesas RZ/G2L ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file201 = internal constant [41 x i8] c"rzg2l_adc.file=drivers/iio/adc/rzg2l_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [25 x i8] c"rzg2l_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rzg2l-adc\00", [22 x i8] zeroinitializer }, align 32
@rzg2l_adc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzg2l-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rzg2l_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rzg2l_adc_pm_runtime_suspend, ptr @rzg2l_adc_pm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get pclk\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rzg2l_adc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/adc/rzg2l_adc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr = internal global ptr @rzg2l_adc_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"adclk\00", [26 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 458, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get adclk\00", [44 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.11 = internal global ptr @rzg2l_adc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adrst-n\00", [24 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get adrstn\0A\00", [42 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.15 = internal global ptr @rzg2l_adc_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"presetn\00", [24 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 470, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get presetn\0A\00", [41 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.19 = internal global ptr @rzg2l_adc_probe._entry.17, section ".printk_index", align 4
@rzg2l_adc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 476, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to deassert adrstn pin, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.22 = internal global ptr @rzg2l_adc_probe._entry.20, section ".printk_index", align 4
@rzg2l_adc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to register adrstn assert devm action, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.25 = internal global ptr @rzg2l_adc_probe._entry.23, section ".printk_index", align 4
@rzg2l_adc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 490, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to deassert presetn pin, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.28 = internal global ptr @rzg2l_adc_probe._entry.26, section ".printk_index", align 4
@rzg2l_adc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 498, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to register presetn assert devm action, %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.31 = internal global ptr @rzg2l_adc_probe._entry.29, section ".printk_index", align 4
@rzg2l_adc_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 504, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize ADC HW, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rzg2l_adc_probe._entry_ptr.34 = internal global ptr @rzg2l_adc_probe._entry.32, section ".printk_index", align 4
@rzg2l_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @rzg2l_adc_read_raw, ptr null, ptr null, ptr null, ptr @rzg2l_adc_read_label, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rzg2l_adc_parse_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 320, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no channel children\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rzg2l_adc_parse_properties\00", [37 x i8] zeroinitializer }, align 32
@rzg2l_adc_parse_properties._entry_ptr = internal global ptr @rzg2l_adc_parse_properties._entry, section ".printk_index", align 4
@rzg2l_adc_parse_properties._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 325, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"num of channel children out of range\0A\00", [58 x i8] zeroinitializer }, align 32
@rzg2l_adc_parse_properties._entry_ptr.39 = internal global ptr @rzg2l_adc_parse_properties._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rzg2l_adc_channel_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc0\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc2\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc3\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc4\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc5\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc6\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc7\00", [27 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rzg2l_adc_start_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s stopping ADC timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rzg2l_adc_start_stop\00", [43 x i8] zeroinitializer }, align 32
@rzg2l_adc_start_stop._entry_ptr = internal global ptr @rzg2l_adc_start_stop._entry, section ".printk_index", align 4
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"rzg2l_adc_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 587, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 590, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"rzg2l_adc_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 542, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"rzg2l_adc_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 581, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 444, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 450, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 452, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 456, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 458, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 462, i32 54 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 464, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 468, i32 55 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 470, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 476, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 483, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 490, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 497, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 504, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"rzg2l_adc_iio_info\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 269, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 320, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 325, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 336, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant [23 x i8] c"rzg2l_adc_channel_name\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 81, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 82, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 83, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 84, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 85, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 86, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 87, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 88, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 89, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 87, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 135, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [31 x i8] c"../drivers/iio/adc/rzg2l_adc.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 266, i32 27 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_rzg2l_adc_driver_exit, ptr @__initcall__kmod_rzg2l_adc__198_596_rzg2l_adc_driver_init6, ptr @rzg2l_adc_driver_exit, ptr @rzg2l_adc_parse_properties._entry, ptr @rzg2l_adc_parse_properties._entry.37, ptr @rzg2l_adc_parse_properties._entry_ptr, ptr @rzg2l_adc_parse_properties._entry_ptr.39, ptr @rzg2l_adc_probe._entry, ptr @rzg2l_adc_probe._entry.13, ptr @rzg2l_adc_probe._entry.17, ptr @rzg2l_adc_probe._entry.20, ptr @rzg2l_adc_probe._entry.23, ptr @rzg2l_adc_probe._entry.26, ptr @rzg2l_adc_probe._entry.29, ptr @rzg2l_adc_probe._entry.32, ptr @rzg2l_adc_probe._entry.9, ptr @rzg2l_adc_probe._entry_ptr, ptr @rzg2l_adc_probe._entry_ptr.11, ptr @rzg2l_adc_probe._entry_ptr.15, ptr @rzg2l_adc_probe._entry_ptr.19, ptr @rzg2l_adc_probe._entry_ptr.22, ptr @rzg2l_adc_probe._entry_ptr.25, ptr @rzg2l_adc_probe._entry_ptr.28, ptr @rzg2l_adc_probe._entry_ptr.31, ptr @rzg2l_adc_probe._entry_ptr.34, ptr @rzg2l_adc_start_stop._entry, ptr @rzg2l_adc_start_stop._entry_ptr, ptr @rzg2l_adc_driver, ptr @.str, ptr @rzg2l_adc_match, ptr @rzg2l_adc_pm_ops, ptr @rzg2l_adc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @rzg2l_adc_iio_info, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @rzg2l_adc_channel_name, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @init_completion.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_parse_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_parse_properties._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_channel_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rzg2l_adc_start_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rzg2l_adc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rzg2l_adc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %channel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 188) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #7
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %channel.i, align 4, !annotation !119
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.rzg2l_adc_parse_properties.exit.thread_crit_edge, label %if.end.i

if.end.rzg2l_adc_parse_properties.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_parse_properties.exit.thread

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge, label %if.end6.i

if.end.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_parse_properties.exit.thread.sink.split

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call2.i)
  %cmp.i = icmp sgt i32 %call2.i, 8
  br i1 %cmp.i, label %if.end6.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge, label %if.end12.i

if.end6.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_parse_properties.exit.thread.sink.split

if.end12.i:                                       ; preds = %if.end6.i
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call2.i, i32 88) #7
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end12.i.rzg2l_adc_parse_properties.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !120

if.end12.i.rzg2l_adc_parse_properties.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_parse_properties.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end12.i
  %5 = extractvalue { i32, i1 } %3, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %5, i32 noundef 3520) #7
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %devm_kcalloc.exit.i.rzg2l_adc_parse_properties.exit.thread_crit_edge, label %if.end17.i

devm_kcalloc.exit.i.rzg2l_adc_parse_properties.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_parse_properties.exit.thread

if.end17.i:                                       ; preds = %devm_kcalloc.exit.i
  %call19.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #7
  %tobool20.not77.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not77.i, label %if.end17.i.do.body_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

if.end17.i.do.body_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.i:                                       ; preds = %if.end27.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %i.079.i = phi i8 [ %inc.i, %if.end27.i.for.body.i_crit_edge ], [ 0, %if.end17.i.for.body.i_crit_edge ]
  %fwnode.078.i = phi ptr [ %call39.i, %if.end27.i.for.body.i_crit_edge ], [ %call19.i, %if.end17.i.for.body.i_crit_edge ]
  %call.i74.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.078.i, ptr noundef nonnull @.str.40, ptr noundef nonnull %channel.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool22.not.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %for.body.i.rzg2l_adc_parse_properties.exit.thread_crit_edge

for.body.i.rzg2l_adc_parse_properties.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_parse_properties.exit.thread

if.end24.i:                                       ; preds = %for.body.i
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp25.i = icmp ugt i32 %7, 7
  br i1 %cmp25.i, label %if.end24.i.rzg2l_adc_parse_properties.exit.thread_crit_edge, label %if.end27.i

if.end24.i.rzg2l_adc_parse_properties.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_parse_properties.exit.thread

if.end27.i:                                       ; preds = %if.end24.i
  %idxprom.i = zext i8 %i.079.i to i32
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.i, align 4
  %indexed.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idxprom.i, i32 19
  %9 = ptrtoint ptr %indexed.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %indexed.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %indexed.i, align 4
  %channel32.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idxprom.i, i32 1
  %10 = ptrtoint ptr %channel32.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %channel32.i, align 4
  %info_mask_separate.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idxprom.i, i32 6
  %11 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %info_mask_separate.i, align 4
  %arrayidx35.i = getelementptr [8 x ptr], ptr @rzg2l_adc_channel_name, i32 0, i32 %7
  %12 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx35.i, align 4
  %datasheet_name.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %idxprom.i, i32 18
  %14 = ptrtoint ptr %datasheet_name.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %datasheet_name.i, align 4
  %inc.i = add i8 %i.079.i, 1
  %call39.i = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %fwnode.078.i) #7
  %tobool20.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool20.not.i, label %if.end27.i.do.body_crit_edge, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end27.i.do.body_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

rzg2l_adc_parse_properties.exit.thread.sink.split: ; preds = %if.end6.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge, %if.end.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.35, %if.end.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge ], [ @.str.38, %if.end6.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -19, %if.end.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge ], [ -22, %if.end6.i.rzg2l_adc_parse_properties.exit.thread.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.38.sink) #10
  br label %rzg2l_adc_parse_properties.exit.thread

rzg2l_adc_parse_properties.exit.thread:           ; preds = %rzg2l_adc_parse_properties.exit.thread.sink.split, %if.end24.i.rzg2l_adc_parse_properties.exit.thread_crit_edge, %for.body.i.rzg2l_adc_parse_properties.exit.thread_crit_edge, %devm_kcalloc.exit.i.rzg2l_adc_parse_properties.exit.thread_crit_edge, %if.end12.i.rzg2l_adc_parse_properties.exit.thread_crit_edge, %if.end.rzg2l_adc_parse_properties.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end12.i.rzg2l_adc_parse_properties.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.rzg2l_adc_parse_properties.exit.thread_crit_edge ], [ -12, %if.end.rzg2l_adc_parse_properties.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %rzg2l_adc_parse_properties.exit.thread.sink.split ], [ -22, %if.end24.i.rzg2l_adc_parse_properties.exit.thread_crit_edge ], [ %call.i74.i, %for.body.i.rzg2l_adc_parse_properties.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #7
  br label %cleanup

do.body:                                          ; preds = %if.end27.i.do.body_crit_edge, %if.end17.i.do.body_crit_edge
  %conv.i = trunc i32 %call2.i to i8
  %num_channels40.i = getelementptr inbounds %struct.rzg2l_adc_data, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %num_channels40.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %num_channels40.i, align 4
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i.i, ptr %call.i.i, align 4
  %data41.i = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %data41.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %data41.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #7
  %lock = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 7
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rzg2l_adc_probe.__key) #7
  %call7 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %1, align 4
  %cmp.i214 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then10, label %if.end13

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %do.body
  %call14 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %pclk = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14, ptr %pclk, align 4
  %cmp.i215 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  %21 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pclk, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %call24 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %adclk = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %adclk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call24, ptr %adclk, align 4
  %cmp.i216 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  %25 = ptrtoint ptr %adclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adclk, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %adrstn = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %adrstn to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %adrstn, align 4
  %cmp.i217 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  %29 = ptrtoint ptr %adrstn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adrstn, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %call.i218 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %presetn = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %presetn to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i218, ptr %presetn, align 4
  %cmp.i219 = icmp ugt ptr %call.i218, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %33 = ptrtoint ptr %presetn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %presetn, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end43
  %36 = ptrtoint ptr %adrstn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adrstn, align 4
  %call55 = call i32 @reset_control_deassert(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call55) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  %38 = ptrtoint ptr %adrstn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adrstn, align 4
  %call.i220 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rzg2l_adc_reset_assert, ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool.not.i221 = icmp eq i32 %call.i220, 0
  br i1 %tobool.not.i221, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %call.i247 = call i32 @reset_control_assert(ptr noundef %39) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call.i220) #10
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  %40 = ptrtoint ptr %presetn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %presetn, align 4
  %call74 = call i32 @reset_control_deassert(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end81, label %do.end79

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call74) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end72
  %42 = ptrtoint ptr %presetn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %presetn, align 4
  %call.i223 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rzg2l_adc_reset_assert, ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool.not.i224 = icmp eq i32 %call.i223, 0
  br i1 %tobool.not.i224, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %call.i248 = call i32 @reset_control_assert(ptr noundef %43) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call.i223) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end81
  %44 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pclk, align 4
  %call.i.i228 = call i32 @clk_prepare(ptr noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i228)
  %tobool.not.i.i = icmp eq i32 %call.i.i228, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end91.do.end97_crit_edge

if.end91.do.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

if.end.i.i:                                       ; preds = %if.end91
  %call1.i.i = call i32 @clk_enable(ptr noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i229, label %rzg2l_adc_hw_init.exit.thread256

rzg2l_adc_hw_init.exit.thread256:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %45) #7
  br label %do.end97

if.end.i229:                                      ; preds = %if.end.i.i
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %49 = or i32 %48, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #7, !srcloc !124
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %55 = and i32 %54, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not72.i = icmp eq i32 %55, 0
  br i1 %tobool3.not72.i, label %while.body.preheader.i, label %if.end.i229.while.end.i_crit_edge

if.end.i229.while.end.i_crit_edge:                ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end.i229
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %59 = and i32 %58, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool3.not.i230 = icmp eq i32 %59, 0
  br i1 %tobool3.not.i230, label %while.body.1.i, label %while.body.preheader.i.while.end.i_crit_edge

while.body.preheader.i.while.end.i_crit_edge:     ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.1.i:                                   ; preds = %while.body.preheader.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %63 = and i32 %62, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool3.not.1.i = icmp eq i32 %63, 0
  br i1 %tobool3.not.1.i, label %while.body.2.i, label %while.body.1.i.while.end.i_crit_edge

while.body.1.i.while.end.i_crit_edge:             ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.2.i:                                   ; preds = %while.body.1.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %67 = and i32 %66, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool3.not.2.i = icmp eq i32 %67, 0
  br i1 %tobool3.not.2.i, label %while.body.3.i, label %while.body.2.i.while.end.i_crit_edge

while.body.2.i.while.end.i_crit_edge:             ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.3.i:                                   ; preds = %while.body.2.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %71 = and i32 %70, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool3.not.3.i = icmp eq i32 %71, 0
  br i1 %tobool3.not.3.i, label %while.body.4.i, label %while.body.3.i.while.end.i_crit_edge

while.body.3.i.while.end.i_crit_edge:             ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.4.i:                                   ; preds = %while.body.3.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %75 = and i32 %74, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool3.not.4.i = icmp eq i32 %75, 0
  br i1 %tobool3.not.4.i, label %while.body.4.i.rzg2l_adc_hw_init.exit_crit_edge, label %while.body.4.i.while.end.i_crit_edge

while.body.4.i.while.end.i_crit_edge:             ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.4.i.rzg2l_adc_hw_init.exit_crit_edge:  ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_hw_init.exit

while.end.i:                                      ; preds = %while.body.4.i.while.end.i_crit_edge, %while.body.3.i.while.end.i_crit_edge, %while.body.2.i.while.end.i_crit_edge, %while.body.1.i.while.end.i_crit_edge, %while.body.preheader.i.while.end.i_crit_edge, %if.end.i229.while.end.i_crit_edge
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 40
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %79 = and i32 %78, 16711679
  %80 = or i32 %79, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %82, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %80) #7, !srcloc !124
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %84, i32 12
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68.i) #7, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %87, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 2013597184) #7, !srcloc !124
  br label %rzg2l_adc_hw_init.exit

rzg2l_adc_hw_init.exit:                           ; preds = %while.end.i, %while.body.4.i.rzg2l_adc_hw_init.exit_crit_edge
  %tobool93.not = phi i1 [ false, %while.body.4.i.rzg2l_adc_hw_init.exit_crit_edge ], [ true, %while.end.i ]
  %ret.0.i = phi i32 [ -16, %while.body.4.i.rzg2l_adc_hw_init.exit_crit_edge ], [ 0, %while.end.i ]
  %88 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %89) #7
  call void @clk_unprepare(ptr noundef %89) #7
  br i1 %tobool93.not, label %if.end99, label %rzg2l_adc_hw_init.exit.do.end97_crit_edge

rzg2l_adc_hw_init.exit.do.end97_crit_edge:        ; preds = %rzg2l_adc_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

do.end97:                                         ; preds = %rzg2l_adc_hw_init.exit.do.end97_crit_edge, %rzg2l_adc_hw_init.exit.thread256, %if.end91.do.end97_crit_edge
  %retval.0.i231255 = phi i32 [ %ret.0.i, %rzg2l_adc_hw_init.exit.do.end97_crit_edge ], [ %call1.i.i, %rzg2l_adc_hw_init.exit.thread256 ], [ %call.i.i228, %if.end91.do.end97_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i231255) #10
  br label %cleanup

if.end99:                                         ; preds = %rzg2l_adc_hw_init.exit
  %call100 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp = icmp slt i32 %call100, 0
  br i1 %cmp, label %if.end99.cleanup_crit_edge, label %if.end102

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end102:                                        ; preds = %if.end99
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %90 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i232 = icmp eq ptr %91, null
  br i1 %tobool.not.i232, label %if.end.i233, label %if.end102.dev_name.exit_crit_edge

if.end102.dev_name.exit_crit_edge:                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i233:                                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i233, %if.end102.dev_name.exit_crit_edge
  %retval.0.i234 = phi ptr [ %93, %if.end.i233 ], [ %91, %if.end102.dev_name.exit_crit_edge ]
  %call.i235 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call100, ptr noundef nonnull @rzg2l_adc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i234, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %cmp105 = icmp slt i32 %call.i235, 0
  br i1 %cmp105, label %dev_name.exit.cleanup_crit_edge, label %if.end107

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107:                                        ; preds = %dev_name.exit
  %completion = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 5
  %94 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @init_completion.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %95 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %96 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %97 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @rzg2l_adc_iio_info, ptr %info, align 8
  %98 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %call, align 8
  %99 = ptrtoint ptr %data41.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data41.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %channels108 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %103 = ptrtoint ptr %channels108 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %channels108, align 8
  %104 = load ptr, ptr %data41.i, align 4
  %num_channels = getelementptr inbounds %struct.rzg2l_adc_data, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %106 to i32
  %num_channels110 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %107 = ptrtoint ptr %num_channels110 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv, ptr %num_channels110, align 4
  %call.i236 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #7
  %dev113 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %call.i237 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rzg2l_adc_pm_runtime_set_suspended, ptr noundef %dev113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool.not.i238 = icmp eq i32 %call.i237, 0
  br i1 %tobool.not.i238, label %if.end117, label %devm_add_action_or_reset.exit241

devm_add_action_or_reset.exit241:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parent.i, align 8
  %call.i.i249 = call i32 @__pm_runtime_set_status(ptr noundef %109, i32 noundef 2) #7
  br label %cleanup

if.end117:                                        ; preds = %if.end107
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i242 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rzg2l_adc_pm_runtime_disable, ptr noundef %dev113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %tobool.not.i243 = icmp eq i32 %call.i242, 0
  br i1 %tobool.not.i243, label %if.end123, label %devm_add_action_or_reset.exit246

devm_add_action_or_reset.exit246:                 ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i250 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %parent.i250 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parent.i250, align 8
  call void @__pm_runtime_disable(ptr noundef %111, i1 noundef zeroext true) #7
  br label %cleanup

if.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %call124 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %devm_add_action_or_reset.exit246, %devm_add_action_or_reset.exit241, %dev_name.exit.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %do.end97, %do.end89, %do.end79, %do.end70, %do.end60, %do.end50, %do.end40, %do.end30, %do.end20, %if.then10, %rzg2l_adc_parse_properties.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then10 ], [ %23, %do.end20 ], [ %27, %do.end30 ], [ %31, %do.end40 ], [ %35, %do.end50 ], [ %call55, %do.end60 ], [ %call.i220, %do.end70 ], [ %call74, %do.end79 ], [ %call.i223, %do.end89 ], [ %retval.0.i231255, %do.end97 ], [ %call124, %if.end123 ], [ -12, %entry.cleanup_crit_edge ], [ %call100, %if.end99.cleanup_crit_edge ], [ %call.i235, %dev_name.exit.cleanup_crit_edge ], [ %call.i237, %devm_add_action_or_reset.exit241 ], [ %call.i242, %devm_add_action_or_reset.exit246 ], [ %retval.0.i.ph, %rzg2l_adc_parse_properties.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_adc_reset_assert(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_assert(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_adc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %intst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intst) #7
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !121
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr.i24 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %2) #7, !srcloc !124
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %3, 255
  %6 = ptrtoint ptr %intst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and1, ptr %intst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %intst, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5)
  %cmp27 = icmp slt i32 %call5, 8
  br i1 %cmp27, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %ch.028 = phi i32 [ %call9, %for.body.for.body_crit_edge ], [ %call5, %if.end4.for.body_crit_edge ]
  %mul = shl i32 %ch.028, 2
  %add = add i32 %mul, 48
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 %add
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #7, !srcloc !121
  %10 = call i32 @llvm.bswap.i32(i32 %9) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %11 = trunc i32 %10 to i16
  %conv = and i16 %11, 4095
  %arrayidx = getelementptr %struct.rzg2l_adc, ptr %dev_id, i32 0, i32 8, i32 %ch.028
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %arrayidx, align 2
  %add8 = add nsw i32 %ch.028, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %intst, i32 noundef 8, i32 noundef %add8) #7
  %cmp = icmp slt i32 %call9, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  %add.ptr.i26 = getelementptr i8, ptr %14, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %2) #7, !srcloc !124
  %completion = getelementptr inbounds %struct.rzg2l_adc, ptr %dev_id, i32 0, i32 5
  call void @complete(ptr noundef %completion) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %for.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intst) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_adc_pm_runtime_set_suspended(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %1, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rzg2l_adc_pm_runtime_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_adc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %conv = and i32 %5, 7
  %parent.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i

if.then.i.i.i:                                    ; preds = %if.end
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #7, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.cleanup.sink.split_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.cleanup.sink.split_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !127
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %call.i4.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #7
  br label %cleanup.sink.split

if.end5.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %18 = and i32 %17, -355467265
  %19 = or i32 %18, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 %19) #7, !srcloc !124
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %25 = and i32 %24, 16777215
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %shl.i.i = shl nuw nsw i32 1, %conv
  %or.i.i = or i32 %26, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %27) #7, !srcloc !124
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %31, i32 32
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %33 = and i32 %32, 16776831
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %or8.i.i = or i32 %shl.i.i, %34
  %or9.i.i = or i32 %or8.i.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i) #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %37, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %35) #7, !srcloc !124
  %completion.i = getelementptr inbounds %struct.rzg2l_adc, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %completion.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %42 = or i32 %41, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #7, !srcloc !124
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 4
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  %call8.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef %spec.select.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %rzg2l_adc_conversion.exit

if.then10.i:                                      ; preds = %if.end5.i
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 32
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %48 = and i32 %47, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %48) #7, !srcloc !124
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %54 = and i32 %53, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #7, !srcloc !124
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %60 = and i32 %59, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %if.then10.i.rzg2l_adc_start_stop.exit.i_crit_edge, label %do.body.1.i.i

if.then10.i.rzg2l_adc_start_stop.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_start_stop.exit.i

do.end.i.i:                                       ; preds = %do.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #10
  br label %rzg2l_adc_start_stop.exit.i

do.body.1.i.i:                                    ; preds = %if.then10.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %68 = and i32 %67, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %do.body.1.i.i.rzg2l_adc_start_stop.exit.i_crit_edge, label %do.body.2.i.i

do.body.1.i.i.rzg2l_adc_start_stop.exit.i_crit_edge: ; preds = %do.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_start_stop.exit.i

do.body.2.i.i:                                    ; preds = %do.body.1.i.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %73 = and i32 %72, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %do.body.2.i.i.rzg2l_adc_start_stop.exit.i_crit_edge, label %do.body.3.i.i

do.body.2.i.i.rzg2l_adc_start_stop.exit.i_crit_edge: ; preds = %do.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_start_stop.exit.i

do.body.3.i.i:                                    ; preds = %do.body.2.i.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %78 = and i32 %77, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %do.body.3.i.i.rzg2l_adc_start_stop.exit.i_crit_edge, label %do.end.i.i

do.body.3.i.i.rzg2l_adc_start_stop.exit.i_crit_edge: ; preds = %do.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rzg2l_adc_start_stop.exit.i

rzg2l_adc_start_stop.exit.i:                      ; preds = %do.body.3.i.i.rzg2l_adc_start_stop.exit.i_crit_edge, %do.body.2.i.i.rzg2l_adc_start_stop.exit.i_crit_edge, %do.body.1.i.i.rzg2l_adc_start_stop.exit.i_crit_edge, %do.end.i.i, %if.then10.i.rzg2l_adc_start_stop.exit.i_crit_edge
  %80 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent.i.i, align 8
  %call.i4.i33.i = tail call i32 @__pm_runtime_idle(ptr noundef %81, i32 noundef 4) #7
  br label %cleanup.sink.split

rzg2l_adc_conversion.exit:                        ; preds = %if.end5.i
  %82 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %parent.i.i, align 8
  %call.i4.i37.i = tail call i32 @__pm_runtime_idle(ptr noundef %83, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i37.i)
  %tobool.not = icmp eq i32 %call.i4.i37.i, 0
  br i1 %tobool.not, label %if.end4, label %rzg2l_adc_conversion.exit.cleanup.sink.split_crit_edge

rzg2l_adc_conversion.exit.cleanup.sink.split_crit_edge: ; preds = %rzg2l_adc_conversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %rzg2l_adc_conversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rzg2l_adc, ptr %1, i32 0, i32 8, i32 %conv
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %85 to i32
  %86 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv5, ptr %val, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %rzg2l_adc_conversion.exit.cleanup.sink.split_crit_edge, %rzg2l_adc_start_stop.exit.i, %if.then3.i, %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.end4 ], [ %call.i4.i37.i, %rzg2l_adc_conversion.exit.cleanup.sink.split_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i.i ], [ %call.i.i.i, %if.then.i.i.i.cleanup.sink.split_crit_edge ], [ -110, %rzg2l_adc_start_stop.exit.i ], [ -16, %if.then3.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_adc_read_label(ptr nocapture noundef readnone %iio_dev, ptr nocapture noundef readonly %chan, ptr noundef %label) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp sgt i32 %1, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [8 x ptr], ptr @rzg2l_adc_channel_name, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %label, ptr noundef nonnull @.str.52, ptr noundef %3) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_adc_pm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %7 = and i32 %6, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496) #7
  %adclk = getelementptr inbounds %struct.rzg2l_adc, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %adclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adclk, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  %pclk = getelementptr inbounds %struct.rzg2l_adc, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rzg2l_adc_pm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %pclk = getelementptr inbounds %struct.rzg2l_adc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %adclk = getelementptr inbounds %struct.rzg2l_adc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %adclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adclk, align 4
  %call.i16 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end.i20, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.i20:                                       ; preds = %if.end
  %call1.i18 = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool2.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool2.not.i19, label %if.end7, label %if.then3.i21

if.then3.i21:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %if.then5

if.then5:                                         ; preds = %if.then3.i21, %if.end.if.then5_crit_edge
  %retval.0.i22.ph = phi i32 [ %call1.i18, %if.then3.i21 ], [ %call.i16, %if.end.if.then5_crit_edge ]
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %13 = or i32 %12, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i22.ph, %if.then5 ], [ 0, %if.end7 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !99, !101, !102, !103, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_rzg2l_adc__198_596_rzg2l_adc_driver_init6, !1, !"__initcall__kmod_rzg2l_adc__198_596_rzg2l_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 596, i32 1}
!2 = !{ptr @__exitcall_rzg2l_adc_driver_exit, !1, !"__exitcall_rzg2l_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author199, !4, !"__UNIQUE_ID_author199", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 598, i32 1}
!5 = !{ptr @__UNIQUE_ID_description200, !6, !"__UNIQUE_ID_description200", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 599, i32 1}
!7 = !{ptr @__UNIQUE_ID_file201, !8, !"__UNIQUE_ID_file201", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 600, i32 1}
!9 = !{ptr @__UNIQUE_ID_license202, !8, !"__UNIQUE_ID_license202", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 590, i32 12}
!12 = !{ptr @rzg2l_adc_driver, !13, !"rzg2l_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 587, i32 31}
!14 = !{ptr @rzg2l_adc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 444, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 450, i32 32}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 452, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rzg2l_adc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @rzg2l_adc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 456, i32 33}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 458, i32 3}
!31 = !{ptr @rzg2l_adc_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rzg2l_adc_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 462, i32 54}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 464, i32 3}
!37 = !{ptr @rzg2l_adc_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rzg2l_adc_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 468, i32 55}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 470, i32 3}
!43 = !{ptr @rzg2l_adc_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rzg2l_adc_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 476, i32 3}
!47 = !{ptr @rzg2l_adc_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rzg2l_adc_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 483, i32 3}
!51 = !{ptr @rzg2l_adc_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rzg2l_adc_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 490, i32 3}
!55 = !{ptr @rzg2l_adc_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rzg2l_adc_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 497, i32 3}
!59 = !{ptr @rzg2l_adc_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rzg2l_adc_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 504, i32 3}
!63 = !{ptr @rzg2l_adc_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rzg2l_adc_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 320, i32 3}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rzg2l_adc_parse_properties._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rzg2l_adc_parse_properties._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 325, i32 3}
!72 = !{ptr @rzg2l_adc_parse_properties._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rzg2l_adc_parse_properties._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 336, i32 42}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 82, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 83, i32 2}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 84, i32 2}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 85, i32 2}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 86, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 87, i32 2}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 88, i32 2}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 89, i32 2}
!92 = !{ptr @rzg2l_adc_channel_name, !93, !"rzg2l_adc_channel_name", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 81, i32 27}
!94 = !{ptr @init_completion.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../include/linux/completion.h", i32 87, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rzg2l_adc_iio_info, !98, !"rzg2l_adc_iio_info", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 269, i32 30}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 135, i32 4}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rzg2l_adc_start_stop._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rzg2l_adc_start_stop._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 266, i32 27}
!106 = !{ptr @rzg2l_adc_match, !107, !"rzg2l_adc_match", i1 false, i1 false}
!107 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 542, i32 34}
!108 = !{ptr @rzg2l_adc_pm_ops, !109, !"rzg2l_adc_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/rzg2l_adc.c", i32 581, i32 32}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 5091458}
!122 = !{i64 2153263183}
!123 = !{i64 2153263395}
!124 = !{i64 5091040}
!125 = !{i64 2148310117}
!126 = !{i64 794940, i64 794965, i64 794987, i64 795003, i64 795015, i64 795035, i64 795059, i64 795075, i64 795087}
!127 = !{i64 2148310305}
