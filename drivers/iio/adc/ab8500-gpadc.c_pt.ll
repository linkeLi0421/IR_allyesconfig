; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ab8500-gpadc.c_pt.bc'
source_filename = "../drivers/iio/adc/ab8500-gpadc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ab8500_gpadc = type { ptr, ptr, ptr, i32, %struct.completion, ptr, i32, i32, [4 x %struct.ab8500_adc_cal_data] }
%struct.ab8500_adc_cal_data = type { i64, i64, i16, i16 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.ab8500_gpadc_chan_info = type { ptr, i8, i8, i8, i8, i8 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_ab8500_gpadc__289_1218_ab8500_gpadc_driver_init6 = internal global ptr @ab8500_gpadc_driver_init, section ".initcall6.init", align 4
@ab8500_gpadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_gpadc_probe, ptr @ab8500_gpadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_gpadc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-gpadc\00", [19 x i8] zeroinitializer }, align 32
@ab8500_gpadc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_gpadc_runtime_suspend, ptr @ab8500_gpadc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SW_CONV_END\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get platform sw_conv_end irq\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HW_CONV_END\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get platform hw_conv_end irq\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500-gpadc-sw\00", [16 x i8] zeroinitializer }, align 32
@ab8500_gpadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1129, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request sw conversion irq %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_gpadc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/adc/ab8500-gpadc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_gpadc_probe._entry_ptr = internal global ptr @ab8500_gpadc_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500-gpadc-hw\00", [16 x i8] zeroinitializer }, align 32
@ab8500_gpadc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 1140, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to request hw conversion irq: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_gpadc_probe._entry_ptr.14 = internal global ptr @ab8500_gpadc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddadc\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get vddadc\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_gpadc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 1153, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable vddadc: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_gpadc_probe._entry_ptr.19 = internal global ptr @ab8500_gpadc_probe._entry.17, section ".printk_index", align 4
@ab8500_gpadc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ab8500_gpadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_gpadc_of_xlate, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ab8500_gpadc_parse_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 1043, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no channel children\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_gpadc_parse_channels\00", [36 x i8] zeroinitializer }, align 32
@ab8500_gpadc_parse_channels._entry_ptr = internal global ptr @ab8500_gpadc_parse_channels._entry, section ".printk_index", align 4
@ab8500_gpadc_parse_channels._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.8, i32 1046, ptr @.str.24, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"found %d ADC channels\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ab8500_gpadc_parse_channels._entry_ptr.25 = internal global ptr @ab8500_gpadc_parse_channels._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ab8500_gpadc_parse_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 991, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid channel number %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_gpadc_parse_channel\00", [37 x i8] zeroinitializer }, align 32
@ab8500_gpadc_parse_channel._entry_ptr = internal global ptr @ab8500_gpadc_parse_channel._entry, section ".printk_index", align 4
@ab8500_gpadc_parse_channel._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.8, i32 995, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s channel number out of range %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ab8500_gpadc_parse_channel._entry_ptr.31 = internal global ptr @ab8500_gpadc_parse_channel._entry.29, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read_calibration_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.8, i32 686, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: read otp reg 0x%02x failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ab8500_gpadc_read_calibration_data\00", [61 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read_calibration_data._entry_ptr = internal global ptr @ab8500_gpadc_read_calibration_data._entry, section ".printk_index", align 4
@ab8500_gpadc_read_calibration_data._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.8, i32 790, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: read otp4 reg 0x%02x failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read_calibration_data._entry_ptr.37 = internal global ptr @ab8500_gpadc_read_calibration_data._entry.35, section ".printk_index", align 4
@ab8500_gpadc_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.8, i32 902, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no such channel %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_gpadc_read_raw\00", [42 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read_raw._entry_ptr = internal global ptr @ab8500_gpadc_read_raw._entry, section ".printk_index", align 4
@ab8500_gpadc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.8, i32 424, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpadc_conversion: GPADC busy\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ab8500_gpadc_read\00", [46 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr = internal global ptr @ab8500_gpadc_read._entry, section ".printk_index", align 4
@ab8500_gpadc_read._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.8, i32 460, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"gpadc_conversion: set avg samples failed\0A\00", [54 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.44 = internal global ptr @ab8500_gpadc_read._entry.42, section ".printk_index", align 4
@ab8500_gpadc_read._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.8, i32 498, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"gpadc_conversion: set Control register failed\0A\00", [49 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.47 = internal global ptr @ab8500_gpadc_read._entry.45, section ".printk_index", align 4
@ab8500_gpadc_read._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.8, i32 512, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gpadc_conversion: trig timer failed\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.50 = internal global ptr @ab8500_gpadc_read._entry.48, section ".printk_index", align 4
@ab8500_gpadc_read._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.8, i32 526, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gpadc_conversion: start s/w conv failed\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.53 = internal global ptr @ab8500_gpadc_read._entry.51, section ".printk_index", align 4
@ab8500_gpadc_read._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.8, i32 538, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timeout didn't receive GPADC conv interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.56 = internal global ptr @ab8500_gpadc_read._entry.54, section ".printk_index", align 4
@ab8500_gpadc_read._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.41, ptr @.str.8, i32 548, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gpadc_conversion: read low data failed\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.59 = internal global ptr @ab8500_gpadc_read._entry.57, section ".printk_index", align 4
@ab8500_gpadc_read._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.41, ptr @.str.8, i32 556, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gpadc_conversion: read high data failed\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.62 = internal global ptr @ab8500_gpadc_read._entry.60, section ".printk_index", align 4
@ab8500_gpadc_read._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.41, ptr @.str.8, i32 570, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"gpadc_conversion: only SW double conversion supported\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.65 = internal global ptr @ab8500_gpadc_read._entry.63, section ".printk_index", align 4
@ab8500_gpadc_read._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.41, ptr @.str.8, i32 579, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"gpadc_conversion: read sw low data 2 failed\0A\00", [51 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.68 = internal global ptr @ab8500_gpadc_read._entry.66, section ".printk_index", align 4
@ab8500_gpadc_read._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.41, ptr @.str.8, i32 588, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"gpadc_conversion: read sw high data 2 failed\0A\00", [50 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.71 = internal global ptr @ab8500_gpadc_read._entry.69, section ".printk_index", align 4
@ab8500_gpadc_read._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.41, ptr @.str.8, i32 595, ptr @.str.74, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gpadc_conversion: ibat not stored\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.75 = internal global ptr @ab8500_gpadc_read._entry.72, section ".printk_index", align 4
@ab8500_gpadc_read._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.41, ptr @.str.8, i32 605, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gpadc_conversion: disable gpadc failed\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.78 = internal global ptr @ab8500_gpadc_read._entry.76, section ".printk_index", align 4
@ab8500_gpadc_read._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.41, ptr @.str.8, i32 626, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"gpadc_conversion: Failed to AD convert channel %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ab8500_gpadc_read._entry_ptr.81 = internal global ptr @ab8500_gpadc_read._entry.79, section ".printk_index", align 4
@ab8500_gpadc_ad_to_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.8, i32 377, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unknown channel ID: %d, not possible to convert\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_gpadc_ad_to_voltage\00", [37 x i8] zeroinitializer }, align 32
@ab8500_gpadc_ad_to_voltage._entry_ptr = internal global ptr @ab8500_gpadc_ad_to_voltage._entry, section ".printk_index", align 4
@ab8500_gpadc_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.8, i32 964, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable vddadc: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_gpadc_runtime_resume\00", [36 x i8] zeroinitializer }, align 32
@ab8500_gpadc_runtime_resume._entry_ptr = internal global ptr @ab8500_gpadc_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 10, i64 11]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [18 x i64] [i64 16, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 18, i64 19, i64 255]
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"ab8500_gpadc_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1210, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1214, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"ab8500_gpadc_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1202, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1105, i32 48 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1108, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1111, i32 49 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1114, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1125, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1127, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1136, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1138, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1146, i32 42 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1149, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1153, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"ab8500_gpadc_info\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 940, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1043, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1046, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 989, i32 33 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 991, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 995, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 87, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 685, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 788, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 901, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 424, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 459, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 497, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 511, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 525, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 537, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 547, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 555, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 569, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 578, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 587, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 594, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 605, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 625, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 375, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [34 x i8] c"../drivers/iio/adc/ab8500-gpadc.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 964, i32 3 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__initcall__kmod_ab8500_gpadc__289_1218_ab8500_gpadc_driver_init6, ptr @ab8500_gpadc_ad_to_voltage._entry, ptr @ab8500_gpadc_ad_to_voltage._entry_ptr, ptr @ab8500_gpadc_parse_channel._entry, ptr @ab8500_gpadc_parse_channel._entry.29, ptr @ab8500_gpadc_parse_channel._entry_ptr, ptr @ab8500_gpadc_parse_channel._entry_ptr.31, ptr @ab8500_gpadc_parse_channels._entry, ptr @ab8500_gpadc_parse_channels._entry.22, ptr @ab8500_gpadc_parse_channels._entry_ptr, ptr @ab8500_gpadc_parse_channels._entry_ptr.25, ptr @ab8500_gpadc_probe._entry, ptr @ab8500_gpadc_probe._entry.12, ptr @ab8500_gpadc_probe._entry.17, ptr @ab8500_gpadc_probe._entry_ptr, ptr @ab8500_gpadc_probe._entry_ptr.14, ptr @ab8500_gpadc_probe._entry_ptr.19, ptr @ab8500_gpadc_read._entry, ptr @ab8500_gpadc_read._entry.42, ptr @ab8500_gpadc_read._entry.45, ptr @ab8500_gpadc_read._entry.48, ptr @ab8500_gpadc_read._entry.51, ptr @ab8500_gpadc_read._entry.54, ptr @ab8500_gpadc_read._entry.57, ptr @ab8500_gpadc_read._entry.60, ptr @ab8500_gpadc_read._entry.63, ptr @ab8500_gpadc_read._entry.66, ptr @ab8500_gpadc_read._entry.69, ptr @ab8500_gpadc_read._entry.72, ptr @ab8500_gpadc_read._entry.76, ptr @ab8500_gpadc_read._entry.79, ptr @ab8500_gpadc_read._entry_ptr, ptr @ab8500_gpadc_read._entry_ptr.44, ptr @ab8500_gpadc_read._entry_ptr.47, ptr @ab8500_gpadc_read._entry_ptr.50, ptr @ab8500_gpadc_read._entry_ptr.53, ptr @ab8500_gpadc_read._entry_ptr.56, ptr @ab8500_gpadc_read._entry_ptr.59, ptr @ab8500_gpadc_read._entry_ptr.62, ptr @ab8500_gpadc_read._entry_ptr.65, ptr @ab8500_gpadc_read._entry_ptr.68, ptr @ab8500_gpadc_read._entry_ptr.71, ptr @ab8500_gpadc_read._entry_ptr.75, ptr @ab8500_gpadc_read._entry_ptr.78, ptr @ab8500_gpadc_read._entry_ptr.81, ptr @ab8500_gpadc_read_calibration_data._entry, ptr @ab8500_gpadc_read_calibration_data._entry.35, ptr @ab8500_gpadc_read_calibration_data._entry_ptr, ptr @ab8500_gpadc_read_calibration_data._entry_ptr.37, ptr @ab8500_gpadc_read_raw._entry, ptr @ab8500_gpadc_read_raw._entry_ptr, ptr @ab8500_gpadc_runtime_resume._entry, ptr @ab8500_gpadc_runtime_resume._entry_ptr, ptr @ab8500_gpadc_driver, ptr @.str, ptr @ab8500_gpadc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @ab8500_gpadc_info, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @init_completion.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_parse_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_parse_channels._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_parse_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_parse_channel._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read_calibration_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read_calibration_data._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_read._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_ad_to_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_gpadc_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_gpadc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ret.i = alloca [7 x i32], align 4
  %gpadc_cal.i = alloca [7 x i8], align 1
  %gpadc_otp4.i = alloca [3 x i8], align 1
  %chan.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 184) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %4, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %ab8500 = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %ab8500 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ab8500, align 4
  %call.i.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #8
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end.do.end.i_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.06.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i, label %of_get_available_child_count.exit.i.do.end.i_crit_edge, label %do.end3.i

of_get_available_child_count.exit.i.do.end.i_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_available_child_count.exit.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20) #11
  br label %cleanup

do.end3.i:                                        ; preds = %of_get_available_child_count.exit.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.23, i32 noundef %inc.i.i) #11
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 88) #8
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %do.end3.i.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !161

do.end3.i.cleanup_crit_edge:                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %do.end3.i
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 8
  %19 = extractvalue { i32, i1 } %15, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef %19, i32 noundef 3520) #8
  %tobool7.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %devm_kcalloc.exit58.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit58.i:                            ; preds = %devm_kcalloc.exit.i
  %20 = mul nuw nsw i32 %inc.i.i, 12
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 8
  %call5.i.i55.i = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %20, i32 noundef 3520) #8
  %chans.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %chans.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i55.i, ptr %chans.i, align 8
  %tobool13.not.i = icmp eq ptr %call5.i.i55.i, null
  br i1 %tobool13.not.i, label %devm_kcalloc.exit58.i.cleanup_crit_edge, label %if.end15.i

devm_kcalloc.exit58.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %devm_kcalloc.exit58.i
  %call16.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #8
  %cmp.not84.i = icmp eq ptr %call16.i, null
  br i1 %cmp.not84.i, label %if.end15.i.if.end9_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  br label %for.body.i

if.end15.i.if.end9_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.i.for.body.i_crit_edge
  %i.086.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end15.i.for.body.i_crit_edge ]
  %child.085.i = phi ptr [ %call25.i, %for.inc.i.for.body.i_crit_edge ], [ %call16.i, %if.end15.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chans.i, align 8
  %arrayidx18.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.086.i
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %4, align 8
  %28 = ptrtoint ptr %child.085.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %child.085.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan.i.i) #8
  %30 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %chan.i.i, align 4, !annotation !162
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.085.i, ptr noundef nonnull @.str.26, ptr noundef nonnull %chan.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.27, ptr noundef %29) #11
  br label %cleanup.i

if.end.i.i:                                       ; preds = %for.body.i
  %31 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %32)
  %cmp.i.i = icmp ugt i32 %32, 31
  br i1 %cmp.i.i, label %do.end5.i.i, label %for.inc.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.30, ptr noundef %29, i32 noundef %32) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end5.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %do.end5.i.i ], [ %call.i.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i.i) #8
  call void @of_node_put(ptr noundef nonnull %child.085.i) #8
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i.i
  %channel.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.086.i, i32 1
  %33 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %channel.i.i, align 4
  %datasheet_name.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.086.i, i32 18
  %34 = ptrtoint ptr %datasheet_name.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %datasheet_name.i.i, align 4
  %indexed.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.086.i, i32 19
  %35 = ptrtoint ptr %indexed.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.i = load i8, ptr %indexed.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %indexed.i.i, align 4
  %address.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.086.i, i32 3
  %36 = ptrtoint ptr %address.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %32, ptr %address.i.i, align 4
  %info_mask_separate.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.086.i, i32 6
  %37 = ptrtoint ptr %info_mask_separate.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %info_mask_separate.i.i, align 4
  %38 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %38)
  %switch.i.i = icmp eq i32 %38, 10
  %spec.select.i.i = zext i1 %switch.i.i to i32
  %39 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select.i.i, ptr %arrayidx18.i, align 4
  %conv.i.i = trunc i32 %32 to i8
  %id.i.i = getelementptr %struct.ab8500_gpadc_chan_info, ptr %25, i32 %i.086.i, i32 1
  %40 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i.i, ptr %id.i.i, align 4
  %avg_sample.i.i = getelementptr %struct.ab8500_gpadc_chan_info, ptr %25, i32 %i.086.i, i32 4
  %41 = ptrtoint ptr %avg_sample.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 16, ptr %avg_sample.i.i, align 1
  %hardware_control.i.i = getelementptr %struct.ab8500_gpadc_chan_info, ptr %25, i32 %i.086.i, i32 2
  %42 = ptrtoint ptr %hardware_control.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %hardware_control.i.i, align 1
  %falling_edge.i.i = getelementptr %struct.ab8500_gpadc_chan_info, ptr %25, i32 %i.086.i, i32 3
  %43 = ptrtoint ptr %falling_edge.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %falling_edge.i.i, align 2
  %trig_timer.i.i = getelementptr %struct.ab8500_gpadc_chan_info, ptr %25, i32 %i.086.i, i32 5
  %44 = ptrtoint ptr %trig_timer.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %trig_timer.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i.i) #8
  %inc.i = add i32 %i.086.i, 1
  %call25.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.085.i) #8
  %cmp.not.i = icmp eq ptr %call25.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %for.inc.i.if.end9_crit_edge, %if.end15.i.if.end9_crit_edge
  %nchans26.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 3
  %45 = ptrtoint ptr %nchans26.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc.i.i, ptr %nchans26.i, align 4
  %call10 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #8
  %irq_sw = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 6
  %46 = ptrtoint ptr %irq_sw to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call10, ptr %irq_sw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call10, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %47 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ab8500, align 4
  %version.i = getelementptr inbounds %struct.ab8500, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.not = icmp eq i32 %50, 0
  br i1 %cmp.i.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %call20 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #8
  %irq_hw = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 7
  %51 = ptrtoint ptr %irq_hw to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call20, ptr %irq_hw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %if.then23, label %if.then19.if.end28_crit_edge

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call20, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %irq_hw27 = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 7
  %52 = ptrtoint ptr %irq_hw27 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %irq_hw27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then19.if.end28_crit_edge
  %complete = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 4
  %53 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #8
  %54 = ptrtoint ptr %irq_sw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq_sw, align 4
  %call30 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %55, ptr noundef null, ptr noundef nonnull @ab8500_bm_gpadcconvend_handler, i32 noundef 24576, ptr noundef nonnull @.str.5, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end, label %if.end34

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %irq_sw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq_sw, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %57) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %irq_hw35 = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 7
  %58 = ptrtoint ptr %irq_hw35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq_hw35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool36.not = icmp eq i32 %59, 0
  br i1 %tobool36.not, label %if.end34.if.end47_crit_edge, label %if.then37

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then37:                                        ; preds = %if.end34
  %call39 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %59, ptr noundef null, ptr noundef nonnull @ab8500_bm_gpadcconvend_handler, i32 noundef 24576, ptr noundef nonnull @.str.11, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.then37.if.end47_crit_edge

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %irq_hw35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq_hw35, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %61) #11
  br label %cleanup

if.end47:                                         ; preds = %if.then37.if.end47_crit_edge, %if.end34.if.end47_crit_edge
  %call48 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  %vddadc = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 5
  %62 = ptrtoint ptr %vddadc to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call48, ptr %vddadc, align 8
  %cmp.i146 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %call48 to i32
  %call54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %63, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %call57 = call i32 @regulator_enable(ptr noundef %call48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end63, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call57) #11
  br label %cleanup

if.end63:                                         ; preds = %if.end55
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !163
  %call.i = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ret.i) #8
  %65 = getelementptr inbounds [7 x i32], ptr %ret.i, i32 0, i32 1
  %66 = getelementptr inbounds [7 x i32], ptr %ret.i, i32 0, i32 2
  %67 = getelementptr inbounds [7 x i32], ptr %ret.i, i32 0, i32 3
  %68 = getelementptr inbounds [7 x i32], ptr %ret.i, i32 0, i32 4
  %69 = getelementptr inbounds [7 x i32], ptr %ret.i, i32 0, i32 5
  %70 = getelementptr inbounds [7 x i32], ptr %ret.i, i32 0, i32 6
  %71 = call ptr @memset(ptr %65, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %gpadc_cal.i) #8
  %72 = getelementptr inbounds [7 x i8], ptr %gpadc_cal.i, i32 0, i32 1
  %73 = getelementptr inbounds [7 x i8], ptr %gpadc_cal.i, i32 0, i32 2
  %74 = getelementptr inbounds [7 x i8], ptr %gpadc_cal.i, i32 0, i32 3
  %75 = getelementptr inbounds [7 x i8], ptr %gpadc_cal.i, i32 0, i32 4
  %76 = getelementptr inbounds [7 x i8], ptr %gpadc_cal.i, i32 0, i32 5
  %77 = getelementptr inbounds [7 x i8], ptr %gpadc_cal.i, i32 0, i32 6
  %78 = call ptr @memset(ptr %gpadc_cal.i, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %gpadc_otp4.i) #8
  %79 = ptrtoint ptr %gpadc_otp4.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %gpadc_otp4.i, align 1, !annotation !162
  %80 = getelementptr inbounds [3 x i8], ptr %gpadc_otp4.i, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %80, align 1, !annotation !162
  %82 = getelementptr inbounds [3 x i8], ptr %gpadc_otp4.i, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %82, align 1, !annotation !162
  %84 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %4, align 8
  %call.i147 = call i32 @abx500_get_register_interruptible(ptr noundef %85, i8 noundef zeroext 21, i8 noundef zeroext 15, ptr noundef nonnull %gpadc_cal.i) #8
  %86 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call.i147, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp4.i = icmp slt i32 %call.i147, 0
  br i1 %cmp4.i, label %do.end.i148, label %if.else.i

do.end.i148:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 15) #11
  br label %for.inc.i149

if.else.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef nonnull %ret.i, i32 noundef 4) #8
  br label %for.inc.i149

for.inc.i149:                                     ; preds = %if.else.i, %do.end.i148
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %4, align 8
  %call.1.i = call i32 @abx500_get_register_interruptible(ptr noundef %90, i8 noundef zeroext 21, i8 noundef zeroext 16, ptr noundef %72) #8
  %91 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.1.i, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp4.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp4.1.i, label %do.end.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef %65, i32 noundef 4) #8
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 16) #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %if.else.1.i
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %4, align 8
  %call.2.i = call i32 @abx500_get_register_interruptible(ptr noundef %95, i8 noundef zeroext 21, i8 noundef zeroext 17, ptr noundef %73) #8
  %96 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call.2.i, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp4.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp4.2.i, label %do.end.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef %66, i32 noundef 4) #8
  br label %for.inc.2.i

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 17) #11
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i, %if.else.2.i
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %4, align 8
  %call.3.i = call i32 @abx500_get_register_interruptible(ptr noundef %100, i8 noundef zeroext 21, i8 noundef zeroext 18, ptr noundef %74) #8
  %101 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call.3.i, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp4.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp4.3.i, label %do.end.3.i, label %if.else.3.i

if.else.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef %67, i32 noundef 4) #8
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 18) #11
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %if.else.3.i
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %4, align 8
  %call.4.i = call i32 @abx500_get_register_interruptible(ptr noundef %105, i8 noundef zeroext 21, i8 noundef zeroext 19, ptr noundef %75) #8
  %106 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call.4.i, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp4.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp4.4.i, label %do.end.4.i, label %if.else.4.i

if.else.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef %68, i32 noundef 4) #8
  br label %for.inc.4.i

do.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 19) #11
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end.4.i, %if.else.4.i
  %109 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %4, align 8
  %call.5.i = call i32 @abx500_get_register_interruptible(ptr noundef %110, i8 noundef zeroext 21, i8 noundef zeroext 20, ptr noundef %76) #8
  %111 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call.5.i, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp4.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp4.5.i, label %do.end.5.i, label %if.else.5.i

if.else.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef %69, i32 noundef 4) #8
  br label %for.inc.5.i

do.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 20) #11
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end.5.i, %if.else.5.i
  %114 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %4, align 8
  %call.6.i = call i32 @abx500_get_register_interruptible(ptr noundef %115, i8 noundef zeroext 21, i8 noundef zeroext 21, ptr noundef %77) #8
  %116 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call.6.i, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp4.6.i = icmp slt i32 %call.6.i, 0
  br i1 %cmp4.6.i, label %do.end.6.i, label %if.else.6.i

if.else.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef %70, i32 noundef 4) #8
  br label %for.inc.6.i

do.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 21) #11
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end.6.i, %if.else.6.i
  %119 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ab8500, align 4
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %122)
  %cmp.i.not.i = icmp eq i32 %122, 4
  br i1 %cmp.i.not.i, label %if.then10.i, label %if.else128.i

if.then10.i:                                      ; preds = %for.inc.6.i
  %123 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp12.i = icmp slt i32 %124, 0
  br i1 %cmp12.i, label %if.then10.i.if.else41.i_crit_edge, label %lor.lhs.false.i

if.then10.i.if.else41.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else41.i

lor.lhs.false.i:                                  ; preds = %if.then10.i
  %125 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp15.i = icmp slt i32 %126, 0
  br i1 %cmp15.i, label %lor.lhs.false.i.if.else41.i_crit_edge, label %if.then17.i

lor.lhs.false.i.if.else41.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else41.i

if.then17.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %72, align 1
  %conv19.i = zext i8 %128 to i32
  %shl.i = shl nuw nsw i32 %conv19.i, 2
  %129 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %73, align 1
  %conv21.i = zext i8 %130 to i32
  %131 = lshr i32 %conv21.i, 6
  %or.i = or i32 %131, %shl.i
  %and25.i = lshr i32 %conv21.i, 1
  %132 = and i32 %and25.i, 31
  %conv27.i = trunc i32 %or.i to i16
  %cal_data.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8
  %otp_calib_hi.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 0, i32 2
  %133 = ptrtoint ptr %otp_calib_hi.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv27.i, ptr %otp_calib_hi.i, align 8
  %conv29.i = trunc i32 %132 to i16
  %otp_calib_lo.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 0, i32 3
  %134 = ptrtoint ptr %otp_calib_lo.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv29.i, ptr %otp_calib_lo.i, align 2
  %sub.i = sub nsw i32 %or.i, %132
  %div.i = sdiv i32 19185000, %sub.i
  %conv32.i = sext i32 %div.i to i64
  %135 = ptrtoint ptr %cal_data.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv32.i, ptr %cal_data.i, align 8
  %mul.i = mul i32 %div.i, %or.i
  %sub37.i = sub i32 19500000, %mul.i
  %conv38.i = sext i32 %sub37.i to i64
  %offset.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 0, i32 1
  %136 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv38.i, ptr %offset.i, align 8
  br label %if.end45.i

if.else41.i:                                      ; preds = %lor.lhs.false.i.if.else41.i_crit_edge, %if.then10.i.if.else41.i_crit_edge
  %cal_data42.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8
  %137 = ptrtoint ptr %cal_data42.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 0, ptr %cal_data42.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else41.i, %if.then17.i
  %138 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %4, align 8
  %call54.i = call i32 @abx500_get_register_interruptible(ptr noundef %139, i8 noundef zeroext 21, i8 noundef zeroext 56, ptr noundef nonnull %gpadc_otp4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp57.i = icmp slt i32 %call54.i, 0
  br i1 %cmp57.i, label %do.end62.i, label %if.end45.i.for.inc66.i_crit_edge

if.end45.i.for.inc66.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66.i

do.end62.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 56) #11
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %do.end62.i, %if.end45.i.for.inc66.i_crit_edge
  %142 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %4, align 8
  %call54.1.i = call i32 @abx500_get_register_interruptible(ptr noundef %143, i8 noundef zeroext 21, i8 noundef zeroext 57, ptr noundef %80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.1.i)
  %cmp57.1.i = icmp slt i32 %call54.1.i, 0
  br i1 %cmp57.1.i, label %do.end62.1.i, label %for.inc66.i.for.inc66.1.i_crit_edge

for.inc66.i.for.inc66.1.i_crit_edge:              ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66.1.i

do.end62.1.i:                                     ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 57) #11
  br label %for.inc66.1.i

for.inc66.1.i:                                    ; preds = %do.end62.1.i, %for.inc66.i.for.inc66.1.i_crit_edge
  %146 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %4, align 8
  %call54.2.i = call i32 @abx500_get_register_interruptible(ptr noundef %147, i8 noundef zeroext 21, i8 noundef zeroext 58, ptr noundef %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.2.i)
  %cmp57.2.i = icmp slt i32 %call54.2.i, 0
  br i1 %cmp57.2.i, label %for.inc66.2.i.thread, label %for.inc66.2.i

for.inc66.2.i.thread:                             ; preds = %for.inc66.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 58) #11
  br label %if.else123.i

for.inc66.2.i:                                    ; preds = %for.inc66.1.i
  %brmerge.i = select i1 %cmp57.i, i1 true, i1 %cmp57.1.i
  br i1 %brmerge.i, label %for.inc66.2.i.if.else123.i_crit_edge, label %if.then80.i

for.inc66.2.i.if.else123.i_crit_edge:             ; preds = %for.inc66.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else123.i

if.then80.i:                                      ; preds = %for.inc66.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %gpadc_otp4.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %gpadc_otp4.i, align 1
  %152 = and i8 %151, 7
  %and83.i = zext i8 %152 to i32
  %shl84.i = shl nuw nsw i32 %and83.i, 7
  %153 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %80, align 1
  %conv86.i = zext i8 %154 to i32
  %155 = lshr i32 %conv86.i, 1
  %or89.i = or i32 %shl84.i, %155
  %and92.i = shl nuw nsw i32 %conv86.i, 5
  %shl93.i = and i32 %and92.i, 32
  %156 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %82, align 1
  %158 = lshr i8 %157, 3
  %159 = zext i8 %158 to i32
  %or98.i = or i32 %shl93.i, %159
  %conv99.i = trunc i32 %or89.i to i16
  %arrayidx101.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 3
  %otp_calib_hi102.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 3, i32 2
  %160 = ptrtoint ptr %otp_calib_hi102.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv99.i, ptr %otp_calib_hi102.i, align 8
  %conv103.i = trunc i32 %or98.i to i16
  %otp_calib_lo106.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 3, i32 3
  %161 = ptrtoint ptr %otp_calib_lo106.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv103.i, ptr %otp_calib_lo106.i, align 2
  %sub107.i = sub nsw i32 %or89.i, %or98.i
  %div108.i = sdiv i32 117440512, %sub107.i
  %conv109.i = sext i32 %div108.i to i64
  %mul112.i = mul i32 %div108.i, %or89.i
  %sub113.i = sub i32 58720256, %mul112.i
  %conv114.i = sext i32 %sub113.i to i64
  %mul115.i = mul nsw i64 %conv109.i, 100
  %162 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %mul115.i, ptr %arrayidx101.i, align 8
  %mul119.i = mul nsw i64 %conv114.i, 100
  %offset122.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 3, i32 1
  %163 = ptrtoint ptr %offset122.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %mul119.i, ptr %offset122.i, align 8
  br label %if.end186.i

if.else123.i:                                     ; preds = %for.inc66.2.i.if.else123.i_crit_edge, %for.inc66.2.i.thread
  %arrayidx125.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 3
  %164 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 0, ptr %arrayidx125.i, align 8
  br label %if.end186.i

if.else128.i:                                     ; preds = %for.inc.6.i
  %165 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp130.i = icmp slt i32 %166, 0
  br i1 %cmp130.i, label %if.else128.i.if.else181.i_crit_edge, label %lor.lhs.false132.i

if.else128.i.if.else181.i_crit_edge:              ; preds = %if.else128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else181.i

lor.lhs.false132.i:                               ; preds = %if.else128.i
  %167 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp134.i = icmp slt i32 %168, 0
  br i1 %cmp134.i, label %lor.lhs.false132.i.if.else181.i_crit_edge, label %lor.lhs.false136.i

lor.lhs.false132.i.if.else181.i_crit_edge:        ; preds = %lor.lhs.false132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else181.i

lor.lhs.false136.i:                               ; preds = %lor.lhs.false132.i
  %169 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp138.i = icmp slt i32 %170, 0
  br i1 %cmp138.i, label %lor.lhs.false136.i.if.else181.i_crit_edge, label %if.then140.i

lor.lhs.false136.i.if.else181.i_crit_edge:        ; preds = %lor.lhs.false136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else181.i

if.then140.i:                                     ; preds = %lor.lhs.false136.i
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %gpadc_cal.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %gpadc_cal.i, align 1
  %173 = and i8 %172, 3
  %and143.i = zext i8 %173 to i32
  %shl144.i = shl nuw nsw i32 %and143.i, 8
  %174 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %72, align 1
  %176 = shl i8 %175, 2
  %shl148.i = zext i8 %176 to i32
  %or149.i = or i32 %shl144.i, %shl148.i
  %177 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %73, align 1
  %conv151.i = zext i8 %178 to i32
  %179 = lshr i32 %conv151.i, 6
  %or154.i = or i32 %or149.i, %179
  %and157.i = lshr i32 %conv151.i, 1
  %180 = and i32 %and157.i, 31
  %conv159.i = trunc i32 %or154.i to i16
  %cal_data160.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8
  %otp_calib_hi162.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 0, i32 2
  %181 = ptrtoint ptr %otp_calib_hi162.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv159.i, ptr %otp_calib_hi162.i, align 8
  %conv163.i = trunc i32 %180 to i16
  %otp_calib_lo166.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 0, i32 3
  %182 = ptrtoint ptr %otp_calib_lo166.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv163.i, ptr %otp_calib_lo166.i, align 2
  %sub167.i = sub nsw i32 %or154.i, %180
  %div168.i = sdiv i32 19185000, %sub167.i
  %conv169.i = sext i32 %div168.i to i64
  %183 = ptrtoint ptr %cal_data160.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %conv169.i, ptr %cal_data160.i, align 8
  %mul175.i = mul i32 %div168.i, %or154.i
  %sub176.i = sub i32 19500000, %mul175.i
  %conv177.i = sext i32 %sub176.i to i64
  %offset180.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 0, i32 1
  %184 = ptrtoint ptr %offset180.i to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %conv177.i, ptr %offset180.i, align 8
  br label %if.end186.i

if.else181.i:                                     ; preds = %lor.lhs.false136.i.if.else181.i_crit_edge, %lor.lhs.false132.i.if.else181.i_crit_edge, %if.else128.i.if.else181.i_crit_edge
  %cal_data182.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %4, i32 0, i32 8
  %185 = ptrtoint ptr %cal_data182.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 0, ptr %cal_data182.i, align 8
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.else181.i, %if.then140.i, %if.else123.i, %if.then80.i
  %186 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp188.i = icmp slt i32 %187, 0
  br i1 %cmp188.i, label %if.end186.i.if.else238.i_crit_edge, label %lor.lhs.false190.i

if.end186.i.if.else238.i_crit_edge:               ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else238.i

lor.lhs.false190.i:                               ; preds = %if.end186.i
  %188 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp192.i = icmp slt i32 %189, 0
  br i1 %cmp192.i, label %lor.lhs.false190.i.if.else238.i_crit_edge, label %lor.lhs.false194.i

lor.lhs.false190.i.if.else238.i_crit_edge:        ; preds = %lor.lhs.false190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else238.i

lor.lhs.false194.i:                               ; preds = %lor.lhs.false190.i
  %190 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp196.i = icmp slt i32 %191, 0
  br i1 %cmp196.i, label %lor.lhs.false194.i.if.else238.i_crit_edge, label %if.then198.i

lor.lhs.false194.i.if.else238.i_crit_edge:        ; preds = %lor.lhs.false194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else238.i

if.then198.i:                                     ; preds = %lor.lhs.false194.i
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %73, align 1
  %194 = and i8 %193, 1
  %and201.i = zext i8 %194 to i32
  %shl202.i = shl nuw nsw i32 %and201.i, 9
  %195 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %74, align 1
  %conv204.i = zext i8 %196 to i32
  %shl205.i = shl nuw nsw i32 %conv204.i, 1
  %or206.i = or i32 %shl202.i, %shl205.i
  %197 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %75, align 1
  %conv208.i = zext i8 %198 to i32
  %199 = lshr i32 %conv208.i, 7
  %or211.i = or i32 %or206.i, %199
  %and214.i = lshr i32 %conv208.i, 2
  %200 = and i32 %and214.i, 31
  %conv216.i = trunc i32 %or211.i to i16
  %arrayidx218.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 1
  %otp_calib_hi219.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 1, i32 2
  %201 = ptrtoint ptr %otp_calib_hi219.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv216.i, ptr %otp_calib_hi219.i, align 8
  %conv220.i = trunc i32 %200 to i16
  %otp_calib_lo223.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 1, i32 3
  %202 = ptrtoint ptr %otp_calib_lo223.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv220.i, ptr %otp_calib_lo223.i, align 2
  %sub224.i = sub nsw i32 %or211.i, %200
  %div225.i = sdiv i32 1279000, %sub224.i
  %conv226.i = sext i32 %div225.i to i64
  %203 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %conv226.i, ptr %arrayidx218.i, align 8
  %mul232.i = mul i32 %div225.i, %or211.i
  %sub233.i = sub i32 1300000, %mul232.i
  %conv234.i = sext i32 %sub233.i to i64
  %offset237.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 1, i32 1
  %204 = ptrtoint ptr %offset237.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %conv234.i, ptr %offset237.i, align 8
  br label %if.end242.i

if.else238.i:                                     ; preds = %lor.lhs.false194.i.if.else238.i_crit_edge, %lor.lhs.false190.i.if.else238.i_crit_edge, %if.end186.i.if.else238.i_crit_edge
  %arrayidx240.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 1
  %205 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 0, ptr %arrayidx240.i, align 8
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.else238.i, %if.then198.i
  %206 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp244.i = icmp slt i32 %207, 0
  br i1 %cmp244.i, label %if.end242.i.if.else288.i_crit_edge, label %lor.lhs.false246.i

if.end242.i.if.else288.i_crit_edge:               ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else288.i

lor.lhs.false246.i:                               ; preds = %if.end242.i
  %208 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp248.i = icmp slt i32 %209, 0
  br i1 %cmp248.i, label %lor.lhs.false246.i.if.else288.i_crit_edge, label %lor.lhs.false250.i

lor.lhs.false246.i.if.else288.i_crit_edge:        ; preds = %lor.lhs.false246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else288.i

lor.lhs.false250.i:                               ; preds = %lor.lhs.false246.i
  %210 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp252.i = icmp slt i32 %211, 0
  br i1 %cmp252.i, label %lor.lhs.false250.i.if.else288.i_crit_edge, label %if.then254.i

lor.lhs.false250.i.if.else288.i_crit_edge:        ; preds = %lor.lhs.false250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else288.i

if.then254.i:                                     ; preds = %lor.lhs.false250.i
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %75, align 1
  %214 = and i8 %213, 3
  %and257.i = zext i8 %214 to i32
  %shl258.i = shl nuw nsw i32 %and257.i, 8
  %215 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %76, align 1
  %conv260.i = zext i8 %216 to i32
  %or261.i = or i32 %shl258.i, %conv260.i
  %217 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %77, align 1
  %219 = lshr i8 %218, 2
  %220 = zext i8 %219 to i32
  %conv266.i = trunc i32 %or261.i to i16
  %arrayidx268.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 2
  %otp_calib_hi269.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 2, i32 2
  %221 = ptrtoint ptr %otp_calib_hi269.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %conv266.i, ptr %otp_calib_hi269.i, align 8
  %conv270.i = zext i8 %219 to i16
  %otp_calib_lo273.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 2, i32 3
  %222 = ptrtoint ptr %otp_calib_lo273.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv270.i, ptr %otp_calib_lo273.i, align 2
  %sub274.i = sub nsw i32 %or261.i, %220
  %div275.i = sdiv i32 2320000, %sub274.i
  %conv276.i = sext i32 %div275.i to i64
  %223 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %conv276.i, ptr %arrayidx268.i, align 8
  %mul282.i = mul i32 %div275.i, %or261.i
  %sub283.i = sub i32 4700000, %mul282.i
  %conv284.i = sext i32 %sub283.i to i64
  %offset287.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 2, i32 1
  %224 = ptrtoint ptr %offset287.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv284.i, ptr %offset287.i, align 8
  br label %ab8500_gpadc_read_calibration_data.exit

if.else288.i:                                     ; preds = %lor.lhs.false250.i.if.else288.i_crit_edge, %lor.lhs.false246.i.if.else288.i_crit_edge, %if.end242.i.if.else288.i_crit_edge
  %arrayidx290.i = getelementptr %struct.ab8500_gpadc, ptr %4, i32 0, i32 8, i32 2
  %225 = ptrtoint ptr %arrayidx290.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 0, ptr %arrayidx290.i, align 8
  br label %ab8500_gpadc_read_calibration_data.exit

ab8500_gpadc_read_calibration_data.exit:          ; preds = %if.else288.i, %if.then254.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %gpadc_otp4.i) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %gpadc_cal.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ret.i) #8
  %call.i150 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %226 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @.str, ptr %name, align 8
  %227 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %228 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @ab8500_gpadc_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %229 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call5.i.i.i, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %230 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %inc.i.i, ptr %num_channels, align 4
  %call66 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %ab8500_gpadc_read_calibration_data.exit.cleanup_crit_edge, label %out_dis_pm

ab8500_gpadc_read_calibration_data.exit.cleanup_crit_edge: ; preds = %ab8500_gpadc_read_calibration_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_dis_pm:                                       ; preds = %ab8500_gpadc_read_calibration_data.exit
  %call.i151 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  %call.i.i.i153 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %231 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !165
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %out_dis_pm.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

out_dis_pm.pm_runtime_put_noidle.exit_crit_edge:  ; preds = %out_dis_pm
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %out_dis_pm
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %out_dis_pm.pm_runtime_put_noidle.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  %232 = ptrtoint ptr %vddadc to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %vddadc, align 8
  %call72 = call i32 @regulator_disable(ptr noundef %233) #8
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %ab8500_gpadc_read_calibration_data.exit.cleanup_crit_edge, %do.end62, %if.then51, %do.end44, %do.end, %if.then23, %if.then12, %cleanup.i, %devm_kcalloc.exit58.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %do.end3.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then12 ], [ %call25, %if.then23 ], [ %call30, %do.end ], [ %call39, %do.end44 ], [ %call54, %if.then51 ], [ %call57, %do.end62 ], [ %call66, %pm_runtime_put_noidle.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %ab8500_gpadc_read_calibration_data.exit.cleanup_crit_edge ], [ -12, %do.end3.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit58.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -19, %do.end.i ], [ %retval.0.i.ph.i, %cleanup.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !165
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !166
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #8
  %vddadc = getelementptr inbounds %struct.ab8500_gpadc, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %vddadc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vddadc, align 8
  %call5 = tail call i32 @regulator_disable(ptr noundef %12) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_bm_gpadcconvend_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.ab8500_gpadc, ptr %data, i32 0, i32 4
  tail call void @complete(ptr noundef %complete) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %low_data.i = alloca i8, align 1
  %high_data.i = alloca i8, align 1
  %low_data2.i = alloca i8, align 1
  %high_data2.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %conv = trunc i32 %3 to i8
  %nchans.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %nchans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nchans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not.i = icmp eq i32 %5, 0
  br i1 %cmp16.not.i, label %entry.ab8500_gpadc_get_channel.exit_crit_edge, label %for.body.lr.ph.i

entry.ab8500_gpadc_get_channel.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_gpadc_get_channel.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %chans.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chans.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.ab8500_gpadc_chan_info, ptr %7, i32 %i.017.i, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %conv)
  %cmp2.i = icmp eq i8 %9, %conv
  br i1 %cmp2.i, label %for.body.for.end_crit_edge.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.for.end_crit_edge.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.le24.i = getelementptr %struct.ab8500_gpadc_chan_info, ptr %7, i32 %i.017.i
  br label %ab8500_gpadc_get_channel.exit

ab8500_gpadc_get_channel.exit:                    ; preds = %for.body.for.end_crit_edge.i, %entry.ab8500_gpadc_get_channel.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.017.i, %for.body.for.end_crit_edge.i ], [ 0, %entry.ab8500_gpadc_get_channel.exit_crit_edge ]
  %ch.1.i = phi ptr [ %arrayidx.le24.i, %for.body.for.end_crit_edge.i ], [ inttoptr (i32 -1 to ptr), %entry.ab8500_gpadc_get_channel.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %5)
  %cmp5.i = icmp eq i32 %i.0.lcssa.i, %5
  %tobool.not49 = icmp eq ptr %ch.1.i, null
  %tobool.not = select i1 %cmp5.i, i1 true, i1 %tobool.not49
  br i1 %tobool.not, label %ab8500_gpadc_get_channel.exit.do.end_crit_edge, label %if.end

ab8500_gpadc_get_channel.exit.do.end_crit_edge:   ; preds = %ab8500_gpadc_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %ab8500_gpadc_get_channel.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %ab8500_gpadc_get_channel.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %val.i, align 1, !annotation !162
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_data.i) #8
  %13 = ptrtoint ptr %low_data.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %low_data.i, align 1, !annotation !162
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %high_data.i) #8
  %14 = ptrtoint ptr %high_data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %high_data.i, align 1, !annotation !162
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_data2.i) #8
  %15 = ptrtoint ptr %low_data2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %low_data2.i, align 1, !annotation !162
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %high_data2.i) #8
  %16 = ptrtoint ptr %high_data2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %high_data2.i, align 1, !annotation !162
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.ab8500_gpadc_read.exit.thread_crit_edge, label %if.end.i

if.end.ab8500_gpadc_read.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_gpadc_read.exit.thread

if.end.i:                                         ; preds = %if.end
  %irq_sw.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %irq_sw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_sw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp slt i32 %18, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %hardware_control.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 2
  %19 = ptrtoint ptr %hardware_control.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hardware_control.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.ab8500_gpadc_read.exit.thread_crit_edge, label %land.lhs.true.i.if.end3.i_crit_edge

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i.ab8500_gpadc_read.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_gpadc_read.exit.thread

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %irq_hw.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %irq_hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_hw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp4.i = icmp slt i32 %22, 1
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end3.i.if.end9.i_crit_edge

if.end3.i.if.end9.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %if.end3.i
  %hardware_control6.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 2
  %23 = ptrtoint ptr %hardware_control6.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hardware_control6.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not.i = icmp eq i8 %24, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.if.end9.i_crit_edge, label %land.lhs.true5.i.ab8500_gpadc_read.exit.thread_crit_edge

land.lhs.true5.i.ab8500_gpadc_read.exit.thread_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ab8500_gpadc_read.exit.thread

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %if.end3.i.if.end9.i_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %26, i32 noundef 4) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i.do.body.i_crit_edge, %if.end9.i
  %looplimit.0.i = phi i32 [ 0, %if.end9.i ], [ %inc.i37, %if.end17.i.do.body.i_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %call11.i = call i32 @abx500_get_register_interruptible(ptr noundef %28, i8 noundef zeroext 10, i8 noundef zeroext 4, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.body.i.out.i_crit_edge, label %if.end14.i

do.body.i.out.i_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end14.i:                                       ; preds = %do.body.i
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val.i, align 1
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not.i = icmp eq i8 %31, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end31.i_crit_edge, label %if.end17.i

if.end14.i.if.end31.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end17.i:                                       ; preds = %if.end14.i
  call void @msleep(i32 noundef 20) #8
  %inc.i37 = add nuw nsw i32 %looplimit.0.i, 1
  %exitcond.not.i38 = icmp eq i32 %inc.i37, 10
  br i1 %exitcond.not.i38, label %land.lhs.true22.i, label %if.end17.i.do.body.i_crit_edge

if.end17.i.do.body.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true22.i:                                ; preds = %if.end17.i
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool25.not.i = icmp eq i8 %34, 0
  br i1 %tobool25.not.i, label %land.lhs.true22.i.if.end31.i_crit_edge, label %do.end29.i

land.lhs.true22.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

do.end29.i:                                       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.40) #11
  br label %out.i

if.end31.i:                                       ; preds = %land.lhs.true22.i.if.end31.i_crit_edge, %if.end14.i.if.end31.i_crit_edge
  %avg_sample.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 4
  %37 = ptrtoint ptr %avg_sample.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %avg_sample.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i8 %38, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 4, label %sw.bb35.i
    i8 8, label %sw.bb40.i
  ]

sw.bb.i:                                          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %id.i39 = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 1
  %40 = ptrtoint ptr %id.i39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %id.i39, align 4
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %id36.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 1
  %42 = ptrtoint ptr %id36.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %id36.i, align 4
  %44 = or i8 %43, 32
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %id41.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 1
  %45 = ptrtoint ptr %id41.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id41.i, align 4
  %47 = or i8 %46, 64
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %id45.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 1
  %48 = ptrtoint ptr %id45.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %id45.i, align 4
  %50 = or i8 %49, 96
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb40.i, %sw.bb35.i, %sw.bb.i
  %ctrl23.0.i = phi i8 [ %50, %sw.default.i ], [ %47, %sw.bb40.i ], [ %44, %sw.bb35.i ], [ %41, %sw.bb.i ]
  %hardware_control49.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 2
  %51 = ptrtoint ptr %hardware_control49.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hardware_control49.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool50.not.i = icmp eq i8 %52, 0
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  br i1 %tobool50.not.i, label %if.else.i, label %if.then51.i

if.then51.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i = call i32 @abx500_set_register_interruptible(ptr noundef %54, i8 noundef zeroext 10, i8 noundef zeroext 2, i8 noundef zeroext %ctrl23.0.i) #8
  %falling_edge.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 3
  %55 = ptrtoint ptr %falling_edge.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %falling_edge.i, align 2, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool57.not.i = icmp eq i8 %56, 0
  %spec.select.i = select i1 %tobool57.not.i, i8 3, i8 19
  br label %if.end65.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call64.i = call i32 @abx500_set_register_interruptible(ptr noundef %54, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext %ctrl23.0.i) #8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else.i, %if.then51.i
  %ret.0.i = phi i32 [ %call64.i, %if.else.i ], [ %call53.i, %if.then51.i ]
  %ctrl1.0.i = phi i8 [ 1, %if.else.i ], [ %spec.select.i, %if.then51.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp66.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp66.i, label %do.end71.i, label %if.end73.i

do.end71.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.43) #11
  br label %out.i

if.end73.i:                                       ; preds = %if.end65.i
  %id74.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 1
  %59 = ptrtoint ptr %id74.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %id74.i, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %60, label %if.end73.i.sw.default88.i_crit_edge [
    i8 10, label %if.end73.i.sw.epilog92.i_crit_edge
    i8 11, label %if.end73.i.sw.epilog92.i_crit_edge92
    i8 2, label %sw.bb80.i
  ]

if.end73.i.sw.epilog92.i_crit_edge92:             ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog92.i

if.end73.i.sw.epilog92.i_crit_edge:               ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog92.i

if.end73.i.sw.default88.i_crit_edge:              ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default88.i

sw.bb80.i:                                        ; preds = %if.end73.i
  %ab8500.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %ab8500.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ab8500.i, align 4
  %version.i.i.i = getelementptr inbounds %struct.ab8500, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.not.i.i = icmp eq i32 %65, 0
  br i1 %cmp.i.not.i.i, label %is_ab8500_2p0_or_earlier.exit.i, label %sw.bb80.i.sw.epilog92.thread.i_crit_edge

sw.bb80.i.sw.epilog92.thread.i_crit_edge:         ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog92.thread.i

is_ab8500_2p0_or_earlier.exit.i:                  ; preds = %sw.bb80.i
  %chip_id.i.i = getelementptr inbounds %struct.ab8500, ptr %63, i32 0, i32 7
  %66 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %67)
  %cmp.i.i = icmp ugt i8 %67, 32
  br i1 %cmp.i.i, label %is_ab8500_2p0_or_earlier.exit.i.sw.epilog92.thread.i_crit_edge, label %is_ab8500_2p0_or_earlier.exit.i.sw.default88.i_crit_edge

is_ab8500_2p0_or_earlier.exit.i.sw.default88.i_crit_edge: ; preds = %is_ab8500_2p0_or_earlier.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default88.i

is_ab8500_2p0_or_earlier.exit.i.sw.epilog92.thread.i_crit_edge: ; preds = %is_ab8500_2p0_or_earlier.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog92.thread.i

sw.default88.i:                                   ; preds = %is_ab8500_2p0_or_earlier.exit.i.sw.default88.i_crit_edge, %if.end73.i.sw.default88.i_crit_edge
  br label %sw.epilog92.i

sw.epilog92.i:                                    ; preds = %sw.default88.i, %if.end73.i.sw.epilog92.i_crit_edge, %if.end73.i.sw.epilog92.i_crit_edge92
  %.sink.i = phi i8 [ 64, %sw.default88.i ], [ -64, %if.end73.i.sw.epilog92.i_crit_edge ], [ -64, %if.end73.i.sw.epilog92.i_crit_edge92 ]
  %conv91.i = or i8 %.sink.i, %ctrl1.0.i
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %call94.i = call i32 @abx500_set_register_interruptible(ptr noundef %69, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext %conv91.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp slt i32 %call94.i, 0
  br i1 %cmp95.i, label %sw.epilog92.i.do.end100.i_crit_edge, label %sw.epilog92.i.if.end106.i_crit_edge

sw.epilog92.i.if.end106.i_crit_edge:              ; preds = %sw.epilog92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i

sw.epilog92.i.do.end100.i_crit_edge:              ; preds = %sw.epilog92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100.i

sw.epilog92.thread.i:                             ; preds = %is_ab8500_2p0_or_earlier.exit.i.sw.epilog92.thread.i_crit_edge, %sw.bb80.i.sw.epilog92.thread.i_crit_edge
  %conv86.i = or i8 %ctrl1.0.i, 72
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %call9411.i = call i32 @abx500_set_register_interruptible(ptr noundef %71, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext %conv86.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9411.i)
  %cmp9512.i = icmp slt i32 %call9411.i, 0
  br i1 %cmp9512.i, label %sw.epilog92.thread.i.do.end100.i_crit_edge, label %if.then105.i

sw.epilog92.thread.i.do.end100.i_crit_edge:       ; preds = %sw.epilog92.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100.i

do.end100.i:                                      ; preds = %sw.epilog92.thread.i.do.end100.i_crit_edge, %sw.epilog92.i.do.end100.i_crit_edge
  %call9416.i = phi i32 [ %call9411.i, %sw.epilog92.thread.i.do.end100.i_crit_edge ], [ %call94.i, %sw.epilog92.i.do.end100.i_crit_edge ]
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.46) #11
  br label %out.i

if.then105.i:                                     ; preds = %sw.epilog92.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #8
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then105.i, %sw.epilog92.i.if.end106.i_crit_edge
  %74 = ptrtoint ptr %hardware_control49.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %hardware_control49.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool108.not.i = icmp eq i8 %75, 0
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  br i1 %tobool108.not.i, label %if.else120.i, label %if.then109.i

if.then109.i:                                     ; preds = %if.end106.i
  %trig_timer.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 5
  %78 = ptrtoint ptr %trig_timer.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %trig_timer.i, align 4
  %call111.i = call i32 @abx500_set_register_interruptible(ptr noundef %77, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext %79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %cmp112.i = icmp slt i32 %call111.i, 0
  br i1 %cmp112.i, label %do.end117.i, label %if.then109.i.if.end132.i_crit_edge

if.then109.i.if.end132.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132.i

do.end117.i:                                      ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.49) #11
  br label %out.i

if.else120.i:                                     ; preds = %if.end106.i
  %call122.i = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %77, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %cmp123.i = icmp slt i32 %call122.i, 0
  br i1 %cmp123.i, label %do.end128.i, label %if.else120.i.if.end132.i_crit_edge

if.else120.i.if.end132.i_crit_edge:               ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132.i

do.end128.i:                                      ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.52) #11
  br label %out.i

if.end132.i:                                      ; preds = %if.else120.i.if.end132.i_crit_edge, %if.then109.i.if.end132.i_crit_edge
  %completion_timeout.0.i = phi i32 [ 200, %if.then109.i.if.end132.i_crit_edge ], [ 50, %if.else120.i.if.end132.i_crit_edge ]
  %data_low_addr.0.i = phi i8 [ 7, %if.then109.i.if.end132.i_crit_edge ], [ 5, %if.else120.i.if.end132.i_crit_edge ]
  %data_high_addr.0.i = phi i8 [ 8, %if.then109.i.if.end132.i_crit_edge ], [ 6, %if.else120.i.if.end132.i_crit_edge ]
  %complete.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 4
  %call133.i = call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef %completion_timeout.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  br i1 %tobool134.not.i, label %do.end138.i, label %if.end140.i

do.end138.i:                                      ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.55) #11
  br label %out.i

if.end140.i:                                      ; preds = %if.end132.i
  %call142.i = call i32 @abx500_get_register_interruptible(ptr noundef %85, i8 noundef zeroext 10, i8 noundef zeroext %data_low_addr.0.i, ptr noundef nonnull %low_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %cmp143.i = icmp slt i32 %call142.i, 0
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  br i1 %cmp143.i, label %do.end148.i, label %if.end150.i

do.end148.i:                                      ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.58) #11
  br label %out.i

if.end150.i:                                      ; preds = %if.end140.i
  %call152.i = call i32 @abx500_get_register_interruptible(ptr noundef %87, i8 noundef zeroext 10, i8 noundef zeroext %data_high_addr.0.i, ptr noundef nonnull %high_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152.i)
  %cmp153.i = icmp slt i32 %call152.i, 0
  br i1 %cmp153.i, label %do.end158.i, label %if.end160.i

do.end158.i:                                      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.61) #11
  br label %out.i

if.end160.i:                                      ; preds = %if.end150.i
  %90 = ptrtoint ptr %id74.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %id74.i, align 4
  %92 = and i8 %91, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %92)
  %switch.i = icmp eq i8 %92, 28
  br i1 %switch.i, label %if.then179.i, label %if.end160.i.if.end221.i_crit_edge

if.end160.i.if.end221.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221.i

if.then179.i:                                     ; preds = %if.end160.i
  %93 = ptrtoint ptr %hardware_control49.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %hardware_control49.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool181.not.i = icmp eq i8 %94, 0
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 8
  br i1 %tobool181.not.i, label %if.else187.i, label %if.then182.i

if.then182.i:                                     ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.64) #11
  br label %out.i

if.else187.i:                                     ; preds = %if.then179.i
  %call189.i = call i32 @abx500_get_register_interruptible(ptr noundef %96, i8 noundef zeroext 10, i8 noundef zeroext 9, ptr noundef nonnull %low_data2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %cmp190.i = icmp slt i32 %call189.i, 0
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  br i1 %cmp190.i, label %do.end195.i, label %if.end197.i

do.end195.i:                                      ; preds = %if.else187.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.67) #11
  br label %out.i

if.end197.i:                                      ; preds = %if.else187.i
  %call199.i = call i32 @abx500_get_register_interruptible(ptr noundef %98, i8 noundef zeroext 10, i8 noundef zeroext 10, ptr noundef nonnull %high_data2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199.i)
  %cmp200.i = icmp slt i32 %call199.i, 0
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  br i1 %cmp200.i, label %do.end205.i, label %do.end217.i

do.end205.i:                                      ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.70) #11
  br label %out.i

do.end217.i:                                      ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.73) #11
  br label %if.end221.i

if.end221.i:                                      ; preds = %do.end217.i, %if.end160.i.if.end221.i_crit_edge
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 8
  %call223.i = call i32 @abx500_set_register_interruptible(ptr noundef %102, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223.i)
  %cmp224.i = icmp slt i32 %call223.i, 0
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  br i1 %cmp224.i, label %do.end229.i, label %ab8500_gpadc_read.exit

do.end229.i:                                      ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.77) #11
  br label %out.i

out.i:                                            ; preds = %do.end229.i, %do.end205.i, %do.end195.i, %if.then182.i, %do.end158.i, %do.end148.i, %do.end138.i, %do.end128.i, %do.end117.i, %do.end100.i, %do.end71.i, %do.end29.i, %do.body.i.out.i_crit_edge
  %ret.1.i = phi i32 [ -22, %do.end29.i ], [ %ret.0.i, %do.end71.i ], [ %call9416.i, %do.end100.i ], [ %call111.i, %do.end117.i ], [ %call142.i, %do.end148.i ], [ %call152.i, %do.end158.i ], [ -524, %if.then182.i ], [ %call189.i, %do.end195.i ], [ %call199.i, %do.end205.i ], [ %call223.i, %do.end229.i ], [ -22, %do.end138.i ], [ %call122.i, %do.end128.i ], [ %call11.i, %do.body.i.out.i_crit_edge ]
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 8
  %call240.i = call i32 @abx500_set_register_interruptible(ptr noundef %106, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %call.i3.i = call i32 @__pm_runtime_idle(ptr noundef %108, i32 noundef 5) #8
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 8
  %id247.i = getelementptr inbounds %struct.ab8500_gpadc_chan_info, ptr %ch.1.i, i32 0, i32 1
  %111 = ptrtoint ptr %id247.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %id247.i, align 4
  %conv248.i = zext i8 %112 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.80, i32 noundef %conv248.i) #11
  br label %ab8500_gpadc_read.exit.thread

ab8500_gpadc_read.exit.thread:                    ; preds = %out.i, %land.lhs.true5.i.ab8500_gpadc_read.exit.thread_crit_edge, %land.lhs.true.i.ab8500_gpadc_read.exit.thread_crit_edge, %if.end.ab8500_gpadc_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -524, %land.lhs.true5.i.ab8500_gpadc_read.exit.thread_crit_edge ], [ -524, %land.lhs.true.i.ab8500_gpadc_read.exit.thread_crit_edge ], [ -19, %if.end.ab8500_gpadc_read.exit.thread_crit_edge ], [ %ret.1.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %high_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %high_data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %cleanup

ab8500_gpadc_read.exit:                           ; preds = %if.end221.i
  %call.i1.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 12, i32 22
  %113 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store volatile i64 %call.i1.i, ptr %last_busy.i.i, align 8
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 8
  %call.i2.i = call i32 @__pm_runtime_suspend(ptr noundef %115, i32 noundef 13) #8
  %116 = ptrtoint ptr %high_data.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %high_data.i, align 1
  %conv235.i = zext i8 %117 to i32
  %shl236.i = shl nuw nsw i32 %conv235.i, 8
  %118 = ptrtoint ptr %low_data.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %low_data.i, align 1
  %conv237.i = zext i8 %119 to i32
  %or238.i = or i32 %shl236.i, %conv237.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %high_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %high_data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %120 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %mask, label %ab8500_gpadc_read.exit.cleanup_crit_edge [
    i32 0, label %if.then9
    i32 1, label %if.then13
  ]

ab8500_gpadc_read.exit.cleanup_crit_edge:         ; preds = %ab8500_gpadc_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %ab8500_gpadc_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or238.i, ptr %val, align 4
  br label %cleanup

if.then13:                                        ; preds = %ab8500_gpadc_read.exit
  %122 = ptrtoint ptr %id74.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %id74.i, align 4
  %124 = zext i8 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %123, label %ab8500_gpadc_ad_to_voltage.exit.thread [
    i8 3, label %sw.bb.i41
    i8 1, label %if.then13.sw.bb10.i_crit_edge
    i8 2, label %if.then13.sw.bb10.i_crit_edge93
    i8 4, label %if.then13.sw.bb10.i_crit_edge94
    i8 6, label %if.then13.sw.bb10.i_crit_edge95
    i8 7, label %if.then13.sw.bb10.i_crit_edge96
    i8 18, label %if.then13.sw.bb10.i_crit_edge97
    i8 8, label %if.then13.sw.bb31.i_crit_edge
    i8 19, label %if.then13.sw.bb31.i_crit_edge98
    i8 13, label %sw.bb52.i
    i8 5, label %sw.bb56.i
    i8 9, label %sw.bb60.i
    i8 10, label %if.then13.sw.bb64.i_crit_edge
    i8 11, label %if.then13.sw.bb64.i_crit_edge99
    i8 12, label %sw.bb68.i
    i8 -1, label %sw.bb72.i
  ]

if.then13.sw.bb64.i_crit_edge99:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64.i

if.then13.sw.bb64.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64.i

if.then13.sw.bb31.i_crit_edge98:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.then13.sw.bb31.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.then13.sw.bb10.i_crit_edge97:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then13.sw.bb10.i_crit_edge96:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then13.sw.bb10.i_crit_edge95:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then13.sw.bb10.i_crit_edge94:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then13.sw.bb10.i_crit_edge93:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then13.sw.bb10.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

sw.bb.i41:                                        ; preds = %if.then13
  %cal_data.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 8
  %125 = ptrtoint ptr %cal_data.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %cal_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %126)
  %tobool.not.i40 = icmp eq i64 %126, 0
  br i1 %tobool.not.i40, label %if.then.i, label %if.end.i42

if.then.i:                                        ; preds = %sw.bb.i41
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw nsw i32 %or238.i, 20030
  %div.i58 = lshr i32 %mul.i, 10
  br label %if.end19

if.end.i42:                                       ; preds = %sw.bb.i41
  call void @__sanitizer_cov_trace_pc() #10
  %conv123.i = zext i32 %or238.i to i64
  %mul4.i = mul i64 %126, %conv123.i
  %offset.i = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 8, i32 0, i32 1
  %127 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %offset.i, align 8
  %add7.i = add i64 %128, %mul4.i
  %conv8.i = trunc i64 %add7.i to i32
  %div9.i = sdiv i32 %conv8.i, 1000
  br label %ab8500_gpadc_ad_to_voltage.exit

sw.bb10.i:                                        ; preds = %if.then13.sw.bb10.i_crit_edge, %if.then13.sw.bb10.i_crit_edge93, %if.then13.sw.bb10.i_crit_edge94, %if.then13.sw.bb10.i_crit_edge95, %if.then13.sw.bb10.i_crit_edge96, %if.then13.sw.bb10.i_crit_edge97
  %arrayidx12.i = getelementptr %struct.ab8500_gpadc, ptr %1, i32 0, i32 8, i32 1
  %129 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %130)
  %tobool14.not.i = icmp eq i64 %130, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end19.i

if.then15.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul16.i = mul nuw nsw i32 %or238.i, 1350
  %div17.i57 = lshr i32 %mul16.i, 10
  br label %if.end19

if.end19.i:                                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv20122.i = zext i32 %or238.i to i64
  %mul24.i = mul i64 %130, %conv20122.i
  %offset27.i = getelementptr %struct.ab8500_gpadc, ptr %1, i32 0, i32 8, i32 1, i32 1
  %131 = ptrtoint ptr %offset27.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %offset27.i, align 8
  %add28.i = add i64 %132, %mul24.i
  %conv29.i = trunc i64 %add28.i to i32
  %div30.i = sdiv i32 %conv29.i, 1000
  br label %ab8500_gpadc_ad_to_voltage.exit

sw.bb31.i:                                        ; preds = %if.then13.sw.bb31.i_crit_edge, %if.then13.sw.bb31.i_crit_edge98
  %arrayidx33.i = getelementptr %struct.ab8500_gpadc, ptr %1, i32 0, i32 8, i32 2
  %133 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx33.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %tobool35.not.i = icmp eq i64 %134, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end40.i

if.then36.i:                                      ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul37.i = mul nuw nsw i32 %or238.i, 2500
  %div38.i56 = lshr i32 %mul37.i, 10
  %add39.i = add nuw nsw i32 %div38.i56, 2300
  br label %if.end19

if.end40.i:                                       ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv41121.i = zext i32 %or238.i to i64
  %mul45.i = mul i64 %134, %conv41121.i
  %offset48.i = getelementptr %struct.ab8500_gpadc, ptr %1, i32 0, i32 8, i32 2, i32 1
  %135 = ptrtoint ptr %offset48.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %offset48.i, align 8
  %add49.i = add i64 %136, %mul45.i
  %conv50.i = trunc i64 %add49.i to i32
  %div51.i = sdiv i32 %conv50.i, 1000
  br label %ab8500_gpadc_ad_to_voltage.exit

sw.bb52.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %mul53.i = mul nuw nsw i32 %or238.i, 1350
  %div54.i55 = lshr i32 %mul53.i, 10
  br label %if.end19

sw.bb56.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %mul57.i = mul nuw nsw i32 %or238.i, 2500
  %div58.i54 = lshr i32 %mul57.i, 10
  br label %if.end19

sw.bb60.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %mul61.i = mul nuw nsw i32 %or238.i, 20030
  %div62.i53 = lshr i32 %mul61.i, 10
  br label %if.end19

sw.bb64.i:                                        ; preds = %if.then13.sw.bb64.i_crit_edge, %if.then13.sw.bb64.i_crit_edge99
  %mul65.i = mul nuw nsw i32 %or238.i, 1500
  %div66.i52 = lshr i32 %mul65.i, 10
  br label %if.end19

sw.bb68.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %mul69.i = mul nuw nsw i32 %or238.i, 3200
  %div70.i51 = lshr i32 %mul69.i, 10
  br label %if.end19

sw.bb72.i:                                        ; preds = %if.then13
  %arrayidx74.i = getelementptr %struct.ab8500_gpadc, ptr %1, i32 0, i32 8, i32 3
  %137 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx74.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %138)
  %tobool76.not.i = icmp eq i64 %138, 0
  br i1 %tobool76.not.i, label %if.then77.i, label %if.end81.i

if.then77.i:                                      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul78.i = mul nuw nsw i32 %or238.i, 12000
  %div79.i50 = lshr i32 %mul78.i, 10
  %add80.i = add nsw i32 %div79.i50, -6000
  br label %ab8500_gpadc_ad_to_voltage.exit

if.end81.i:                                       ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv82120.i = zext i32 %or238.i to i64
  %mul86.i = mul i64 %138, %conv82120.i
  %offset89.i = getelementptr %struct.ab8500_gpadc, ptr %1, i32 0, i32 8, i32 3, i32 1
  %139 = ptrtoint ptr %offset89.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %offset89.i, align 8
  %add90.i = add i64 %140, %mul86.i
  %conv91.i43 = trunc i64 %add90.i to i32
  %shr.i = ashr i32 %conv91.i43, 20
  br label %ab8500_gpadc_ad_to_voltage.exit

ab8500_gpadc_ad_to_voltage.exit.thread:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %conv14 = zext i8 %123 to i32
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.82, i32 noundef %conv14) #11
  br label %cleanup

ab8500_gpadc_ad_to_voltage.exit:                  ; preds = %if.end81.i, %if.then77.i, %if.end40.i, %if.end19.i, %if.end.i42
  %res.0.i = phi i32 [ %shr.i, %if.end81.i ], [ %add80.i, %if.then77.i ], [ %div51.i, %if.end40.i ], [ %div30.i, %if.end19.i ], [ %div9.i, %if.end.i42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %cmp16 = icmp slt i32 %res.0.i, 0
  br i1 %cmp16, label %ab8500_gpadc_ad_to_voltage.exit.cleanup_crit_edge, label %ab8500_gpadc_ad_to_voltage.exit.if.end19_crit_edge

ab8500_gpadc_ad_to_voltage.exit.if.end19_crit_edge: ; preds = %ab8500_gpadc_ad_to_voltage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

ab8500_gpadc_ad_to_voltage.exit.cleanup_crit_edge: ; preds = %ab8500_gpadc_ad_to_voltage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %ab8500_gpadc_ad_to_voltage.exit.if.end19_crit_edge, %sw.bb68.i, %sw.bb64.i, %sw.bb60.i, %sw.bb56.i, %sw.bb52.i, %if.then36.i, %if.then15.i, %if.then.i
  %res.0.i79 = phi i32 [ %res.0.i, %ab8500_gpadc_ad_to_voltage.exit.if.end19_crit_edge ], [ %div.i58, %if.then.i ], [ %div17.i57, %if.then15.i ], [ %add39.i, %if.then36.i ], [ %div54.i55, %sw.bb52.i ], [ %div58.i54, %sw.bb56.i ], [ %div62.i53, %sw.bb60.i ], [ %div66.i52, %sw.bb64.i ], [ %div70.i51, %sw.bb68.i ]
  %143 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %res.0.i79, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %ab8500_gpadc_ad_to_voltage.exit.cleanup_crit_edge, %ab8500_gpadc_ad_to_voltage.exit.thread, %if.then9, %ab8500_gpadc_read.exit.cleanup_crit_edge, %ab8500_gpadc_read.exit.thread, %do.end
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %if.end19 ], [ -22, %do.end ], [ %res.0.i, %ab8500_gpadc_ad_to_voltage.exit.cleanup_crit_edge ], [ -22, %ab8500_gpadc_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %ab8500_gpadc_read.exit.thread ], [ -22, %ab8500_gpadc_ad_to_voltage.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_of_xlate(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %iiospec) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %channel = getelementptr %struct.iio_chan_spec, ptr %3, i32 %i.08, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp2 = icmp eq i32 %7, %5
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ %i.08, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vddadc = getelementptr inbounds %struct.ab8500_gpadc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vddadc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vddadc, align 8
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vddadc = getelementptr inbounds %struct.ab8500_gpadc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vddadc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vddadc, align 8
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %call2) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !149, !150, !151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__initcall__kmod_ab8500_gpadc__289_1218_ab8500_gpadc_driver_init6, !1, !"__initcall__kmod_ab8500_gpadc__289_1218_ab8500_gpadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1218, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1214, i32 11}
!4 = !{ptr @ab8500_gpadc_driver, !5, !"ab8500_gpadc_driver", i1 false, i1 false}
!5 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1210, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1105, i32 48}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1108, i32 10}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1111, i32 49}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1114, i32 11}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1125, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1127, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ab8500_gpadc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ab8500_gpadc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1136, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1138, i32 4}
!28 = !{ptr @ab8500_gpadc_probe._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ab8500_gpadc_probe._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1146, i32 42}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1149, i32 10}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1153, i32 3}
!36 = !{ptr @ab8500_gpadc_probe._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ab8500_gpadc_probe._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1043, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ab8500_gpadc_parse_channels._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ab8500_gpadc_parse_channels._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1046, i32 2}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ab8500_gpadc_parse_channels._entry.22, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ab8500_gpadc_parse_channels._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 989, i32 33}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 991, i32 3}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ab8500_gpadc_parse_channel._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ab8500_gpadc_parse_channel._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 995, i32 3}
!57 = !{ptr @ab8500_gpadc_parse_channel._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ab8500_gpadc_parse_channel._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @init_completion.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/completion.h", i32 87, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 685, i32 4}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ab8500_gpadc_read_calibration_data._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ab8500_gpadc_read_calibration_data._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 788, i32 5}
!69 = !{ptr @ab8500_gpadc_read_calibration_data._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ab8500_gpadc_read_calibration_data._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"otp_cal_regs", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 650, i32 12}
!73 = distinct !{null, !74, !"otp4_cal_regs", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 660, i32 12}
!75 = !{ptr @ab8500_gpadc_info, !76, !"ab8500_gpadc_info", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 940, i32 30}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 901, i32 3}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ab8500_gpadc_read_raw._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ab8500_gpadc_read_raw._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 424, i32 3}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ab8500_gpadc_read._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ab8500_gpadc_read._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 459, i32 3}
!89 = !{ptr @ab8500_gpadc_read._entry.42, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ab8500_gpadc_read._entry_ptr.44, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 497, i32 3}
!93 = !{ptr @ab8500_gpadc_read._entry.45, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ab8500_gpadc_read._entry_ptr.47, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 511, i32 4}
!97 = !{ptr @ab8500_gpadc_read._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ab8500_gpadc_read._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 525, i32 4}
!101 = !{ptr @ab8500_gpadc_read._entry.51, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ab8500_gpadc_read._entry_ptr.53, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 537, i32 3}
!105 = !{ptr @ab8500_gpadc_read._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ab8500_gpadc_read._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 547, i32 3}
!109 = !{ptr @ab8500_gpadc_read._entry.57, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ab8500_gpadc_read._entry_ptr.59, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 555, i32 3}
!113 = !{ptr @ab8500_gpadc_read._entry.60, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ab8500_gpadc_read._entry_ptr.62, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 569, i32 4}
!117 = !{ptr @ab8500_gpadc_read._entry.63, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ab8500_gpadc_read._entry_ptr.65, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 578, i32 5}
!121 = !{ptr @ab8500_gpadc_read._entry.66, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ab8500_gpadc_read._entry_ptr.68, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 587, i32 5}
!125 = !{ptr @ab8500_gpadc_read._entry.69, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ab8500_gpadc_read._entry_ptr.71, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 594, i32 5}
!129 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ab8500_gpadc_read._entry.72, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @ab8500_gpadc_read._entry_ptr.75, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 605, i32 3}
!134 = !{ptr @ab8500_gpadc_read._entry.76, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ab8500_gpadc_read._entry_ptr.78, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.80, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 625, i32 2}
!138 = !{ptr @ab8500_gpadc_read._entry.79, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ab8500_gpadc_read._entry_ptr.81, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.82, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 375, i32 3}
!142 = !{ptr @.str.83, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ab8500_gpadc_ad_to_voltage._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @ab8500_gpadc_ad_to_voltage._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @ab8500_gpadc_pm_ops, !146, !"ab8500_gpadc_pm_ops", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 1202, i32 32}
!147 = !{ptr @.str.84, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/ab8500-gpadc.c", i32 964, i32 3}
!149 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ab8500_gpadc_runtime_resume._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ab8500_gpadc_runtime_resume._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{!"branch_weights", i32 1, i32 2000}
!162 = !{!"auto-init"}
!163 = !{i64 2148525601, i64 2148525627, i64 2148525656, i64 2148525690, i64 2148525721, i64 2148525744}
!164 = !{i64 2148525020}
!165 = !{i64 1011620, i64 1011645, i64 1011667, i64 1011683, i64 1011695, i64 1011715, i64 1011739, i64 1011755, i64 1011767}
!166 = !{i64 2148525208}
!167 = !{i8 0, i8 2}
