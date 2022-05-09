; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/twl6030-gpadc.c_pt.bc'
source_filename = "../drivers/iio/adc/twl6030-gpadc.c"
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
%struct.atomic_t = type { i32 }
%struct.twl6030_gpadc_platform_data = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.68, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.68 = type { i8, i8, i8, i8, i8, i32 }
%struct.twl6030_ideal_code = type { i32, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.twl6030_gpadc_data = type { ptr, %struct.mutex, %struct.completion, ptr, ptr }
%struct.twl6030_chnl_calib = type { i32, i32, i32 }

@__initcall__kmod_twl6030_gpadc__238_986_twl6030_gpadc_driver_init6 = internal global ptr @twl6030_gpadc_driver_init, section ".initcall6.init", align 4
@twl6030_gpadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl6030_gpadc_probe, ptr @twl6030_gpadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_twl6030_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030_gpadc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl6030_gpadc_driver_exit = internal global ptr @twl6030_gpadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias239 = internal constant [43 x i8] c"twl6030_gpadc.alias=platform:twl6030_gpadc\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [50 x i8] c"twl6030_gpadc.author=Balaji T K <balajitk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [57 x i8] c"twl6030_gpadc.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [65 x i8] c"twl6030_gpadc.author=Oleksandr Kozaruk <oleksandr.kozaruk@ti.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [45 x i8] c"twl6030_gpadc.description=twl6030 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [49 x i8] c"twl6030_gpadc.file=drivers/iio/adc/twl6030-gpadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [26 x i8] c"twl6030_gpadc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl6030_gpadc\00", [18 x i8] zeroinitializer }, align 32
@of_twl6030_match_tbl = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-gpadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twl6030_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-gpadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twl6032_pdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@twl6030_gpadc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @twl6030_gpadc_suspend, ptr @twl6030_gpadc_resume, ptr @twl6030_gpadc_suspend, ptr @twl6030_gpadc_resume, ptr @twl6030_gpadc_suspend, ptr @twl6030_gpadc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@twl6030_gpadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&gpadc->lock\00", [19 x i8] zeroinitializer }, align 32
@twl6030_gpadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 903, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read calibration registers\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl6030_gpadc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/adc/twl6030-gpadc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl6030_gpadc_probe._entry_ptr = internal global ptr @twl6030_gpadc_probe._entry, section ".printk_index", align 4
@twl6030_gpadc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 917, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable GPADC interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@twl6030_gpadc_probe._entry_ptr.9 = internal global ptr @twl6030_gpadc_probe._entry.7, section ".printk_index", align 4
@twl6030_gpadc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 924, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable GPADC module\0A\00", [33 x i8] zeroinitializer }, align 32
@twl6030_gpadc_probe._entry_ptr.12 = internal global ptr @twl6030_gpadc_probe._entry.10, section ".printk_index", align 4
@twl6030_gpadc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @twl6030_gpadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@twl6030_gpadc_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to start conversion\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl6030_gpadc_read_raw\00", [41 x i8] zeroinitializer }, align 32
@twl6030_gpadc_read_raw._entry_ptr = internal global ptr @twl6030_gpadc_read_raw._entry, section ".printk_index", align 4
@twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl6030_gpadc_get_raw\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to read register 0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPADC raw code: %d\00", [45 x i8] zeroinitializer }, align 32
@twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"twl6030_gpadc_get_processed\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPADC corrected code: %d\00", [39 x i8] zeroinitializer }, align 32
@twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPADC value: %d\00", [16 x i8] zeroinitializer }, align 32
@twl6030_pdata = internal constant { %struct.twl6030_gpadc_platform_data, [40 x i8] } { %struct.twl6030_gpadc_platform_data { i32 13, ptr @twl6030_gpadc_iio_channels, ptr @twl6030_ideal, ptr @twl6030_start_conversion, ptr @twl6030_channel_to_reg, ptr @twl6030_calibration }, [40 x i8] zeroinitializer }, align 32
@twl6032_pdata = internal constant { %struct.twl6030_gpadc_platform_data, [40 x i8] } { %struct.twl6030_gpadc_platform_data { i32 15, ptr @twl6032_gpadc_iio_channels, ptr @twl6032_ideal, ptr @twl6032_start_conversion, ptr @twl6032_channel_to_reg, ptr @twl6032_calibration }, [40 x i8] zeroinitializer }, align 32
@twl6030_gpadc_iio_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 4, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [264 x i8] zeroinitializer }, align 32
@twl6030_ideal = internal constant { [13 x %struct.twl6030_ideal_code], [36 x i8] } { [13 x %struct.twl6030_ideal_code] [%struct.twl6030_ideal_code { i32 0, i16 116, i16 745, i16 141, i16 910 }, %struct.twl6030_ideal_code { i32 1, i16 82, i16 900, i16 100, i16 1100 }, %struct.twl6030_ideal_code { i32 2, i16 55, i16 818, i16 101, i16 1499 }, %struct.twl6030_ideal_code { i32 3, i16 82, i16 900, i16 100, i16 1100 }, %struct.twl6030_ideal_code { i32 4, i16 82, i16 900, i16 100, i16 1100 }, %struct.twl6030_ideal_code { i32 5, i16 82, i16 900, i16 100, i16 1100 }, %struct.twl6030_ideal_code { i32 6, i16 82, i16 900, i16 100, i16 1100 }, %struct.twl6030_ideal_code { i32 7, i16 614, i16 941, i16 3001, i16 4599 }, %struct.twl6030_ideal_code { i32 8, i16 82, i16 688, i16 501, i16 4203 }, %struct.twl6030_ideal_code { i32 9, i16 182, i16 818, i16 2001, i16 8996 }, %struct.twl6030_ideal_code { i32 10, i16 149, i16 818, i16 1001, i16 5497 }, %struct.twl6030_ideal_code { i32 11, i16 0, i16 0, i16 0, i16 0 }, %struct.twl6030_ideal_code { i32 14, i16 48, i16 714, i16 323, i16 4800 }], [36 x i8] zeroinitializer }, align 32
@twl6030_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 625, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calibration failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl6030_calibration\00", [44 x i8] zeroinitializer }, align 32
@twl6030_calibration._entry_ptr = internal global ptr @twl6030_calibration._entry, section ".printk_index", align 4
@twl6030_calibrate_channel.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"twl6030_calibrate_channel\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPADC d1   for Chn: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl6030_calibrate_channel.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.26, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPADC d2   for Chn: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl6030_calibrate_channel.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.27, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPADC x1   for Chn: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl6030_calibrate_channel.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.28, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPADC x2   for Chn: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl6030_calibrate_channel.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.29, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPADC Gain for Chn: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl6030_calibrate_channel.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.30, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPADC k    for Chn: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl6030_calibrate_channel.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.31, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GPADC b    for Chn: %d = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl6032_gpadc_iio_channels = internal constant { [15 x %struct.iio_chan_spec], [344 x i8] } { [15 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 4, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 17, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 18, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [344 x i8] zeroinitializer }, align 32
@twl6032_ideal = internal constant { [15 x %struct.twl6030_ideal_code], [44 x i8] } { [15 x %struct.twl6030_ideal_code] [%struct.twl6030_ideal_code { i32 0, i16 1441, i16 3276, i16 440, i16 1000 }, %struct.twl6030_ideal_code { i32 1, i16 1441, i16 3276, i16 440, i16 1000 }, %struct.twl6030_ideal_code { i32 2, i16 1441, i16 3276, i16 660, i16 1500 }, %struct.twl6030_ideal_code { i32 3, i16 1441, i16 3276, i16 440, i16 1000 }, %struct.twl6030_ideal_code { i32 4, i16 1441, i16 3276, i16 440, i16 1000 }, %struct.twl6030_ideal_code { i32 5, i16 1441, i16 3276, i16 440, i16 1000 }, %struct.twl6030_ideal_code { i32 6, i16 1441, i16 3276, i16 440, i16 1000 }, %struct.twl6030_ideal_code { i32 7, i16 1441, i16 3276, i16 2200, i16 5000 }, %struct.twl6030_ideal_code { i32 8, i16 1441, i16 3276, i16 2200, i16 5000 }, %struct.twl6030_ideal_code { i32 9, i16 1441, i16 3276, i16 3960, i16 9000 }, %struct.twl6030_ideal_code { i32 10, i16 150, i16 751, i16 1000, i16 5000 }, %struct.twl6030_ideal_code { i32 11, i16 1441, i16 3276, i16 660, i16 1500 }, %struct.twl6030_ideal_code { i32 14, i16 1441, i16 3276, i16 2420, i16 5500 }, %struct.twl6030_ideal_code { i32 17, i16 0, i16 0, i16 0, i16 0 }, %struct.twl6030_ideal_code { i32 18, i16 1441, i16 3276, i16 2200, i16 5000 }], [44 x i8] zeroinitializer }, align 32
@twl6032_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.32, ptr @.str.4, i32 704, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl6032_calibration\00", [44 x i8] zeroinitializer }, align 32
@twl6032_calibration._entry_ptr = internal global ptr @twl6032_calibration._entry, section ".printk_index", align 4
@twl6030_gpadc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 955, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error resetting GPADC (%d)!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl6030_gpadc_suspend\00", [42 x i8] zeroinitializer }, align 32
@twl6030_gpadc_suspend._entry_ptr = internal global ptr @twl6030_gpadc_suspend._entry, section ".printk_index", align 4
@twl6030_gpadc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 967, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error setting GPADC (%d)!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"twl6030_gpadc_resume\00", [43 x i8] zeroinitializer }, align 32
@twl6030_gpadc_resume._entry_ptr = internal global ptr @twl6030_gpadc_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14]
@__sancov_gen_cov_switch_values.38 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 18]
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"twl6030_gpadc_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 976, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 980, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"of_twl6030_match_tbl\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 852, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"twl6030_gpadc_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 973, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 898, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 903, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 917, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 924, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"twl6030_gpadc_iio_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 830, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 515, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 460, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 465, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 495, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 496, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"twl6030_pdata\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 834, i32 49 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"twl6032_pdata\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 843, i32 49 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"twl6030_gpadc_iio_channels\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 796, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"twl6030_ideal\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 138, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 625, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 585, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 586, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 587, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 588, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 589, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 590, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 591, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"twl6032_gpadc_iio_channels\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 812, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"twl6032_ideal\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 231, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 704, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 955, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [35 x i8] c"../drivers/iio/adc/twl6030-gpadc.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 967, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_twl6030_gpadc_driver_exit, ptr @__initcall__kmod_twl6030_gpadc__238_986_twl6030_gpadc_driver_init6, ptr @twl6030_calibration._entry, ptr @twl6030_calibration._entry_ptr, ptr @twl6030_gpadc_driver_exit, ptr @twl6030_gpadc_probe._entry, ptr @twl6030_gpadc_probe._entry.10, ptr @twl6030_gpadc_probe._entry.7, ptr @twl6030_gpadc_probe._entry_ptr, ptr @twl6030_gpadc_probe._entry_ptr.12, ptr @twl6030_gpadc_probe._entry_ptr.9, ptr @twl6030_gpadc_read_raw._entry, ptr @twl6030_gpadc_read_raw._entry_ptr, ptr @twl6030_gpadc_resume._entry, ptr @twl6030_gpadc_resume._entry_ptr, ptr @twl6030_gpadc_suspend._entry, ptr @twl6030_gpadc_suspend._entry_ptr, ptr @twl6032_calibration._entry, ptr @twl6032_calibration._entry_ptr, ptr @twl6030_gpadc_driver, ptr @.str, ptr @of_twl6030_match_tbl, ptr @twl6030_gpadc_pm_ops, ptr @twl6030_gpadc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @twl6030_gpadc_iio_info, ptr @init_completion.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @twl6030_pdata, ptr @twl6032_pdata, ptr @twl6030_gpadc_iio_channels, ptr @twl6030_ideal, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @twl6032_gpadc_iio_channels, ptr @twl6032_ideal, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_twl6030_match_tbl to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6032_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_iio_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_ideal to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6032_gpadc_iio_channels to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6032_ideal to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6032_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_gpadc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_gpadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl6030_gpadc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl6030_gpadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl6030_gpadc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_gpadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @of_twl6030_match_tbl, ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 160) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 12) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !129

devm_kcalloc.exit.thread:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %twl6030_cal_tbl85 = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %twl6030_cal_tbl85 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %twl6030_cal_tbl85, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end5
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #7
  %twl6030_cal_tbl = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %twl6030_cal_tbl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %twl6030_cal_tbl, align 4
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end11

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %3, align 4
  %pdata13 = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %pdata13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %pdata13, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @twl6030_gpadc_probe.__key) #7
  %irq_complete = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %irq_complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %irq_complete, align 4
  %wait.i = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %3, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #7
  %calibrate = getelementptr inbounds %struct.twl6030_gpadc_platform_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %calibrate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %calibrate, align 4
  %call14 = tail call i32 %16(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call20, ptr noundef null, ptr noundef nonnull @twl6030_gpadc_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call2) #7
  %call.i = tail call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 32, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end23.do.end30_crit_edge, label %twl6030_gpadc_enable_irq.exit

if.end23.do.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

twl6030_gpadc_enable_irq.exit:                    ; preds = %if.end23
  %call1.i = tail call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 32, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp26 = icmp slt i32 %call1.i, 0
  br i1 %cmp26, label %twl6030_gpadc_enable_irq.exit.do.end30_crit_edge, label %if.end31

twl6030_gpadc_enable_irq.exit.do.end30_crit_edge: ; preds = %twl6030_gpadc_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end30:                                         ; preds = %twl6030_gpadc_enable_irq.exit.do.end30_crit_edge, %if.end23.do.end30_crit_edge
  %retval.0.i89 = phi i32 [ %call1.i, %twl6030_gpadc_enable_irq.exit.do.end30_crit_edge ], [ %call.i, %if.end23.do.end30_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end31:                                         ; preds = %twl6030_gpadc_enable_irq.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %17 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %val.addr.i, align 1
  %call.i83 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -112, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp33 = icmp slt i32 %call.i83, 0
  br i1 %cmp33, label %do.end37, label %if.end38

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @twl6030_gpadc_iio_info, ptr %info, align 8
  %20 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call2, align 8
  %iio_channels = getelementptr inbounds %struct.twl6030_gpadc_platform_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %iio_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iio_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %channels, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %26 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %num_channels, align 4
  %call40 = call i32 @__iio_device_register(ptr noundef nonnull %call2, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end37, %do.end30, %if.end19.cleanup_crit_edge, %do.end18, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end18 ], [ %retval.0.i89, %do.end30 ], [ %call.i83, %do.end37 ], [ %call40, %if.end38 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_gpadc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @twl6030_interrupt_mask(i8 noundef zeroext 32, i8 noundef zeroext 4) #7
  %call1.i = tail call i32 @twl6030_interrupt_mask(i8 noundef zeroext 32, i8 noundef zeroext 7) #7
  tail call void @iio_device_unregister(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_gpadc_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %irq_complete = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %irq_complete) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_unmask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_gpadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %pdata = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %start_conversion = getelementptr inbounds %struct.twl6030_gpadc_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %start_conversion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_conversion, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %call1 = tail call i32 %5(i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.14) #10
  br label %err

if.end:                                           ; preds = %entry
  %irq_complete = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %irq_complete, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.end.err_crit_edge, label %if.else

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp5 = icmp slt i32 %call3, 0
  br i1 %cmp5, label %if.else.err_crit_edge, label %if.end8

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end8:                                          ; preds = %if.else
  %10 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end8.err_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
  ]

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  %call10 = tail call fastcc i32 @twl6030_gpadc_get_raw(ptr noundef %1, i32 noundef %12, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %cond = select i1 %tobool11.not, i32 1, i32 -5
  br label %err

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %call14 = tail call fastcc i32 @twl6030_gpadc_get_processed(ptr noundef %1, i32 noundef %14, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %cond16 = select i1 %tobool15.not, i32 1, i32 -5
  br label %err

err:                                              ; preds = %sw.bb12, %sw.bb, %if.end8.err_crit_edge, %if.else.err_crit_edge, %if.end.err_crit_edge, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end8.err_crit_edge ], [ %cond16, %sw.bb12 ], [ %cond, %sw.bb ], [ -110, %if.end.err_crit_edge ], [ -4, %if.else.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl6030_gpadc_get_raw(ptr nocapture noundef readonly %gpadc, i32 noundef %channel, ptr nocapture noundef writeonly %res) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %gpadc, i32 0, i32 4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %channel_to_reg = getelementptr inbounds %struct.twl6030_gpadc_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %channel_to_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_to_reg, align 4
  %call = tail call zeroext i8 %3(i32 noundef %channel) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !130
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 12, ptr noundef nonnull %val, i8 noundef zeroext %call, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_gpadc_get_raw, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !131

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpadc, align 4
  %conv = zext i8 %call to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug227, ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef %conv) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv8 = zext i16 %9 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_gpadc_get_raw, %if.then21)) #7
          to label %do.end25 [label %if.then21], !srcloc !131

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpadc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug228, ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef %conv8) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %if.end7
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 4
  %ideal1.i = getelementptr inbounds %struct.twl6030_gpadc_platform_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ideal1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ideal1.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.i.i = icmp sgt i32 %17, 0
  br i1 %cmp6.i.i, label %do.end25.for.body.i.i_crit_edge, label %twl6030_channel_calibrated.exit.thread

do.end25.for.body.i.i_crit_edge:                  ; preds = %do.end25
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end25.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end25.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.twl6030_ideal_code, ptr %15, i32 %i.07.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %channel)
  %cmp2.i.i = icmp eq i32 %19, %channel
  br i1 %cmp2.i.i, label %for.body.i.i.twl6030_channel_calibrated.exit_crit_edge, label %for.inc.i.i

for.body.i.i.twl6030_channel_calibrated.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_channel_calibrated.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %17
  br i1 %exitcond.not.i.i, label %for.inc.i.i.twl6030_channel_calibrated.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.twl6030_channel_calibrated.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_channel_calibrated.exit

twl6030_channel_calibrated.exit:                  ; preds = %for.inc.i.i.twl6030_channel_calibrated.exit_crit_edge, %for.body.i.i.twl6030_channel_calibrated.exit_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %17, %for.inc.i.i.twl6030_channel_calibrated.exit_crit_edge ], [ %i.07.i.i, %for.body.i.i.twl6030_channel_calibrated.exit_crit_edge ]
  %code2.i = getelementptr %struct.twl6030_ideal_code, ptr %15, i32 %i.0.lcssa.i.i, i32 2
  %20 = ptrtoint ptr %code2.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %code2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool28.not = icmp eq i16 %21, 0
  br i1 %tobool28.not, label %twl6030_channel_calibrated.exit.if.end31_crit_edge, label %twl6030_channel_calibrated.exit.for.body.i.i55_crit_edge

twl6030_channel_calibrated.exit.for.body.i.i55_crit_edge: ; preds = %twl6030_channel_calibrated.exit
  br label %for.body.i.i55

twl6030_channel_calibrated.exit.if.end31_crit_edge: ; preds = %twl6030_channel_calibrated.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

twl6030_channel_calibrated.exit.thread:           ; preds = %do.end25
  %code2.i63 = getelementptr %struct.twl6030_ideal_code, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %code2.i63 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %code2.i63, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool28.not65 = icmp eq i16 %23, 0
  br i1 %tobool28.not65, label %twl6030_channel_calibrated.exit.thread.if.end31_crit_edge, label %twl6030_channel_calibrated.exit.thread.twl6030_gpadc_make_correction.exit_crit_edge

twl6030_channel_calibrated.exit.thread.twl6030_gpadc_make_correction.exit_crit_edge: ; preds = %twl6030_channel_calibrated.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_make_correction.exit

twl6030_channel_calibrated.exit.thread.if.end31_crit_edge: ; preds = %twl6030_channel_calibrated.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

for.body.i.i55:                                   ; preds = %for.inc.i.i58.for.body.i.i55_crit_edge, %twl6030_channel_calibrated.exit.for.body.i.i55_crit_edge
  %i.07.i.i52 = phi i32 [ %inc.i.i56, %for.inc.i.i58.for.body.i.i55_crit_edge ], [ 0, %twl6030_channel_calibrated.exit.for.body.i.i55_crit_edge ]
  %arrayidx.i.i53 = getelementptr %struct.twl6030_ideal_code, ptr %15, i32 %i.07.i.i52
  %24 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %channel)
  %cmp2.i.i54 = icmp eq i32 %25, %channel
  br i1 %cmp2.i.i54, label %for.body.i.i55.twl6030_gpadc_make_correction.exit_crit_edge, label %for.inc.i.i58

for.body.i.i55.twl6030_gpadc_make_correction.exit_crit_edge: ; preds = %for.body.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_make_correction.exit

for.inc.i.i58:                                    ; preds = %for.body.i.i55
  %inc.i.i56 = add nuw nsw i32 %i.07.i.i52, 1
  %exitcond.not.i.i57 = icmp eq i32 %inc.i.i56, %17
  br i1 %exitcond.not.i.i57, label %for.inc.i.i58.twl6030_gpadc_make_correction.exit_crit_edge, label %for.inc.i.i58.for.body.i.i55_crit_edge

for.inc.i.i58.for.body.i.i55_crit_edge:           ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i55

for.inc.i.i58.twl6030_gpadc_make_correction.exit_crit_edge: ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_make_correction.exit

twl6030_gpadc_make_correction.exit:               ; preds = %for.inc.i.i58.twl6030_gpadc_make_correction.exit_crit_edge, %for.body.i.i55.twl6030_gpadc_make_correction.exit_crit_edge, %twl6030_channel_calibrated.exit.thread.twl6030_gpadc_make_correction.exit_crit_edge
  %i.0.lcssa.i.i59 = phi i32 [ 0, %twl6030_channel_calibrated.exit.thread.twl6030_gpadc_make_correction.exit_crit_edge ], [ %i.07.i.i52, %for.body.i.i55.twl6030_gpadc_make_correction.exit_crit_edge ], [ %17, %for.inc.i.i58.twl6030_gpadc_make_correction.exit_crit_edge ]
  %mul.i = mul nuw nsw i32 %conv8, 1000
  %twl6030_cal_tbl.i = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %gpadc, i32 0, i32 3
  %26 = ptrtoint ptr %twl6030_cal_tbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %twl6030_cal_tbl.i, align 4
  %offset_error.i = getelementptr %struct.twl6030_chnl_calib, ptr %27, i32 %i.0.lcssa.i.i59, i32 2
  %28 = ptrtoint ptr %offset_error.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset_error.i, align 4
  %sub.i = sub i32 %mul.i, %29
  %gain_error.i = getelementptr %struct.twl6030_chnl_calib, ptr %27, i32 %i.0.lcssa.i.i59, i32 1
  %30 = ptrtoint ptr %gain_error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gain_error.i, align 4
  %div.i = sdiv i32 %sub.i, %31
  br label %if.end31

if.end31:                                         ; preds = %twl6030_gpadc_make_correction.exit, %twl6030_channel_calibrated.exit.thread.if.end31_crit_edge, %twl6030_channel_calibrated.exit.if.end31_crit_edge
  %storemerge = phi i32 [ %div.i, %twl6030_gpadc_make_correction.exit ], [ %conv8, %twl6030_channel_calibrated.exit.if.end31_crit_edge ], [ %conv8, %twl6030_channel_calibrated.exit.thread.if.end31_crit_edge ]
  %32 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then6, %do.body
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl6030_gpadc_get_processed(ptr nocapture noundef readonly %gpadc, i32 noundef %channel, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %corrected_code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %gpadc, i32 0, i32 4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %ideal1 = getelementptr inbounds %struct.twl6030_gpadc_platform_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ideal1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ideal1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %corrected_code) #7
  %4 = ptrtoint ptr %corrected_code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %corrected_code, align 4, !annotation !130
  %call = call fastcc i32 @twl6030_gpadc_get_raw(ptr noundef %gpadc, i32 noundef %channel, ptr noundef nonnull %corrected_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.i = icmp sgt i32 %8, 0
  br i1 %cmp6.i, label %if.end.for.body.i_crit_edge, label %if.end.twl6030_gpadc_lookup.exit_crit_edge

if.end.twl6030_gpadc_lookup.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_lookup.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.twl6030_ideal_code, ptr %3, i32 %i.07.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %channel)
  %cmp2.i = icmp eq i32 %10, %channel
  br i1 %cmp2.i, label %for.body.i.twl6030_gpadc_lookup.exit_crit_edge, label %for.inc.i

for.body.i.twl6030_gpadc_lookup.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_lookup.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.twl6030_gpadc_lookup.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.twl6030_gpadc_lookup.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_lookup.exit

twl6030_gpadc_lookup.exit:                        ; preds = %for.inc.i.twl6030_gpadc_lookup.exit_crit_edge, %for.body.i.twl6030_gpadc_lookup.exit_crit_edge, %if.end.twl6030_gpadc_lookup.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.twl6030_gpadc_lookup.exit_crit_edge ], [ %8, %for.inc.i.twl6030_gpadc_lookup.exit_crit_edge ], [ %i.07.i, %for.body.i.twl6030_gpadc_lookup.exit_crit_edge ]
  %11 = ptrtoint ptr %corrected_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %corrected_code, align 4
  %twl6030_cal_tbl = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %gpadc, i32 0, i32 3
  %13 = ptrtoint ptr %twl6030_cal_tbl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %twl6030_cal_tbl, align 4
  %arrayidx = getelementptr %struct.twl6030_chnl_calib, ptr %14, i32 %i.0.lcssa.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %16, %12
  %div = sdiv i32 %mul, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_gpadc_get_processed, %if.then8)) #7
          to label %do.body10 [label %if.then8], !srcloc !131

if.then8:                                         ; preds = %twl6030_gpadc_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug229, ptr noundef %18, ptr noundef nonnull @.str.20, i32 noundef %12) #7
  br label %do.body10

do.body10:                                        ; preds = %if.then8, %twl6030_gpadc_lookup.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_gpadc_get_processed, %if.then22)) #7
          to label %do.end26 [label %if.then22], !srcloc !131

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug230, ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef %div) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %corrected_code) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_mask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_start_conversion(i32 noundef %channel) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 12, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 5, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  ret i32 %call.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @twl6030_channel_to_reg(i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.tr = trunc i32 %channel to i8
  %0 = shl i8 %channel.tr, 1
  %conv = add i8 %0, 41
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_calibration(ptr nocapture noundef readonly %gpadc) #2 align 64 {
entry:
  %trim_regs = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %trim_regs) #7
  %0 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 15
  %15 = call ptr @memset(ptr %trim_regs, i32 255, i32 16)
  %call = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %trim_regs, i8 noundef zeroext -51, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpadc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.22) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %chn.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %18 = zext i32 %chn.044 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %chn.044, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.body.sw.bb3_crit_edge
    i32 3, label %for.body.sw.bb3_crit_edge45
    i32 4, label %for.body.sw.bb3_crit_edge46
    i32 5, label %for.body.sw.bb3_crit_edge47
    i32 6, label %for.body.sw.bb3_crit_edge48
    i32 2, label %sw.bb6
    i32 7, label %sw.bb9
    i32 8, label %sw.bb12
    i32 9, label %sw.bb15
    i32 10, label %sw.bb18
    i32 14, label %sw.bb21
  ]

for.body.sw.bb3_crit_edge48:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

for.body.sw.bb3_crit_edge47:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

for.body.sw.bb3_crit_edge46:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

for.body.sw.bb3_crit_edge45:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

for.body.sw.bb3_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %trim_regs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %trim_regs, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body.sw.bb3_crit_edge, %for.body.sw.bb3_crit_edge45, %for.body.sw.bb3_crit_edge46, %for.body.sw.bb3_crit_edge47, %for.body.sw.bb3_crit_edge48
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %11, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %7, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %9, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %13, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb
  %.sink = phi ptr [ %14, %sw.bb21 ], [ %10, %sw.bb18 ], [ %8, %sw.bb15 ], [ %2, %sw.bb12 ], [ %6, %sw.bb9 ], [ %12, %sw.bb6 ], [ %4, %sw.bb3 ], [ %0, %sw.bb ]
  %d1.0 = phi i8 [ %34, %sw.bb21 ], [ %32, %sw.bb18 ], [ %30, %sw.bb15 ], [ %28, %sw.bb12 ], [ %26, %sw.bb9 ], [ %24, %sw.bb6 ], [ %22, %sw.bb3 ], [ %20, %sw.bb ]
  %35 = ptrtoint ptr %.sink to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %.sink, align 1
  %conv.i = sext i8 %d1.0 to i32
  %37 = shl i32 %conv.i, 31
  %38 = shl nsw i32 %conv.i, 24
  %39 = and i32 %38, 2113929216
  %shl.i.i = or i32 %39, %37
  %conv.i41 = sext i8 %36 to i32
  %40 = shl i32 %conv.i41, 31
  %41 = shl nsw i32 %conv.i41, 24
  %42 = and i32 %41, 2113929216
  %shl.i.i42 = or i32 %42, %40
  %conv27 = ashr exact i32 %shl.i.i, 25
  %conv28 = ashr exact i32 %shl.i.i42, 25
  call fastcc void @twl6030_calibrate_channel(ptr noundef %gpadc, i32 noundef %chn.044, i32 noundef %conv27, i32 noundef %conv28)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %chn.044, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %trim_regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl6030_calibrate_channel(ptr nocapture noundef readonly %gpadc, i32 noundef %channel, i32 noundef %d1, i32 noundef %d2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %gpadc, i32 0, i32 4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %ideal1 = getelementptr inbounds %struct.twl6030_gpadc_platform_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ideal1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ideal1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.i = icmp sgt i32 %5, 0
  br i1 %cmp6.i, label %entry.for.body.i_crit_edge, label %entry.twl6030_gpadc_lookup.exit_crit_edge

entry.twl6030_gpadc_lookup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_lookup.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.twl6030_ideal_code, ptr %3, i32 %i.07.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %channel)
  %cmp2.i = icmp eq i32 %7, %channel
  br i1 %cmp2.i, label %for.body.i.twl6030_gpadc_lookup.exit_crit_edge, label %for.inc.i

for.body.i.twl6030_gpadc_lookup.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_lookup.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.twl6030_gpadc_lookup.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.twl6030_gpadc_lookup.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl6030_gpadc_lookup.exit

twl6030_gpadc_lookup.exit:                        ; preds = %for.inc.i.twl6030_gpadc_lookup.exit_crit_edge, %for.body.i.twl6030_gpadc_lookup.exit_crit_edge, %entry.twl6030_gpadc_lookup.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.twl6030_gpadc_lookup.exit_crit_edge ], [ %5, %for.inc.i.twl6030_gpadc_lookup.exit_crit_edge ], [ %i.07.i, %for.body.i.twl6030_gpadc_lookup.exit_crit_edge ]
  %volt2 = getelementptr %struct.twl6030_ideal_code, ptr %3, i32 %i.0.lcssa.i, i32 4
  %8 = ptrtoint ptr %volt2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %volt2, align 2
  %conv = zext i16 %9 to i32
  %volt1 = getelementptr %struct.twl6030_ideal_code, ptr %3, i32 %i.0.lcssa.i, i32 3
  %10 = ptrtoint ptr %volt1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %volt1, align 4
  %conv4 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv, %conv4
  %mul = mul nsw i32 %sub, 1000
  %code2 = getelementptr %struct.twl6030_ideal_code, ptr %3, i32 %i.0.lcssa.i, i32 2
  %12 = ptrtoint ptr %code2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %code2, align 2
  %conv6 = zext i16 %13 to i32
  %code1 = getelementptr %struct.twl6030_ideal_code, ptr %3, i32 %i.0.lcssa.i, i32 1
  %14 = ptrtoint ptr %code1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %code1, align 4
  %conv8 = zext i16 %15 to i32
  %sub9 = sub nsw i32 %conv6, %conv8
  %div = sdiv i32 %mul, %sub9
  %sub16 = sub i32 %d2, %d1
  %mul17 = mul i32 %sub16, 1000
  %div19 = sdiv i32 %mul17, %sub9
  %add = add i32 %div19, 1000
  %mul20 = mul i32 %d1, 1000
  %mul22 = mul i32 %div19, %conv8
  %sub23 = sub i32 %mul20, %mul22
  %twl6030_cal_tbl = getelementptr inbounds %struct.twl6030_gpadc_data, ptr %gpadc, i32 0, i32 3
  %16 = ptrtoint ptr %twl6030_cal_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %twl6030_cal_tbl, align 4
  %arrayidx24 = getelementptr %struct.twl6030_chnl_calib, ptr %17, i32 %i.0.lcssa.i
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %arrayidx24, align 4
  %19 = load ptr, ptr %twl6030_cal_tbl, align 4
  %gain_error = getelementptr %struct.twl6030_chnl_calib, ptr %19, i32 %i.0.lcssa.i, i32 1
  %20 = ptrtoint ptr %gain_error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %gain_error, align 4
  %21 = load ptr, ptr %twl6030_cal_tbl, align 4
  %offset_error = getelementptr %struct.twl6030_chnl_calib, ptr %21, i32 %i.0.lcssa.i, i32 2
  %22 = ptrtoint ptr %offset_error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub23, ptr %offset_error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_calibrate_channel, %if.then)) #7
          to label %do.body33 [label %if.then], !srcloc !131

if.then:                                          ; preds = %twl6030_gpadc_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_calibrate_channel.__UNIQUE_ID_ddebug231, ptr noundef %24, ptr noundef nonnull @.str.25, i32 noundef %channel, i32 noundef %d1) #7
  br label %do.body33

do.body33:                                        ; preds = %if.then, %twl6030_gpadc_lookup.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_calibrate_channel, %if.then45)) #7
          to label %do.body50 [label %if.then45], !srcloc !131

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_calibrate_channel.__UNIQUE_ID_ddebug232, ptr noundef %26, ptr noundef nonnull @.str.26, i32 noundef %channel, i32 noundef %d2) #7
  br label %do.body50

do.body50:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_calibrate_channel, %if.then62)) #7
          to label %do.body67 [label %if.then62], !srcloc !131

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_calibrate_channel.__UNIQUE_ID_ddebug233, ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef %channel, i32 noundef %conv8) #7
  br label %do.body67

do.body67:                                        ; preds = %if.then62, %do.body50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_calibrate_channel, %if.then79)) #7
          to label %do.body84 [label %if.then79], !srcloc !131

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_calibrate_channel.__UNIQUE_ID_ddebug234, ptr noundef %30, ptr noundef nonnull @.str.28, i32 noundef %channel, i32 noundef %conv6) #7
  br label %do.body84

do.body84:                                        ; preds = %if.then79, %do.body67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_calibrate_channel, %if.then96)) #7
          to label %do.body101 [label %if.then96], !srcloc !131

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_calibrate_channel.__UNIQUE_ID_ddebug235, ptr noundef %32, ptr noundef nonnull @.str.29, i32 noundef %channel, i32 noundef %div) #7
  br label %do.body101

do.body101:                                       ; preds = %if.then96, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_calibrate_channel, %if.then113)) #7
          to label %do.body118 [label %if.then113], !srcloc !131

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_calibrate_channel.__UNIQUE_ID_ddebug236, ptr noundef %34, ptr noundef nonnull @.str.30, i32 noundef %channel, i32 noundef %add) #7
  br label %do.body118

do.body118:                                       ; preds = %if.then113, %do.body101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl6030_calibrate_channel, %if.then130)) #7
          to label %do.end134 [label %if.then130], !srcloc !131

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpadc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl6030_calibrate_channel.__UNIQUE_ID_ddebug237, ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef %channel, i32 noundef %sub23) #7
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.body118
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6032_start_conversion(i32 noundef %channel) #2 align 64 {
entry:
  %val.addr.i.i3 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %channel to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 12, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i3) #7
  %1 = ptrtoint ptr %val.addr.i.i3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %val.addr.i.i3, align 1
  %call.i.i4 = call i32 @twl_i2c_write(i8 noundef zeroext 12, ptr noundef nonnull %val.addr.i.i3, i8 noundef zeroext 8, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i4, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @twl6032_channel_to_reg(i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6032_calibration(ptr nocapture noundef readonly %gpadc) #2 align 64 {
entry:
  %trim_regs = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %trim_regs) #7
  %0 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %trim_regs, i32 0, i32 15
  %15 = call ptr @memset(ptr %trim_regs, i32 255, i32 16)
  %call = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %trim_regs, i8 noundef zeroext -51, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %gpadc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpadc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.22) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %chn.0239 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %18 = zext i32 %chn.0239 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %chn.0239, label %for.body.for.inc_crit_edge [
    i32 0, label %for.body.sw.bb_crit_edge
    i32 1, label %for.body.sw.bb_crit_edge240
    i32 2, label %for.body.sw.bb_crit_edge241
    i32 3, label %for.body.sw.bb_crit_edge242
    i32 4, label %for.body.sw.bb_crit_edge243
    i32 5, label %for.body.sw.bb_crit_edge244
    i32 6, label %for.body.sw.bb_crit_edge245
    i32 11, label %for.body.sw.bb_crit_edge246
    i32 14, label %for.body.sw.bb_crit_edge247
    i32 8, label %sw.bb6
    i32 9, label %sw.bb16
    i32 10, label %sw.bb27
    i32 7, label %for.body.sw.bb32_crit_edge
    i32 18, label %for.body.sw.bb32_crit_edge248
  ]

for.body.sw.bb32_crit_edge248:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

for.body.sw.bb32_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

for.body.sw.bb_crit_edge247:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge246:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge245:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge244:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge243:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge242:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge241:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge240:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge240, %for.body.sw.bb_crit_edge241, %for.body.sw.bb_crit_edge242, %for.body.sw.bb_crit_edge243, %for.body.sw.bb_crit_edge244, %for.body.sw.bb_crit_edge245, %for.body.sw.bb_crit_edge246, %for.body.sw.bb_crit_edge247
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %21 = shl i8 %20, 2
  %22 = and i8 %21, 124
  %shl.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %trim_regs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %trim_regs, align 1
  %conv2.i = zext i8 %24 to i32
  %and3.i = lshr i32 %conv2.i, 1
  %shr.i = and i32 %and3.i, 3
  %or.i = or i32 %shr.i, %shl.i
  %and6.i = and i32 %conv2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  %sub.i = sub nsw i32 0, %or.i
  %spec.select.i = select i1 %tobool.not.i, i32 %or.i, i32 %sub.i
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %2, align 1
  %27 = shl i8 %26, 2
  %shl.i77 = zext i8 %27 to i32
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %0, align 1
  %conv2.i78 = zext i8 %29 to i32
  %and3.i79 = lshr i32 %conv2.i78, 1
  %shr.i80 = and i32 %and3.i79, 3
  %or.i81 = or i32 %shr.i80, %shl.i77
  %and6.i82 = and i32 %conv2.i78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i82)
  %tobool.not.i83 = icmp eq i32 %and6.i82, 0
  %sub.i84 = sub nsw i32 0, %or.i81
  %spec.select.i85 = select i1 %tobool.not.i83, i32 %or.i81, i32 %sub.i84
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 1
  %32 = shl i8 %31, 2
  %33 = and i8 %32, 124
  %shl.i89 = zext i8 %33 to i32
  %34 = ptrtoint ptr %trim_regs to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %trim_regs, align 1
  %conv2.i90 = zext i8 %35 to i32
  %and3.i91 = lshr i32 %conv2.i90, 1
  %shr.i92 = and i32 %and3.i91, 3
  %or.i93 = or i32 %shr.i92, %shl.i89
  %and6.i94 = and i32 %conv2.i90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i94)
  %tobool.not.i95 = icmp eq i32 %and6.i94, 0
  %sub.i96 = sub nsw i32 0, %or.i93
  %spec.select.i97 = select i1 %tobool.not.i95, i32 %or.i93, i32 %sub.i96
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %6, align 1
  %conv.i99 = zext i8 %37 to i32
  %and.i100 = shl nuw nsw i32 %conv.i99, 1
  %shl.i101 = and i32 %and.i100, 48
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %5, align 1
  %conv2.i103 = zext i8 %39 to i32
  %and3.i104 = lshr i32 %conv2.i103, 1
  %shr.i105 = and i32 %and3.i104, 15
  %or.i106 = or i32 %shr.i105, %shl.i101
  %and6.i107 = and i32 %conv2.i103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i107)
  %tobool.not.i108 = icmp eq i32 %and6.i107, 0
  %sub.i109 = sub nsw i32 0, %or.i106
  %spec.select.i110 = select i1 %tobool.not.i108, i32 %or.i106, i32 %sub.i109
  %add = add nsw i32 %spec.select.i110, %spec.select.i97
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %2, align 1
  %42 = shl i8 %41, 2
  %shl.i114 = zext i8 %42 to i32
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %0, align 1
  %conv2.i116 = zext i8 %44 to i32
  %and3.i117 = lshr i32 %conv2.i116, 1
  %shr.i118 = and i32 %and3.i117, 3
  %or.i119 = or i32 %shr.i118, %shl.i114
  %and6.i120 = and i32 %conv2.i116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i120)
  %tobool.not.i121 = icmp eq i32 %and6.i120, 0
  %sub.i122 = sub nsw i32 0, %or.i119
  %spec.select.i123 = select i1 %tobool.not.i121, i32 %or.i119, i32 %sub.i122
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %8, align 1
  %47 = shl i8 %46, 2
  %48 = and i8 %47, 124
  %shl.i127 = zext i8 %48 to i32
  %and3.i130 = lshr i32 %conv.i99, 1
  %shr.i131 = and i32 %and3.i130, 3
  %or.i132 = or i32 %shr.i131, %shl.i127
  %and6.i133 = and i32 %conv.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i133)
  %tobool.not.i134 = icmp eq i32 %and6.i133, 0
  %sub.i135 = sub nsw i32 0, %or.i132
  %spec.select.i136 = select i1 %tobool.not.i134, i32 %or.i132, i32 %sub.i135
  %add15 = add nsw i32 %spec.select.i136, %spec.select.i123
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %1, align 1
  %51 = shl i8 %50, 2
  %52 = and i8 %51, 124
  %shl.i140 = zext i8 %52 to i32
  %53 = ptrtoint ptr %trim_regs to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %trim_regs, align 1
  %conv2.i141 = zext i8 %54 to i32
  %and3.i142 = lshr i32 %conv2.i141, 1
  %shr.i143 = and i32 %and3.i142, 3
  %or.i144 = or i32 %shr.i143, %shl.i140
  %and6.i145 = and i32 %conv2.i141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i145)
  %tobool.not.i146 = icmp eq i32 %and6.i145, 0
  %sub.i147 = sub nsw i32 0, %or.i144
  %spec.select.i148 = select i1 %tobool.not.i146, i32 %or.i144, i32 %sub.i147
  %55 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %12, align 1
  %conv.i150 = zext i8 %56 to i32
  %and.i151 = shl nuw nsw i32 %conv.i150, 1
  %shl.i152 = and i32 %and.i151, 48
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %10, align 1
  %conv2.i154 = zext i8 %58 to i32
  %and3.i155 = lshr i32 %conv2.i154, 1
  %shr.i156 = and i32 %and3.i155, 15
  %or.i157 = or i32 %shr.i156, %shl.i152
  %and6.i158 = and i32 %conv2.i154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i158)
  %tobool.not.i159 = icmp eq i32 %and6.i158, 0
  %sub.i160 = sub nsw i32 0, %or.i157
  %spec.select.i161 = select i1 %tobool.not.i159, i32 %or.i157, i32 %sub.i160
  %add21 = add nsw i32 %spec.select.i161, %spec.select.i148
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %2, align 1
  %61 = shl i8 %60, 2
  %shl.i165 = zext i8 %61 to i32
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %0, align 1
  %conv2.i167 = zext i8 %63 to i32
  %and3.i168 = lshr i32 %conv2.i167, 1
  %shr.i169 = and i32 %and3.i168, 3
  %or.i170 = or i32 %shr.i169, %shl.i165
  %and6.i171 = and i32 %conv2.i167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i171)
  %tobool.not.i172 = icmp eq i32 %and6.i171, 0
  %sub.i173 = sub nsw i32 0, %or.i170
  %spec.select.i174 = select i1 %tobool.not.i172, i32 %or.i170, i32 %sub.i173
  %64 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %14, align 1
  %66 = shl i8 %65, 1
  %67 = and i8 %66, 62
  %shl.i178 = zext i8 %67 to i32
  %and3.i181 = lshr i32 %conv.i150, 1
  %shr.i182 = and i32 %and3.i181, 3
  %or.i183 = or i32 %shr.i182, %shl.i178
  %and6.i184 = and i32 %conv.i150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i184)
  %tobool.not.i185 = icmp eq i32 %and6.i184, 0
  %sub.i186 = sub nsw i32 0, %or.i183
  %spec.select.i187 = select i1 %tobool.not.i185, i32 %or.i183, i32 %sub.i186
  %add26 = add nsw i32 %spec.select.i187, %spec.select.i174
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %9, align 1
  %70 = shl i8 %69, 3
  %71 = and i8 %70, 120
  %shl.i191 = zext i8 %71 to i32
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %7, align 1
  %conv2.i193 = zext i8 %73 to i32
  %and3.i194 = lshr i32 %conv2.i193, 1
  %shr.i195 = and i32 %and3.i194, 7
  %or.i196 = or i32 %shr.i195, %shl.i191
  %and6.i197 = and i32 %conv2.i193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i197)
  %tobool.not.i198 = icmp eq i32 %and6.i197, 0
  %sub.i199 = sub nsw i32 0, %or.i196
  %spec.select.i200 = select i1 %tobool.not.i198, i32 %or.i196, i32 %sub.i199
  %74 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %13, align 1
  %76 = shl i8 %75, 3
  %77 = and i8 %76, 120
  %shl.i204 = zext i8 %77 to i32
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %11, align 1
  %conv2.i206 = zext i8 %79 to i32
  %and3.i207 = lshr i32 %conv2.i206, 1
  %shr.i208 = and i32 %and3.i207, 7
  %or.i209 = or i32 %shr.i208, %shl.i204
  %and6.i210 = and i32 %conv2.i206, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i210)
  %tobool.not.i211 = icmp eq i32 %and6.i210, 0
  %sub.i212 = sub nsw i32 0, %or.i209
  %spec.select.i213 = select i1 %tobool.not.i211, i32 %or.i209, i32 %sub.i212
  br label %sw.epilog

sw.bb32:                                          ; preds = %for.body.sw.bb32_crit_edge, %for.body.sw.bb32_crit_edge248
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %1, align 1
  %82 = shl i8 %81, 2
  %83 = and i8 %82, 124
  %shl.i217 = zext i8 %83 to i32
  %84 = ptrtoint ptr %trim_regs to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %trim_regs, align 1
  %conv2.i218 = zext i8 %85 to i32
  %and3.i219 = lshr i32 %conv2.i218, 1
  %shr.i220 = and i32 %and3.i219, 3
  %or.i221 = or i32 %shr.i220, %shl.i217
  %and6.i222 = and i32 %conv2.i218, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i222)
  %tobool.not.i223 = icmp eq i32 %and6.i222, 0
  %sub.i224 = sub nsw i32 0, %or.i221
  %spec.select.i225 = select i1 %tobool.not.i223, i32 %or.i221, i32 %sub.i224
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %3, align 1
  %conv = zext i8 %87 to i32
  %and = lshr i32 %conv, 1
  %88 = and i32 %and, 63
  %and37 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool.not = icmp eq i32 %and37, 0
  %sub = sub nsw i32 0, %88
  %spec.select = select i1 %tobool.not, i32 %88, i32 %sub
  %add40 = add nsw i32 %spec.select, %spec.select.i225
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %2, align 1
  %91 = shl i8 %90, 2
  %shl.i229 = zext i8 %91 to i32
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %0, align 1
  %conv2.i231 = zext i8 %93 to i32
  %and3.i232 = lshr i32 %conv2.i231, 1
  %shr.i233 = and i32 %and3.i232, 3
  %or.i234 = or i32 %shr.i233, %shl.i229
  %and6.i235 = and i32 %conv2.i231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i235)
  %tobool.not.i236 = icmp eq i32 %and6.i235, 0
  %sub.i237 = sub nsw i32 0, %or.i234
  %spec.select.i238 = select i1 %tobool.not.i236, i32 %or.i234, i32 %sub.i237
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %4, align 1
  %conv44 = zext i8 %95 to i32
  %96 = lshr i32 %conv44, 1
  %and49 = and i32 %conv44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %sub52 = sub nsw i32 0, %96
  %d2.0 = select i1 %tobool50.not, i32 %96, i32 %sub52
  %add54 = add nsw i32 %d2.0, %spec.select.i238
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb27, %sw.bb16, %sw.bb6, %sw.bb
  %d1.1 = phi i32 [ %add40, %sw.bb32 ], [ %spec.select.i200, %sw.bb27 ], [ %add21, %sw.bb16 ], [ %add, %sw.bb6 ], [ %spec.select.i, %sw.bb ]
  %d2.1 = phi i32 [ %add54, %sw.bb32 ], [ %spec.select.i213, %sw.bb27 ], [ %add26, %sw.bb16 ], [ %add15, %sw.bb6 ], [ %spec.select.i85, %sw.bb ]
  call fastcc void @twl6030_calibrate_channel(ptr noundef %gpadc, i32 noundef %chn.0239, i32 noundef %d1.1, i32 noundef %d2.1)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %chn.0239, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %trim_regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_gpadc_suspend(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -112, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %pdev, ptr noundef nonnull @.str.33, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_gpadc_resume(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i, i8 noundef zeroext -112, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %pdev, ptr noundef nonnull @.str.35, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !102, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_twl6030_gpadc__238_986_twl6030_gpadc_driver_init6, !1, !"__initcall__kmod_twl6030_gpadc__238_986_twl6030_gpadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 986, i32 1}
!2 = !{ptr @__exitcall_twl6030_gpadc_driver_exit, !1, !"__exitcall_twl6030_gpadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias239, !4, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 988, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 989, i32 1}
!7 = !{ptr @__UNIQUE_ID_author241, !8, !"__UNIQUE_ID_author241", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 990, i32 1}
!9 = !{ptr @__UNIQUE_ID_author242, !10, !"__UNIQUE_ID_author242", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 991, i32 1}
!11 = !{ptr @__UNIQUE_ID_description243, !12, !"__UNIQUE_ID_description243", i1 false, i1 false}
!12 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 992, i32 1}
!13 = !{ptr @__UNIQUE_ID_file244, !14, !"__UNIQUE_ID_file244", i1 false, i1 false}
!14 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 993, i32 1}
!15 = !{ptr @__UNIQUE_ID_license245, !14, !"__UNIQUE_ID_license245", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 980, i32 11}
!18 = !{ptr @twl6030_gpadc_driver, !19, !"twl6030_gpadc_driver", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 976, i32 31}
!20 = !{ptr @twl6030_gpadc_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 898, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 903, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @twl6030_gpadc_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @twl6030_gpadc_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 917, i32 3}
!33 = !{ptr @twl6030_gpadc_probe._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @twl6030_gpadc_probe._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 924, i32 3}
!37 = !{ptr @twl6030_gpadc_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @twl6030_gpadc_probe._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @init_completion.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../include/linux/completion.h", i32 87, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @twl6030_gpadc_iio_info, !43, !"twl6030_gpadc_iio_info", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 830, i32 30}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 515, i32 3}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @twl6030_gpadc_read_raw._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @twl6030_gpadc_read_raw._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 460, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug227, !50, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 465, i32 2}
!55 = !{ptr @twl6030_gpadc_get_raw.__UNIQUE_ID_ddebug228, !54, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 495, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug229, !57, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 496, i32 2}
!62 = !{ptr @twl6030_gpadc_get_processed.__UNIQUE_ID_ddebug230, !61, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!63 = !{ptr @of_twl6030_match_tbl, !64, !"of_twl6030_match_tbl", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 852, i32 34}
!65 = !{ptr @twl6030_pdata, !66, !"twl6030_pdata", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 834, i32 49}
!67 = !{ptr @twl6030_gpadc_iio_channels, !68, !"twl6030_gpadc_iio_channels", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 796, i32 35}
!69 = !{ptr @twl6030_ideal, !70, !"twl6030_ideal", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 138, i32 2}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 625, i32 3}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @twl6030_calibration._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @twl6030_calibration._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 585, i32 2}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug231, !77, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 586, i32 2}
!82 = !{ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug232, !81, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 587, i32 2}
!85 = !{ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug233, !84, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 588, i32 2}
!88 = !{ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug234, !87, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 589, i32 2}
!91 = !{ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug235, !90, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 590, i32 2}
!94 = !{ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug236, !93, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 591, i32 2}
!97 = !{ptr @twl6030_calibrate_channel.__UNIQUE_ID_ddebug237, !96, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!98 = !{ptr @twl6032_pdata, !99, !"twl6032_pdata", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 843, i32 49}
!100 = !{ptr @twl6032_gpadc_iio_channels, !101, !"twl6032_gpadc_iio_channels", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 812, i32 35}
!102 = !{ptr @twl6032_ideal, !103, !"twl6032_ideal", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 231, i32 4}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 704, i32 3}
!106 = !{ptr @twl6032_calibration._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @twl6032_calibration._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @twl6030_gpadc_pm_ops, !109, !"twl6030_gpadc_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 973, i32 8}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 955, i32 3}
!112 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @twl6030_gpadc_suspend._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @twl6030_gpadc_suspend._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/twl6030-gpadc.c", i32 967, i32 3}
!117 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @twl6030_gpadc_resume._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @twl6030_gpadc_resume._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{!"auto-init"}
!131 = !{i64 2148740169, i64 2148740174, i64 2148740187, i64 2148740231, i64 2148740265, i64 2148740286}
