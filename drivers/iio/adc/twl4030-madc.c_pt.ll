; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/twl4030-madc.c_pt.bc'
source_filename = "../drivers/iio/adc/twl4030-madc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.twl4030_madc_conversion_method = type { i8, i8, i8, i8 }
%struct.twl4030_prescale_divider_ratios = type { i16, i16 }
%struct.atomic_t = type { i32 }
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
%struct.twl4030_madc_data = type { ptr, %struct.mutex, ptr, [3 x %struct.twl4030_madc_request], i8, i8, i8 }
%struct.twl4030_madc_request = type { i32, i8, i16, i16, i8, i8, i8, [16 x i32] }

@__initcall__kmod_twl4030_madc__289_933_twl4030_madc_driver_init6 = internal global ptr @twl4030_madc_driver_init, section ".initcall6.init", align 4
@twl4030_madc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_madc_probe, ptr @twl4030_madc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_madc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_madc_driver_exit = internal global ptr @twl4030_madc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [44 x i8] c"twl4030_madc.description=TWL4030 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"twl4030_madc.file=drivers/iio/adc/twl4030-madc\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"twl4030_madc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [30 x i8] c"twl4030_madc.author=J Keerthy\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [41 x i8] c"twl4030_madc.alias=platform:twl4030_madc\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"twl4030_madc\00", [19 x i8] zeroinitializer }, align 32
@twl_madc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-madc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 761, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"neither platform data nor Device Tree node available\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl4030_madc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/adc/twl4030-madc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr = internal global ptr @twl4030_madc_probe._entry, section ".printk_index", align 4
@twl4030_madc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocating iio device\0A\00", [34 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.8 = internal global ptr @twl4030_madc_probe._entry.6, section ".printk_index", align 4
@twl4030_madc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @twl4030_madc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@twl4030_madc_iio_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.65, i8 64 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.66, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.67, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.68, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.69, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.70, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.71, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.72, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.73, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.74, i8 64 }, %struct.iio_chan_spec { i32 1, i32 10, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.75, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.76, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.77, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.78, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.79, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 515, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.80, i8 64 }], [352 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti,system-uses-second-madc-irq\00", [33 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to read reg BCI CTL1 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.12 = internal global ptr @twl4030_madc_probe._entry.10, section ".printk_index", align 4
@twl4030_madc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to write reg BCI Ctl1 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.15 = internal global ptr @twl4030_madc_probe._entry.13, section ".printk_index", align 4
@twl4030_madc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 823, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to read reg GPBR1 0x%X\0A\00", [33 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.18 = internal global ptr @twl4030_madc_probe._entry.16, section ".printk_index", align 4
@twl4030_madc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 829, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk disabled, enabling\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.22 = internal global ptr @twl4030_madc_probe._entry.19, section ".printk_index", align 4
@twl4030_madc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to write reg GPBR1 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.25 = internal global ptr @twl4030_madc_probe._entry.23, section ".printk_index", align 4
@twl4030_madc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&madc->lock\00", [20 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 849, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.29 = internal global ptr @twl4030_madc_probe._entry.27, section ".printk_index", align 4
@twl4030_madc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@twl4030_madc_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to read reg CARKIT_ANA_CTRL  0x%X\0A\00", [54 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.32 = internal global ptr @twl4030_madc_probe._entry.30, section ".printk_index", align 4
@twl4030_madc_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to write reg CARKIT_ANA_CTRL 0x%X\0A\00", [54 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.35 = internal global ptr @twl4030_madc_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vusb3v1\00", [24 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 880, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not enable 3v1 bias regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.39 = internal global ptr @twl4030_madc_probe._entry.37, section ".printk_index", align 4
@twl4030_madc_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 886, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@twl4030_madc_probe._entry_ptr.42 = internal global ptr @twl4030_madc_probe._entry.40, section ".printk_index", align 4
@twl4030_conversion_methods = internal constant { [3 x %struct.twl4030_madc_conversion_method], [20 x i8] } { [3 x %struct.twl4030_madc_conversion_method] [%struct.twl4030_madc_conversion_method { i8 2, i8 4, i8 23, i8 0 }, %struct.twl4030_madc_conversion_method { i8 6, i8 8, i8 55, i8 18 }, %struct.twl4030_madc_conversion_method { i8 10, i8 12, i8 55, i8 19 }], [20 x i8] zeroinitializer }, align 32
@twl4030_madc_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 633, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to write sel register 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"twl4030_madc_conversion\00", [40 x i8] zeroinitializer }, align 32
@twl4030_madc_conversion._entry_ptr = internal global ptr @twl4030_madc_conversion._entry, section ".printk_index", align 4
@twl4030_madc_conversion._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 643, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to write avg register 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@twl4030_madc_conversion._entry_ptr.47 = internal global ptr @twl4030_madc_conversion._entry.45, section ".printk_index", align 4
@twl4030_madc_start_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to write ctrl register 0x%X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"twl4030_madc_start_conversion\00", [34 x i8] zeroinitializer }, align 32
@twl4030_madc_start_conversion._entry_ptr = internal global ptr @twl4030_madc_start_conversion._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@twl4030_madc_wait_conversion_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to read status register 0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"twl4030_madc_wait_conversion_ready\00", [61 x i8] zeroinitializer }, align 32
@twl4030_madc_wait_conversion_ready._entry_ptr = internal global ptr @twl4030_madc_wait_conversion_ready._entry, section ".printk_index", align 4
@twl4030_madc_wait_conversion_ready._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"conversion timeout!\0A\00", [43 x i8] zeroinitializer }, align 32
@twl4030_madc_wait_conversion_ready._entry_ptr.54 = internal global ptr @twl4030_madc_wait_conversion_ready._entry.52, section ".printk_index", align 4
@twl4030_madc_read_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to read register 0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"twl4030_madc_read_channels\00", [37 x i8] zeroinitializer }, align 32
@twl4030_madc_read_channels._entry_ptr = internal global ptr @twl4030_madc_read_channels._entry, section ".printk_index", align 4
@twl4030_madc_read_channels._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"err reading current\0A\00", [43 x i8] zeroinitializer }, align 32
@twl4030_madc_read_channels._entry_ptr.59 = internal global ptr @twl4030_madc_read_channels._entry.57, section ".printk_index", align 4
@twl4030_madc_read_channels._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"err reading temperature\0A\00", [39 x i8] zeroinitializer }, align 32
@twl4030_madc_read_channels._entry_ptr.62 = internal global ptr @twl4030_madc_read_channels._entry.60, section ".printk_index", align 4
@twl4030_divider_ratios = internal constant { [16 x %struct.twl4030_prescale_divider_ratios], [32 x i8] } { [16 x %struct.twl4030_prescale_divider_ratios] [%struct.twl4030_prescale_divider_ratios { i16 1, i16 1 }, %struct.twl4030_prescale_divider_ratios { i16 1, i16 1 }, %struct.twl4030_prescale_divider_ratios { i16 6, i16 10 }, %struct.twl4030_prescale_divider_ratios { i16 6, i16 10 }, %struct.twl4030_prescale_divider_ratios { i16 6, i16 10 }, %struct.twl4030_prescale_divider_ratios { i16 6, i16 10 }, %struct.twl4030_prescale_divider_ratios { i16 6, i16 10 }, %struct.twl4030_prescale_divider_ratios { i16 6, i16 10 }, %struct.twl4030_prescale_divider_ratios { i16 3, i16 14 }, %struct.twl4030_prescale_divider_ratios { i16 1, i16 3 }, %struct.twl4030_prescale_divider_ratios { i16 1, i16 1 }, %struct.twl4030_prescale_divider_ratios { i16 15, i16 100 }, %struct.twl4030_prescale_divider_ratios { i16 1, i16 4 }, %struct.twl4030_prescale_divider_ratios { i16 1, i16 1 }, %struct.twl4030_prescale_divider_ratios { i16 1, i16 1 }, %struct.twl4030_prescale_divider_ratios { i16 5, i16 11 }], [32 x i8] zeroinitializer }, align 32
@twl4030_madc_channel_raw_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to read register 0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"twl4030_madc_channel_raw_read\00", [34 x i8] zeroinitializer }, align 32
@twl4030_madc_channel_raw_read._entry_ptr = internal global ptr @twl4030_madc_channel_raw_read._entry, section ".printk_index", align 4
@twl4030_therm_tbl = internal constant { [59 x i32], [52 x i8] } { [59 x i32] [i32 30800, i32 29500, i32 28300, i32 27100, i32 26000, i32 24900, i32 23900, i32 22900, i32 22000, i32 21100, i32 20300, i32 19400, i32 18700, i32 17900, i32 17200, i32 16500, i32 15900, i32 15300, i32 14700, i32 14100, i32 13600, i32 13100, i32 12600, i32 12100, i32 11600, i32 11200, i32 10800, i32 10400, i32 10000, i32 9630, i32 9280, i32 8950, i32 8620, i32 8310, i32 8020, i32 7730, i32 7460, i32 7200, i32 6950, i32 6710, i32 6470, i32 6250, i32 6040, i32 5830, i32 5640, i32 5450, i32 5260, i32 5090, i32 4920, i32 4760, i32 4600, i32 4450, i32 4310, i32 4170, i32 4040, i32 3910, i32 3790, i32 3670, i32 3550], [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN0\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN1\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN2\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN3\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN4\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN5\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN6\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN7\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN8\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCIN9\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCIN10\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCIN11\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCIN12\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCIN13\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCIN14\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCIN15\00", [24 x i8] zeroinitializer }, align 32
@twl4030_madc_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 731, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to read madc ctrl1 reg 0x%X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl4030_madc_set_power\00", [41 x i8] zeroinitializer }, align 32
@twl4030_madc_set_power._entry_ptr = internal global ptr @twl4030_madc_set_power._entry, section ".printk_index", align 4
@twl4030_madc_set_power._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to write madc ctrl1 reg 0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@twl4030_madc_set_power._entry_ptr.85 = internal global ptr @twl4030_madc_set_power._entry.83, section ".printk_index", align 4
@twl4030_madc_set_current_generator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to read BCICTL1 reg 0x%X\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"twl4030_madc_set_current_generator\00", [61 x i8] zeroinitializer }, align 32
@twl4030_madc_set_current_generator._entry_ptr = internal global ptr @twl4030_madc_set_current_generator._entry, section ".printk_index", align 4
@twl4030_madc_set_current_generator._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to write BCICTL1 reg 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_madc_set_current_generator._entry_ptr.90 = internal global ptr @twl4030_madc_set_current_generator._entry.88, section ".printk_index", align 4
@twl4030_madc_threaded_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to read isr register 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"twl4030_madc_threaded_irq_handler\00", [62 x i8] zeroinitializer }, align 32
@twl4030_madc_threaded_irq_handler._entry_ptr = internal global ptr @twl4030_madc_threaded_irq_handler._entry, section ".printk_index", align 4
@twl4030_madc_threaded_irq_handler._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to read imr register 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_madc_threaded_irq_handler._entry_ptr.95 = internal global ptr @twl4030_madc_threaded_irq_handler._entry.93, section ".printk_index", align 4
@twl4030_madc_threaded_irq_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.3, ptr @.str.96, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Disable interrupt failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl4030_madc_disable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.97, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"twl4030_madc_disable_irq\00", [39 x i8] zeroinitializer }, align 32
@twl4030_madc_disable_irq._entry_ptr = internal global ptr @twl4030_madc_disable_irq._entry, section ".printk_index", align 4
@twl4030_madc_disable_irq._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to write imr register 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@twl4030_madc_disable_irq._entry_ptr.100 = internal global ptr @twl4030_madc_disable_irq._entry.98, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"twl4030_madc_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 924, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 928, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"twl_madc_of_match\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 917, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 761, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 767, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"twl4030_madc_iio_info\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 199, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"twl4030_madc_iio_channels\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 213, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 789, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 806, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 814, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 822, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 829, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 834, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 841, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 849, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [13 x i8] c"twl4030_madc\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 232, i32 34 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 858, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 866, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 872, i32 47 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 880, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 886, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"twl4030_conversion_methods\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 281, i32 45 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 632, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 641, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 560, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 588, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 597, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 392, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 404, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 414, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant [23 x i8] c"twl4030_divider_ratios\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 240, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 318, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"twl4030_therm_tbl\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 261, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 214, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 215, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 216, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 217, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 218, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 219, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 220, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 221, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 222, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 223, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 224, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 225, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 226, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 227, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 228, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 229, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 730, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 740, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 694, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 708, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 481, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 487, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 497, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 455, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private constant [34 x i8] c"../drivers/iio/adc/twl4030-madc.c\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 462, i32 3 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_twl4030_madc_driver_exit, ptr @__initcall__kmod_twl4030_madc__289_933_twl4030_madc_driver_init6, ptr @twl4030_madc_channel_raw_read._entry, ptr @twl4030_madc_channel_raw_read._entry_ptr, ptr @twl4030_madc_conversion._entry, ptr @twl4030_madc_conversion._entry.45, ptr @twl4030_madc_conversion._entry_ptr, ptr @twl4030_madc_conversion._entry_ptr.47, ptr @twl4030_madc_disable_irq._entry, ptr @twl4030_madc_disable_irq._entry.98, ptr @twl4030_madc_disable_irq._entry_ptr, ptr @twl4030_madc_disable_irq._entry_ptr.100, ptr @twl4030_madc_driver_exit, ptr @twl4030_madc_probe._entry, ptr @twl4030_madc_probe._entry.10, ptr @twl4030_madc_probe._entry.13, ptr @twl4030_madc_probe._entry.16, ptr @twl4030_madc_probe._entry.19, ptr @twl4030_madc_probe._entry.23, ptr @twl4030_madc_probe._entry.27, ptr @twl4030_madc_probe._entry.30, ptr @twl4030_madc_probe._entry.33, ptr @twl4030_madc_probe._entry.37, ptr @twl4030_madc_probe._entry.40, ptr @twl4030_madc_probe._entry.6, ptr @twl4030_madc_probe._entry_ptr, ptr @twl4030_madc_probe._entry_ptr.12, ptr @twl4030_madc_probe._entry_ptr.15, ptr @twl4030_madc_probe._entry_ptr.18, ptr @twl4030_madc_probe._entry_ptr.22, ptr @twl4030_madc_probe._entry_ptr.25, ptr @twl4030_madc_probe._entry_ptr.29, ptr @twl4030_madc_probe._entry_ptr.32, ptr @twl4030_madc_probe._entry_ptr.35, ptr @twl4030_madc_probe._entry_ptr.39, ptr @twl4030_madc_probe._entry_ptr.42, ptr @twl4030_madc_probe._entry_ptr.8, ptr @twl4030_madc_read_channels._entry, ptr @twl4030_madc_read_channels._entry.57, ptr @twl4030_madc_read_channels._entry.60, ptr @twl4030_madc_read_channels._entry_ptr, ptr @twl4030_madc_read_channels._entry_ptr.59, ptr @twl4030_madc_read_channels._entry_ptr.62, ptr @twl4030_madc_set_current_generator._entry, ptr @twl4030_madc_set_current_generator._entry.88, ptr @twl4030_madc_set_current_generator._entry_ptr, ptr @twl4030_madc_set_current_generator._entry_ptr.90, ptr @twl4030_madc_set_power._entry, ptr @twl4030_madc_set_power._entry.83, ptr @twl4030_madc_set_power._entry_ptr, ptr @twl4030_madc_set_power._entry_ptr.85, ptr @twl4030_madc_start_conversion._entry, ptr @twl4030_madc_start_conversion._entry_ptr, ptr @twl4030_madc_threaded_irq_handler._entry, ptr @twl4030_madc_threaded_irq_handler._entry.93, ptr @twl4030_madc_threaded_irq_handler._entry_ptr, ptr @twl4030_madc_threaded_irq_handler._entry_ptr.95, ptr @twl4030_madc_wait_conversion_ready._entry, ptr @twl4030_madc_wait_conversion_ready._entry.52, ptr @twl4030_madc_wait_conversion_ready._entry_ptr, ptr @twl4030_madc_wait_conversion_ready._entry_ptr.54, ptr @twl4030_madc_driver, ptr @.str, ptr @twl_madc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @twl4030_madc_iio_info, ptr @twl4030_madc_iio_channels, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @twl4030_madc_probe.__key, ptr @.str.26, ptr @.str.28, ptr @twl4030_madc, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @twl4030_conversion_methods, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @twl4030_divider_ratios, ptr @.str.63, ptr @.str.64, ptr @twl4030_therm_tbl, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_madc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_iio_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_conversion_methods to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_conversion._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_start_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_wait_conversion_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_wait_conversion_ready._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_read_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_read_channels._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_read_channels._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_divider_ratios to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_channel_raw_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_therm_tbl to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_set_power._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_set_current_generator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_set_current_generator._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_threaded_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_threaded_irq_handler._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_disable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_madc_disable_irq._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_madc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_madc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_madc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i.i243 = alloca i8, align 1
  %regval.i244 = alloca i8, align 1
  %val.addr.i.i231 = alloca i8, align 1
  %regval.i232 = alloca i8, align 1
  %val.addr.i229 = alloca i8, align 1
  %val.addr.i226 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i214 = alloca i8, align 1
  %regval.i215 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %regval.i = alloca i8, align 1
  %regval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #6
  %4 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %regval, align 1, !annotation !210
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 344) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %6, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.dev_name.exit_crit_edge

if.end12.dev_name.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end12.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 15
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 17
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @twl4030_madc_iio_info, ptr %info, align 8
  %14 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call5, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 13
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @twl4030_madc_iio_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %num_channels, align 4
  br i1 %tobool.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp ne i32 %18, 1
  br label %if.end23

if.else:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  %frombool.sink.in = phi i1 [ %tobool.i, %if.else ], [ %cmp, %if.then19 ]
  %frombool.sink = zext i1 %frombool.sink.in to i8
  %19 = getelementptr inbounds %struct.twl4030_madc_data, ptr %6, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.sink, ptr %19, align 4
  %conv = select i1 %frombool.sink.in, i8 100, i8 98
  %imr = getelementptr inbounds %struct.twl4030_madc_data, ptr %6, i32 0, i32 5
  %21 = ptrtoint ptr %imr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %imr, align 1
  %conv30 = select i1 %frombool.sink.in, i8 99, i8 97
  %isr = getelementptr inbounds %struct.twl4030_madc_data, ptr %6, i32 0, i32 6
  %22 = ptrtoint ptr %isr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %isr, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i) #6
  %23 = ptrtoint ptr %regval.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %regval.i, align 1, !annotation !210
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %regval.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i211 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i211, label %if.end.i212, label %if.end23.twl4030_madc_set_power.exit_crit_edge

if.end23.twl4030_madc_set_power.exit_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_power.exit

if.end.i212:                                      ; preds = %if.end23
  %24 = ptrtoint ptr %regval.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %regval.i, align 1
  %storemerge.i = or i8 %25, 1
  store i8 %storemerge.i, ptr %regval.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %26 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %storemerge.i, ptr %val.addr.i.i, align 1
  %call.i20.i = call i32 @twl_i2c_write(i8 noundef zeroext 14, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool8.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool8.not.i, label %twl4030_madc_set_power.exit.thread, label %if.end.i212.twl4030_madc_set_power.exit_crit_edge

if.end.i212.twl4030_madc_set_power.exit_crit_edge: ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_power.exit

twl4030_madc_set_power.exit.thread:               ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i) #6
  br label %if.end35

twl4030_madc_set_power.exit:                      ; preds = %if.end.i212.twl4030_madc_set_power.exit_crit_edge, %if.end23.twl4030_madc_set_power.exit_crit_edge
  %.str.84.sink.i = phi ptr [ @.str.81, %if.end23.twl4030_madc_set_power.exit_crit_edge ], [ @.str.84, %if.end.i212.twl4030_madc_set_power.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %if.end23.twl4030_madc_set_power.exit_crit_edge ], [ %call.i20.i, %if.end.i212.twl4030_madc_set_power.exit_crit_edge ]
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull %.str.84.sink.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i)
  %cmp32 = icmp slt i32 %retval.0.ph.i, 0
  br i1 %cmp32, label %twl4030_madc_set_power.exit.cleanup_crit_edge, label %twl4030_madc_set_power.exit.if.end35_crit_edge

twl4030_madc_set_power.exit.if.end35_crit_edge:   ; preds = %twl4030_madc_set_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

twl4030_madc_set_power.exit.cleanup_crit_edge:    ; preds = %twl4030_madc_set_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %twl4030_madc_set_power.exit.if.end35_crit_edge, %twl4030_madc_set_power.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i215) #6
  %29 = ptrtoint ptr %regval.i215 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %regval.i215, align 1, !annotation !210
  %call.i.i216 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %regval.i215, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i216)
  %tobool.not.i217 = icmp eq i32 %call.i.i216, 0
  br i1 %tobool.not.i217, label %if.end.i219, label %if.end35.twl4030_madc_set_current_generator.exit_crit_edge

if.end35.twl4030_madc_set_current_generator.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_current_generator.exit

if.end.i219:                                      ; preds = %if.end35
  %30 = ptrtoint ptr %regval.i215 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %regval.i215, align 1
  %storemerge.i218 = or i8 %31, 16
  store i8 %storemerge.i218, ptr %regval.i215, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i214) #6
  %32 = ptrtoint ptr %val.addr.i.i214 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %storemerge.i218, ptr %val.addr.i.i214, align 1
  %call.i1.i = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i.i214, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i214) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool9.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool9.not.i, label %twl4030_madc_set_current_generator.exit.thread, label %if.end.i219.twl4030_madc_set_current_generator.exit_crit_edge

if.end.i219.twl4030_madc_set_current_generator.exit_crit_edge: ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_current_generator.exit

twl4030_madc_set_current_generator.exit.thread:   ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i215) #6
  br label %if.end40

twl4030_madc_set_current_generator.exit:          ; preds = %if.end.i219.twl4030_madc_set_current_generator.exit_crit_edge, %if.end35.twl4030_madc_set_current_generator.exit_crit_edge
  %.str.89.sink.i = phi ptr [ @.str.86, %if.end35.twl4030_madc_set_current_generator.exit_crit_edge ], [ @.str.89, %if.end.i219.twl4030_madc_set_current_generator.exit_crit_edge ]
  %retval.0.ph.i220 = phi i32 [ %call.i.i216, %if.end35.twl4030_madc_set_current_generator.exit_crit_edge ], [ %call.i1.i, %if.end.i219.twl4030_madc_set_current_generator.exit_crit_edge ]
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull %.str.89.sink.i, i32 noundef 35) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i215) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i220)
  %cmp37 = icmp slt i32 %retval.0.ph.i220, 0
  br i1 %cmp37, label %twl4030_madc_set_current_generator.exit.err_current_generator_crit_edge, label %twl4030_madc_set_current_generator.exit.if.end40_crit_edge

twl4030_madc_set_current_generator.exit.if.end40_crit_edge: ; preds = %twl4030_madc_set_current_generator.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

twl4030_madc_set_current_generator.exit.err_current_generator_crit_edge: ; preds = %twl4030_madc_set_current_generator.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_current_generator

if.end40:                                         ; preds = %twl4030_madc_set_current_generator.exit.if.end40_crit_edge, %twl4030_madc_set_current_generator.exit.thread
  %call.i223 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %regval, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool42.not = icmp eq i32 %call.i223, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 35) #9
  br label %err_i2c

if.end48:                                         ; preds = %if.end40
  %35 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regval, align 1
  %37 = or i8 %36, 2
  store i8 %37, ptr %regval, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %38 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %val.addr.i, align 1
  %call.i224 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool52.not = icmp eq i32 %call.i224, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 35) #9
  br label %err_i2c

if.end58:                                         ; preds = %if.end48
  %call.i225 = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %regval, i8 noundef zeroext 12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool60.not = icmp eq i32 %call.i225, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 12) #9
  br label %err_i2c

if.end66:                                         ; preds = %if.end58
  %39 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %regval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool68.not = icmp sgt i8 %40, -1
  br i1 %tobool68.not, label %do.end72, label %if.end66.if.end85_crit_edge

if.end66.if.end85_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.end72:                                         ; preds = %if.end66
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  %41 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %regval, align 1
  %43 = or i8 %42, -128
  store i8 %43, ptr %regval, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i226)
  %44 = ptrtoint ptr %val.addr.i226 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %val.addr.i226, align 1
  %call.i227 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i226, i8 noundef zeroext 12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i226)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool78.not = icmp eq i32 %call.i227, 0
  br i1 %tobool78.not, label %do.end72.if.end85_crit_edge, label %do.end82

do.end72.if.end85_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.end82:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef 12) #9
  br label %err_i2c

if.end85:                                         ; preds = %do.end72.if.end85_crit_edge, %if.end66.if.end85_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call5, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.twl4030_madc_data, ptr %6, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @twl4030_madc_probe.__key) #6
  %call89 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %call91 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call89, ptr noundef null, ptr noundef nonnull @twl4030_madc_threaded_irq_handler, i32 noundef 8193, ptr noundef nonnull @.str, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end98, label %do.end96

do.end96:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %err_i2c

if.end98:                                         ; preds = %if.end85
  store ptr %6, ptr @twl4030_madc, align 4
  %call.i228 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %regval, i8 noundef zeroext -69, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool100.not = icmp eq i32 %call.i228, 0
  br i1 %tobool100.not, label %if.end106, label %do.end104

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef 187) #9
  br label %err_i2c

if.end106:                                        ; preds = %if.end98
  %46 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %regval, align 1
  %48 = or i8 %47, 8
  store i8 %48, ptr %regval, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i229)
  %49 = ptrtoint ptr %val.addr.i229 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %val.addr.i229, align 1
  %call.i230 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %val.addr.i229, i8 noundef zeroext -69, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i229)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool111.not = icmp eq i32 %call.i230, 0
  br i1 %tobool111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef 187) #9
  br label %err_i2c

if.end117:                                        ; preds = %if.end106
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %6, align 4
  %call119 = call ptr @devm_regulator_get(ptr noundef %51, ptr noundef nonnull @.str.36) #6
  %usb3v1 = getelementptr inbounds %struct.twl4030_madc_data, ptr %6, i32 0, i32 2
  %52 = ptrtoint ptr %usb3v1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call119, ptr %usb3v1, align 4
  %cmp.i = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end117.err_i2c_crit_edge, label %if.end123

if.end117.err_i2c_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_i2c

if.end123:                                        ; preds = %if.end117
  %call125 = call i32 @regulator_enable(ptr noundef %call119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end132, label %do.end130

do.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.38) #9
  br label %err_i2c

if.end132:                                        ; preds = %if.end123
  %call133 = call i32 @__iio_device_register(ptr noundef nonnull %call5, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end132.cleanup_crit_edge, label %do.end138

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end138:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  %55 = ptrtoint ptr %usb3v1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb3v1, align 4
  %call142 = call i32 @regulator_disable(ptr noundef %56) #6
  br label %err_i2c

err_i2c:                                          ; preds = %do.end138, %do.end130, %if.end117.err_i2c_crit_edge, %do.end115, %do.end104, %do.end96, %do.end82, %do.end64, %do.end56, %do.end46
  %ret.0 = phi i32 [ %call.i223, %do.end46 ], [ %call.i224, %do.end56 ], [ %call.i225, %do.end64 ], [ %call91, %do.end96 ], [ %call.i228, %do.end104 ], [ %call.i230, %do.end115 ], [ %call125, %do.end130 ], [ %call133, %do.end138 ], [ %call.i227, %do.end82 ], [ -19, %if.end117.err_i2c_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i232) #6
  %57 = ptrtoint ptr %regval.i232 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %regval.i232, align 1, !annotation !210
  %call.i.i233 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %regval.i232, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i233)
  %tobool.not.i234 = icmp eq i32 %call.i.i233, 0
  br i1 %tobool.not.i234, label %if.end.i237, label %err_i2c.cleanup.sink.split.i240_crit_edge

err_i2c.cleanup.sink.split.i240_crit_edge:        ; preds = %err_i2c
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i240

if.end.i237:                                      ; preds = %err_i2c
  %58 = ptrtoint ptr %regval.i232 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %regval.i232, align 1
  %60 = and i8 %59, -17
  store i8 %60, ptr %regval.i232, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i231) #6
  %61 = ptrtoint ptr %val.addr.i.i231 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %val.addr.i.i231, align 1
  %call.i1.i235 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i.i231, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i231) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i235)
  %tobool9.not.i236 = icmp eq i32 %call.i1.i235, 0
  br i1 %tobool9.not.i236, label %if.end.i237.twl4030_madc_set_current_generator.exit242_crit_edge, label %if.end.i237.cleanup.sink.split.i240_crit_edge

if.end.i237.cleanup.sink.split.i240_crit_edge:    ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i240

if.end.i237.twl4030_madc_set_current_generator.exit242_crit_edge: ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_current_generator.exit242

cleanup.sink.split.i240:                          ; preds = %if.end.i237.cleanup.sink.split.i240_crit_edge, %err_i2c.cleanup.sink.split.i240_crit_edge
  %.str.89.sink.i238 = phi ptr [ @.str.86, %err_i2c.cleanup.sink.split.i240_crit_edge ], [ @.str.89, %if.end.i237.cleanup.sink.split.i240_crit_edge ]
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull %.str.89.sink.i238, i32 noundef 35) #9
  br label %twl4030_madc_set_current_generator.exit242

twl4030_madc_set_current_generator.exit242:       ; preds = %cleanup.sink.split.i240, %if.end.i237.twl4030_madc_set_current_generator.exit242_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i232) #6
  br label %err_current_generator

err_current_generator:                            ; preds = %twl4030_madc_set_current_generator.exit242, %twl4030_madc_set_current_generator.exit.err_current_generator_crit_edge
  %ret.1 = phi i32 [ %retval.0.ph.i220, %twl4030_madc_set_current_generator.exit.err_current_generator_crit_edge ], [ %ret.0, %twl4030_madc_set_current_generator.exit242 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i244) #6
  %64 = ptrtoint ptr %regval.i244 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %regval.i244, align 1, !annotation !210
  %call.i.i245 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %regval.i244, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i245)
  %tobool.not.i246 = icmp eq i32 %call.i.i245, 0
  br i1 %tobool.not.i246, label %if.end.i249, label %err_current_generator.cleanup.sink.split.i252_crit_edge

err_current_generator.cleanup.sink.split.i252_crit_edge: ; preds = %err_current_generator
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i252

if.end.i249:                                      ; preds = %err_current_generator
  %65 = ptrtoint ptr %regval.i244 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %regval.i244, align 1
  %67 = and i8 %66, -2
  store i8 %67, ptr %regval.i244, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i243) #6
  %68 = ptrtoint ptr %val.addr.i.i243 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %val.addr.i.i243, align 1
  %call.i20.i247 = call i32 @twl_i2c_write(i8 noundef zeroext 14, ptr noundef nonnull %val.addr.i.i243, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i243) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i247)
  %tobool8.not.i248 = icmp eq i32 %call.i20.i247, 0
  br i1 %tobool8.not.i248, label %if.end.i249.twl4030_madc_set_power.exit254_crit_edge, label %if.end.i249.cleanup.sink.split.i252_crit_edge

if.end.i249.cleanup.sink.split.i252_crit_edge:    ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i252

if.end.i249.twl4030_madc_set_power.exit254_crit_edge: ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_power.exit254

cleanup.sink.split.i252:                          ; preds = %if.end.i249.cleanup.sink.split.i252_crit_edge, %err_current_generator.cleanup.sink.split.i252_crit_edge
  %.str.84.sink.i250 = phi ptr [ @.str.81, %err_current_generator.cleanup.sink.split.i252_crit_edge ], [ @.str.84, %if.end.i249.cleanup.sink.split.i252_crit_edge ]
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull %.str.84.sink.i250, i32 noundef 0) #9
  br label %twl4030_madc_set_power.exit254

twl4030_madc_set_power.exit254:                   ; preds = %cleanup.sink.split.i252, %if.end.i249.twl4030_madc_set_power.exit254_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i244) #6
  br label %cleanup

cleanup:                                          ; preds = %twl4030_madc_set_power.exit254, %if.end132.cleanup_crit_edge, %twl4030_madc_set_power.exit.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ %ret.1, %twl4030_madc_set_power.exit254 ], [ -12, %do.end10 ], [ -22, %do.end ], [ %retval.0.ph.i, %twl4030_madc_set_power.exit.cleanup_crit_edge ], [ 0, %if.end132.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %val.addr.i.i8 = alloca i8, align 1
  %regval.i9 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %regval.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i) #6
  %4 = ptrtoint ptr %regval.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %regval.i, align 1, !annotation !210
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %regval.i, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %regval.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regval.i, align 1
  %7 = and i8 %6, -17
  store i8 %7, ptr %regval.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %8 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %val.addr.i.i, align 1
  %call.i1.i = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool9.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool9.not.i, label %if.end.i.twl4030_madc_set_current_generator.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i.twl4030_madc_set_current_generator.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_current_generator.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.89.sink.i = phi ptr [ @.str.86, %entry.cleanup.sink.split.i_crit_edge ], [ @.str.89, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull %.str.89.sink.i, i32 noundef 35) #9
  br label %twl4030_madc_set_current_generator.exit

twl4030_madc_set_current_generator.exit:          ; preds = %cleanup.sink.split.i, %if.end.i.twl4030_madc_set_current_generator.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i9) #6
  %11 = ptrtoint ptr %regval.i9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %regval.i9, align 1, !annotation !210
  %call.i.i10 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %regval.i9, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %tobool.not.i11 = icmp eq i32 %call.i.i10, 0
  br i1 %tobool.not.i11, label %if.end.i12, label %twl4030_madc_set_current_generator.exit.cleanup.sink.split.i14_crit_edge

twl4030_madc_set_current_generator.exit.cleanup.sink.split.i14_crit_edge: ; preds = %twl4030_madc_set_current_generator.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i14

if.end.i12:                                       ; preds = %twl4030_madc_set_current_generator.exit
  %12 = ptrtoint ptr %regval.i9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %regval.i9, align 1
  %14 = and i8 %13, -2
  store i8 %14, ptr %regval.i9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i8) #6
  %15 = ptrtoint ptr %val.addr.i.i8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %val.addr.i.i8, align 1
  %call.i20.i = call i32 @twl_i2c_write(i8 noundef zeroext 14, ptr noundef nonnull %val.addr.i.i8, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool8.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool8.not.i, label %if.end.i12.twl4030_madc_set_power.exit_crit_edge, label %if.end.i12.cleanup.sink.split.i14_crit_edge

if.end.i12.cleanup.sink.split.i14_crit_edge:      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i14

if.end.i12.twl4030_madc_set_power.exit_crit_edge: ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_set_power.exit

cleanup.sink.split.i14:                           ; preds = %if.end.i12.cleanup.sink.split.i14_crit_edge, %twl4030_madc_set_current_generator.exit.cleanup.sink.split.i14_crit_edge
  %.str.84.sink.i = phi ptr [ @.str.81, %twl4030_madc_set_current_generator.exit.cleanup.sink.split.i14_crit_edge ], [ @.str.84, %if.end.i12.cleanup.sink.split.i14_crit_edge ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.84.sink.i, i32 noundef 0) #9
  br label %twl4030_madc_set_power.exit

twl4030_madc_set_power.exit:                      ; preds = %cleanup.sink.split.i14, %if.end.i12.twl4030_madc_set_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i9) #6
  %usb3v1 = getelementptr inbounds %struct.twl4030_madc_data, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %usb3v1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb3v1, align 4
  %call4 = call i32 @regulator_disable(ptr noundef %19) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_threaded_irq_handler(i32 noundef %irq, ptr noundef %_madc) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %isr_val = alloca i8, align 1
  %imr_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %isr_val) #6
  %0 = ptrtoint ptr %isr_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %isr_val, align 1, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %imr_val) #6
  %1 = ptrtoint ptr %imr_val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %imr_val, align 1, !annotation !210
  %lock = getelementptr inbounds %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %isr = getelementptr inbounds %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 6
  %2 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %isr, align 2
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 14, ptr noundef nonnull %isr_val, i8 noundef zeroext %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %_madc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_madc, align 4
  %6 = ptrtoint ptr %isr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %isr, align 2
  %conv = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.91, i32 noundef %conv) #9
  br label %err_i2c

if.end:                                           ; preds = %entry
  %imr = getelementptr inbounds %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 5
  %8 = ptrtoint ptr %imr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %imr, align 1
  %call.i130 = call i32 @twl_i2c_read(i8 noundef zeroext 14, ptr noundef nonnull %imr_val, i8 noundef zeroext %9, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool3.not = icmp eq i32 %call.i130, 0
  br i1 %tobool3.not, label %if.end11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %_madc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_madc, align 4
  %12 = ptrtoint ptr %imr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %imr, align 1
  %conv10 = zext i8 %13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.94, i32 noundef %conv10) #9
  br label %err_i2c

if.end11:                                         ; preds = %if.end
  %14 = ptrtoint ptr %imr_val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %imr_val, align 1
  %neg = xor i8 %15, -1
  %16 = ptrtoint ptr %isr_val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %isr_val, align 1
  %and = and i8 %17, %neg
  store i8 %and, ptr %isr_val, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.0137 = phi i32 [ 0, %if.end11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %isr_val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %isr_val, align 1
  %conv16 = zext i8 %19 to i32
  %shl = shl nuw i32 1, %i.0137
  %and17 = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end20:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val.i, align 1, !annotation !210
  %21 = ptrtoint ptr %imr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %imr, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 14, ptr noundef nonnull %val.i, i8 noundef zeroext %22, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.twl4030_madc_disable_irq.exit_crit_edge

if.end20.twl4030_madc_disable_irq.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_disable_irq.exit

if.end.i:                                         ; preds = %if.end20
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  %25 = trunc i32 %shl to i8
  %conv4.i = or i8 %24, %25
  store i8 %conv4.i, ptr %val.i, align 1
  %26 = ptrtoint ptr %imr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %imr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %28 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4.i, ptr %val.addr.i.i, align 1
  %call.i25.i = call i32 @twl_i2c_write(i8 noundef zeroext 14, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %27, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool7.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool7.not.i, label %twl4030_madc_disable_irq.exit.thread, label %if.end.i.twl4030_madc_disable_irq.exit_crit_edge

if.end.i.twl4030_madc_disable_irq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_disable_irq.exit

twl4030_madc_disable_irq.exit.thread:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %if.end36

twl4030_madc_disable_irq.exit:                    ; preds = %if.end.i.twl4030_madc_disable_irq.exit_crit_edge, %if.end20.twl4030_madc_disable_irq.exit_crit_edge
  %.str.99.sink.i = phi ptr [ @.str.94, %if.end20.twl4030_madc_disable_irq.exit_crit_edge ], [ @.str.99, %if.end.i.twl4030_madc_disable_irq.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %if.end20.twl4030_madc_disable_irq.exit_crit_edge ], [ %call.i25.i, %if.end.i.twl4030_madc_disable_irq.exit_crit_edge ]
  %29 = ptrtoint ptr %_madc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_madc, align 4
  %31 = ptrtoint ptr %imr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %imr, align 1
  %conv14.i = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull %.str.99.sink.i, i32 noundef %conv14.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i)
  %cmp23 = icmp slt i32 %retval.0.ph.i, 0
  br i1 %cmp23, label %do.body26, label %twl4030_madc_disable_irq.exit.if.end36_crit_edge

twl4030_madc_disable_irq.exit.if.end36_crit_edge: ; preds = %twl4030_madc_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.body26:                                        ; preds = %twl4030_madc_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_madc_threaded_irq_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@twl4030_madc_threaded_irq_handler, %if.then31)) #6
          to label %if.end36 [label %if.then31], !srcloc !211

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %_madc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_madc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_madc_threaded_irq_handler.__UNIQUE_ID_ddebug288, ptr noundef %34, ptr noundef nonnull @.str.96, i32 noundef %i.0137) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %do.body26, %twl4030_madc_disable_irq.exit.if.end36_crit_edge, %twl4030_madc_disable_irq.exit.thread
  %result_pending = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 %i.0137, i32 5
  %35 = ptrtoint ptr %result_pending to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %result_pending, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.body40.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body40.preheader:                             ; preds = %for.inc
  %result_pending43 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 5
  %36 = ptrtoint ptr %result_pending43 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %result_pending43, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool44.not = icmp eq i8 %37, 0
  br i1 %tobool44.not, label %for.body40.preheader.for.inc52_crit_edge, label %if.end46

for.body40.preheader.for.inc52_crit_edge:         ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc52

if.end46:                                         ; preds = %for.body40.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx42 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0
  %method47 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 2
  %38 = ptrtoint ptr %method47 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %method47, align 2
  %idxprom = zext i16 %39 to i32
  %rbase = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %idxprom, i32 2
  %40 = ptrtoint ptr %rbase to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rbase, align 1
  %42 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx42, align 4
  %rbuf = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 7
  %raw = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 6
  %44 = ptrtoint ptr %raw to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %raw, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool49 = icmp ne i8 %45, 0
  %call50 = call fastcc i32 @twl4030_madc_read_channels(ptr noundef %_madc, i8 noundef zeroext %41, i32 noundef %43, ptr noundef %rbuf, i1 noundef zeroext %tobool49)
  %46 = ptrtoint ptr %result_pending43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %result_pending43, align 1
  %active = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 4
  %47 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %active, align 2
  br label %for.inc52

for.inc52:                                        ; preds = %if.end46, %for.body40.preheader.for.inc52_crit_edge
  %result_pending43.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 5
  %48 = ptrtoint ptr %result_pending43.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %result_pending43.1, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool44.not.1 = icmp eq i8 %49, 0
  br i1 %tobool44.not.1, label %for.inc52.for.inc52.1_crit_edge, label %if.end46.1

for.inc52.for.inc52.1_crit_edge:                  ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc52.1

if.end46.1:                                       ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx42.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1
  %method47.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 2
  %50 = ptrtoint ptr %method47.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %method47.1, align 2
  %idxprom.1 = zext i16 %51 to i32
  %rbase.1 = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %idxprom.1, i32 2
  %52 = ptrtoint ptr %rbase.1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rbase.1, align 1
  %54 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx42.1, align 4
  %rbuf.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 7
  %raw.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 6
  %56 = ptrtoint ptr %raw.1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %raw.1, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool49.1 = icmp ne i8 %57, 0
  %call50.1 = call fastcc i32 @twl4030_madc_read_channels(ptr noundef %_madc, i8 noundef zeroext %53, i32 noundef %55, ptr noundef %rbuf.1, i1 noundef zeroext %tobool49.1)
  %58 = ptrtoint ptr %result_pending43.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %result_pending43.1, align 1
  %active.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 4
  %59 = ptrtoint ptr %active.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %active.1, align 2
  br label %for.inc52.1

for.inc52.1:                                      ; preds = %if.end46.1, %for.inc52.for.inc52.1_crit_edge
  %result_pending43.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 5
  %60 = ptrtoint ptr %result_pending43.2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %result_pending43.2, align 1, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool44.not.2 = icmp eq i8 %61, 0
  br i1 %tobool44.not.2, label %for.inc52.1.cleanup_crit_edge, label %if.end46.2

for.inc52.1.cleanup_crit_edge:                    ; preds = %for.inc52.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46.2:                                       ; preds = %for.inc52.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx42.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2
  %method47.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 2
  %62 = ptrtoint ptr %method47.2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %method47.2, align 2
  %idxprom.2 = zext i16 %63 to i32
  %rbase.2 = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %idxprom.2, i32 2
  %64 = ptrtoint ptr %rbase.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rbase.2, align 1
  %66 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx42.2, align 4
  %rbuf.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 7
  %raw.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 6
  %68 = ptrtoint ptr %raw.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %raw.2, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool49.2 = icmp ne i8 %69, 0
  %call50.2 = call fastcc i32 @twl4030_madc_read_channels(ptr noundef %_madc, i8 noundef zeroext %65, i32 noundef %67, ptr noundef %rbuf.2, i1 noundef zeroext %tobool49.2)
  %70 = ptrtoint ptr %result_pending43.2 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %result_pending43.2, align 1
  %active.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 4
  br label %cleanup.sink.split

err_i2c:                                          ; preds = %do.end7, %do.end
  %active62 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 4
  %71 = ptrtoint ptr %active62 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %active62, align 2, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool63.not = icmp eq i8 %72, 0
  br i1 %tobool63.not, label %err_i2c.for.inc78_crit_edge, label %if.end65

err_i2c.for.inc78_crit_edge:                      ; preds = %err_i2c
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc78

if.end65:                                         ; preds = %err_i2c
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0
  %method66 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 2
  %73 = ptrtoint ptr %method66 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %method66, align 2
  %idxprom67 = zext i16 %74 to i32
  %rbase69 = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %idxprom67, i32 2
  %75 = ptrtoint ptr %rbase69 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rbase69, align 1
  %77 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx61, align 4
  %rbuf71 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 7
  %raw73 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 6
  %79 = ptrtoint ptr %raw73 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %raw73, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool74 = icmp ne i8 %80, 0
  %call75 = call fastcc i32 @twl4030_madc_read_channels(ptr noundef %_madc, i8 noundef zeroext %76, i32 noundef %78, ptr noundef %rbuf71, i1 noundef zeroext %tobool74)
  %result_pending76 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 0, i32 5
  %81 = ptrtoint ptr %result_pending76 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %result_pending76, align 1
  %82 = ptrtoint ptr %active62 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %active62, align 2
  br label %for.inc78

for.inc78:                                        ; preds = %if.end65, %err_i2c.for.inc78_crit_edge
  %active62.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 4
  %83 = ptrtoint ptr %active62.1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %active62.1, align 2, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool63.not.1 = icmp eq i8 %84, 0
  br i1 %tobool63.not.1, label %for.inc78.for.inc78.1_crit_edge, label %if.end65.1

for.inc78.for.inc78.1_crit_edge:                  ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc78.1

if.end65.1:                                       ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1
  %method66.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 2
  %85 = ptrtoint ptr %method66.1 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %method66.1, align 2
  %idxprom67.1 = zext i16 %86 to i32
  %rbase69.1 = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %idxprom67.1, i32 2
  %87 = ptrtoint ptr %rbase69.1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %rbase69.1, align 1
  %89 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx61.1, align 4
  %rbuf71.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 7
  %raw73.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 6
  %91 = ptrtoint ptr %raw73.1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %raw73.1, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool74.1 = icmp ne i8 %92, 0
  %call75.1 = call fastcc i32 @twl4030_madc_read_channels(ptr noundef %_madc, i8 noundef zeroext %88, i32 noundef %90, ptr noundef %rbuf71.1, i1 noundef zeroext %tobool74.1)
  %result_pending76.1 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 1, i32 5
  %93 = ptrtoint ptr %result_pending76.1 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %result_pending76.1, align 1
  %94 = ptrtoint ptr %active62.1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %active62.1, align 2
  br label %for.inc78.1

for.inc78.1:                                      ; preds = %if.end65.1, %for.inc78.for.inc78.1_crit_edge
  %active62.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 4
  %95 = ptrtoint ptr %active62.2 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %active62.2, align 2, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool63.not.2 = icmp eq i8 %96, 0
  br i1 %tobool63.not.2, label %for.inc78.1.cleanup_crit_edge, label %if.end65.2

for.inc78.1.cleanup_crit_edge:                    ; preds = %for.inc78.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65.2:                                       ; preds = %for.inc78.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2
  %method66.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 2
  %97 = ptrtoint ptr %method66.2 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %method66.2, align 2
  %idxprom67.2 = zext i16 %98 to i32
  %rbase69.2 = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %idxprom67.2, i32 2
  %99 = ptrtoint ptr %rbase69.2 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rbase69.2, align 1
  %101 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx61.2, align 4
  %rbuf71.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 7
  %raw73.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 6
  %103 = ptrtoint ptr %raw73.2 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %raw73.2, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool74.2 = icmp ne i8 %104, 0
  %call75.2 = call fastcc i32 @twl4030_madc_read_channels(ptr noundef %_madc, i8 noundef zeroext %100, i32 noundef %102, ptr noundef %rbuf71.2, i1 noundef zeroext %tobool74.2)
  %result_pending76.2 = getelementptr %struct.twl4030_madc_data, ptr %_madc, i32 0, i32 3, i32 2, i32 5
  %105 = ptrtoint ptr %result_pending76.2 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %result_pending76.2, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end65.2, %if.end46.2
  %active62.2.sink = phi ptr [ %active62.2, %if.end65.2 ], [ %active.2, %if.end46.2 ]
  %106 = ptrtoint ptr %active62.2.sink to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %active62.2.sink, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc78.1.cleanup_crit_edge, %for.inc52.1.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %imr_val) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %isr_val) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_madc_read(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.i.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %value.i100.i = alloca i16, align 2
  %value.i.i = alloca i16, align 2
  %req = alloca %struct.twl4030_madc_request, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %req) #6
  %2 = getelementptr inbounds i8, ptr %req, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 76)
  %use_second_irq = getelementptr inbounds %struct.twl4030_madc_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %use_second_irq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_second_irq, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool.not, i16 1, i16 2
  %method = getelementptr inbounds %struct.twl4030_madc_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %method to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %method, align 2
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %8
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %req, align 4
  %active = getelementptr inbounds %struct.twl4030_madc_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %active, align 2
  %type = getelementptr inbounds %struct.twl4030_madc_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cmp = icmp ne i32 %mask, 1
  %raw = getelementptr inbounds %struct.twl4030_madc_request, ptr %req, i32 0, i32 6
  %frombool = zext i1 %cmp to i8
  %12 = ptrtoint ptr %raw to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %raw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mask)
  %cmp2 = icmp eq i32 %mask, 9
  %do_avg = getelementptr inbounds %struct.twl4030_madc_request, ptr %req, i32 0, i32 1
  %frombool4 = zext i1 %cmp2 to i8
  %13 = ptrtoint ptr %do_avg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool4, ptr %do_avg, align 4
  %14 = load ptr, ptr @twl4030_madc, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %entry.cleanup_crit_edge, label %if.end10.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.twl4030_madc_data, ptr %14, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %conv.i = zext i16 %conv to i32
  %15 = load ptr, ptr @twl4030_madc, align 4
  %active.i = getelementptr %struct.twl4030_madc_data, ptr %15, i32 0, i32 3, i32 %conv.i, i32 4
  %16 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active.i, align 2, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not.i = icmp eq i8 %17, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.twl4030_madc_conversion.exit_crit_edge

if.end10.i.twl4030_madc_conversion.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_conversion.exit

if.end14.i:                                       ; preds = %if.end10.i
  %arrayidx17.i = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %conv.i
  %conv18.i = trunc i32 %shl to i16
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #6
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #6
  %21 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %value.i.i, align 2
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 14, ptr noundef nonnull %value.i.i, i8 noundef zeroext %19, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not.i, label %if.end23.i, label %do.end.i

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = load ptr, ptr @twl4030_madc, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %conv22.i = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.43, i32 noundef %conv22.i) #9
  br label %twl4030_madc_conversion.exit

if.end23.i:                                       ; preds = %if.end14.i
  br i1 %cmp2, label %if.then25.i, label %if.end23.i.if.end.i.i_crit_edge

if.end23.i.if.end.i.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then25.i:                                      ; preds = %if.end23.i
  %avg.i = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %conv.i, i32 1
  %25 = ptrtoint ptr %avg.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %avg.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i100.i) #6
  %27 = ptrtoint ptr %value.i100.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %20, ptr %value.i100.i, align 2
  %call.i101.i = call i32 @twl_i2c_write(i8 noundef zeroext 14, ptr noundef nonnull %value.i100.i, i8 noundef zeroext %26, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i100.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool29.not.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool29.not.i, label %if.then25.i.if.end.i.i_crit_edge, label %do.end33.i

if.then25.i.if.end.i.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end33.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = load ptr, ptr @twl4030_madc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %conv36.i = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.46, i32 noundef %conv36.i) #9
  br label %twl4030_madc_conversion.exit

if.end.i.i:                                       ; preds = %if.then25.i.if.end.i.i_crit_edge, %if.end23.i.if.end.i.i_crit_edge
  %31 = load ptr, ptr @twl4030_madc, align 4
  %ctrl.i.i = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %conv.i, i32 3
  %32 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctrl.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %34 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 32, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 14, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %33, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end51.i_crit_edge, label %twl4030_madc_start_conversion.exit.i

if.end.i.i.if.end51.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

twl4030_madc_start_conversion.exit.i:             ; preds = %if.end.i.i
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %31, align 4
  %conv.i.i = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.48, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp48.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp48.i, label %twl4030_madc_start_conversion.exit.i.twl4030_madc_conversion.exit_crit_edge, label %twl4030_madc_start_conversion.exit.i.if.end51.i_crit_edge

twl4030_madc_start_conversion.exit.i.if.end51.i_crit_edge: ; preds = %twl4030_madc_start_conversion.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

twl4030_madc_start_conversion.exit.i.twl4030_madc_conversion.exit_crit_edge: ; preds = %twl4030_madc_start_conversion.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_madc_conversion.exit

if.end51.i:                                       ; preds = %twl4030_madc_start_conversion.exit.i.if.end51.i_crit_edge, %if.end.i.i.if.end51.i_crit_edge
  %37 = load ptr, ptr @twl4030_madc, align 4
  %active56.i = getelementptr %struct.twl4030_madc_data, ptr %37, i32 0, i32 3, i32 %conv.i, i32 4
  %38 = ptrtoint ptr %active56.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %active56.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %39, 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond10.i.i.do.body.i.i_crit_edge, %if.end51.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i.i) #6
  %40 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %reg.i.i, align 1, !annotation !210
  %call.i.i102.i = call i32 @twl_i2c_read(i8 noundef zeroext 14, ptr noundef nonnull %reg.i.i, i8 noundef zeroext %33, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102.i)
  %tobool.not.i103.i = icmp eq i32 %call.i.i102.i, 0
  br i1 %tobool.not.i103.i, label %if.end.i106.i, label %twl4030_madc_wait_conversion_ready.exit.i

if.end.i106.i:                                    ; preds = %do.body.i.i
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg.i.i, align 1
  %43 = and i8 %42, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %.not.i.i = icmp eq i8 %43, 2
  br i1 %.not.i.i, label %if.end65.i, label %do.cond10.i.i

do.cond10.i.i:                                    ; preds = %if.end.i106.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 2000, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %44
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %do.cond10.i.i.do.body.i.i_crit_edge, label %twl4030_madc_wait_conversion_ready.exit.thread.i

do.cond10.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

twl4030_madc_wait_conversion_ready.exit.thread.i: ; preds = %do.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.53) #9
  br label %if.then59.i

twl4030_madc_wait_conversion_ready.exit.i:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %37, align 4
  %conv.i104.i = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.50, i32 noundef %conv.i104.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i.i) #6
  br label %if.then59.i

if.then59.i:                                      ; preds = %twl4030_madc_wait_conversion_ready.exit.i, %twl4030_madc_wait_conversion_ready.exit.thread.i
  %retval.2.i114.i = phi i32 [ -11, %twl4030_madc_wait_conversion_ready.exit.thread.i ], [ %call.i.i102.i, %twl4030_madc_wait_conversion_ready.exit.i ]
  %49 = load ptr, ptr @twl4030_madc, align 4
  %active64.i = getelementptr %struct.twl4030_madc_data, ptr %49, i32 0, i32 3, i32 %conv.i, i32 4
  %50 = ptrtoint ptr %active64.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %active64.i, align 2
  br label %twl4030_madc_conversion.exit

if.end65.i:                                       ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i.i) #6
  %51 = load ptr, ptr @twl4030_madc, align 4
  %rbase.i = getelementptr [3 x %struct.twl4030_madc_conversion_method], ptr @twl4030_conversion_methods, i32 0, i32 %conv.i, i32 2
  %52 = ptrtoint ptr %rbase.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rbase.i, align 1
  %rbuf.i = getelementptr inbounds %struct.twl4030_madc_request, ptr %req, i32 0, i32 7
  %call68.i = call fastcc i32 @twl4030_madc_read_channels(ptr noundef %51, i8 noundef zeroext %53, i32 noundef %shl, ptr noundef %rbuf.i, i1 noundef zeroext %cmp) #6
  %54 = load ptr, ptr @twl4030_madc, align 4
  %55 = ptrtoint ptr %method to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %method, align 2
  %idxprom71.i = zext i16 %56 to i32
  %active73.i = getelementptr %struct.twl4030_madc_data, ptr %54, i32 0, i32 3, i32 %idxprom71.i, i32 4
  %57 = ptrtoint ptr %active73.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %active73.i, align 2
  br label %twl4030_madc_conversion.exit

twl4030_madc_conversion.exit:                     ; preds = %if.end65.i, %if.then59.i, %twl4030_madc_start_conversion.exit.i.twl4030_madc_conversion.exit_crit_edge, %do.end33.i, %do.end.i, %if.end10.i.twl4030_madc_conversion.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i101.i, %do.end33.i ], [ %call.i.i.i, %twl4030_madc_start_conversion.exit.i.twl4030_madc_conversion.exit_crit_edge ], [ %retval.2.i114.i, %if.then59.i ], [ %call68.i, %if.end65.i ], [ -16, %if.end10.i.twl4030_madc_conversion.exit_crit_edge ]
  %58 = load ptr, ptr @twl4030_madc, align 4
  %lock74.i = getelementptr inbounds %struct.twl4030_madc_data, ptr %58, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %lock74.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp6 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp6, label %twl4030_madc_conversion.exit.cleanup_crit_edge, label %if.end

twl4030_madc_conversion.exit.cleanup_crit_edge:   ; preds = %twl4030_madc_conversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %twl4030_madc_conversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.twl4030_madc_request, ptr %req, i32 0, i32 7, i32 %60
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %twl4030_madc_conversion.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %ret.0.i, %twl4030_madc_conversion.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_madc_read_channels(ptr nocapture noundef readonly %madc, i8 noundef zeroext %reg_base, i32 noundef %channels, ptr nocapture noundef %buf, i1 noundef zeroext %raw) unnamed_addr #2 align 64 {
entry:
  %val.i107 = alloca i8, align 1
  %val.i = alloca i8, align 1
  %value.i.i = alloca i16, align 2
  %channels.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channels.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %channels, ptr %channels.addr, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %channels.addr, i32 noundef 16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp136 = icmp slt i32 %call, 16
  br i1 %cmp136, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0138 = phi i32 [ %call56, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %count.0137 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.0138 to i8
  %1 = shl i8 %i.0.tr, 1
  %conv1 = add i8 %1, %reg_base
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #6
  %2 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %value.i.i, align 2, !annotation !210
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 14, ptr noundef nonnull %value.i.i, i8 noundef zeroext %conv1, i32 noundef 2) #6
  %3 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %twl4030_madc_channel_raw_read.exit.thread, label %twl4030_madc_channel_raw_read.exit

twl4030_madc_channel_raw_read.exit.thread:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = call i16 @llvm.bswap.i16(i16 %4) #6
  %6 = lshr i16 %5, 6
  %7 = zext i16 %6 to i32
  %arrayidx113 = getelementptr i32, ptr %buf, i32 %i.0138
  %8 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx113, align 4
  br label %if.end

twl4030_madc_channel_raw_read.exit:               ; preds = %for.body
  %9 = ptrtoint ptr %madc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %madc, align 4
  %conv.i = zext i8 %conv1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.63, i32 noundef %conv.i) #9
  %arrayidx = getelementptr i32, ptr %buf, i32 %i.0138
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4 = icmp slt i32 %call.i.i, 0
  br i1 %cmp4, label %do.end, label %twl4030_madc_channel_raw_read.exit.if.end_crit_edge

twl4030_madc_channel_raw_read.exit.if.end_crit_edge: ; preds = %twl4030_madc_channel_raw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %twl4030_madc_channel_raw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %madc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %madc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.55, i32 noundef %conv.i) #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %twl4030_madc_channel_raw_read.exit.if.end_crit_edge, %twl4030_madc_channel_raw_read.exit.thread
  %arrayidx116 = phi ptr [ %arrayidx113, %twl4030_madc_channel_raw_read.exit.thread ], [ %arrayidx, %twl4030_madc_channel_raw_read.exit.if.end_crit_edge ]
  %retval.0.i115 = phi i32 [ %7, %twl4030_madc_channel_raw_read.exit.thread ], [ %call.i.i, %twl4030_madc_channel_raw_read.exit.if.end_crit_edge ]
  br i1 %raw, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %14 = zext i32 %i.0138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0138, label %sw.default [
    i32 10, label %sw.bb
    i32 1, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %val.i, align 1, !annotation !210
  %call.i.i103 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %tobool.not.i104 = icmp eq i32 %call.i.i103, 0
  br i1 %tobool.not.i104, label %if.end.i105, label %sw.bb.twl4030battery_current.exit_crit_edge

sw.bb.twl4030battery_current.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030battery_current.exit

if.end.i105:                                      ; preds = %sw.bb
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i, align 1
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  %mul3.i = mul i32 %retval.0.i115, 147
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = sdiv i32 %mul3.i, 44
  br label %twl4030battery_current.exit

if.else.i:                                        ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  %div4.i = sdiv i32 %mul3.i, 88
  br label %twl4030battery_current.exit

twl4030battery_current.exit:                      ; preds = %if.else.i, %if.then2.i, %sw.bb.twl4030battery_current.exit_crit_edge
  %retval.0.i106 = phi i32 [ %div.i, %if.then2.i ], [ %div4.i, %if.else.i ], [ %call.i.i103, %sw.bb.twl4030battery_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %19 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i106, ptr %arrayidx116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i106)
  %cmp14 = icmp slt i32 %retval.0.i106, 0
  br i1 %cmp14, label %do.end19, label %if.else

do.end19:                                         ; preds = %twl4030battery_current.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %madc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %madc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.58) #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %twl4030battery_current.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %retval.0.i106, -750
  br label %for.inc.sink.split

sw.bb26:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i107) #6
  %22 = ptrtoint ptr %val.i107 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %val.i107, align 1, !annotation !210
  %call.i.i108 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i107, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %cmp.i = icmp slt i32 %call.i.i108, 0
  br i1 %cmp.i, label %twl4030battery_temperature.exit.thread, label %if.end.i110

twl4030battery_temperature.exit.thread:           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i107) #6
  %23 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i108, ptr %arrayidx116, align 4
  br label %do.end36

if.end.i110:                                      ; preds = %sw.bb26
  %mul.i = mul i32 %retval.0.i115, 147
  %div.i109 = sdiv i32 %mul.i, 100
  %24 = ptrtoint ptr %val.i107 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i107, align 1
  %26 = and i8 %25, 7
  %27 = mul nuw nsw i8 %26, 10
  %narrow21.i = add nuw nsw i8 %27, 10
  %mul1.i = zext i8 %narrow21.i to i32
  %mul2.i = mul i32 %div.i109, 1000
  %div3.i = sdiv i32 %mul2.i, %mul1.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i110
  %temp.022.i = phi i32 [ 58, %if.end.i110 ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [59 x i32], ptr @twl4030_therm_tbl, i32 0, i32 %temp.022.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %29, %div3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp6.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp6.i, label %twl4030battery_temperature.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %temp.022.i, -1
  %cmp4.not.i = icmp eq i32 %temp.022.i, 0
  br i1 %cmp4.not.i, label %twl4030battery_temperature.exit.thread119, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

twl4030battery_temperature.exit.thread119:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i107) #6
  br label %if.else39

twl4030battery_temperature.exit:                  ; preds = %for.body.i
  %add10.i = add nuw i32 %temp.022.i, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i107) #6
  %30 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add10.i, ptr %arrayidx116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add10.i)
  %cmp31 = icmp slt i32 %add10.i, 0
  br i1 %cmp31, label %twl4030battery_temperature.exit.do.end36_crit_edge, label %twl4030battery_temperature.exit.if.else39_crit_edge

twl4030battery_temperature.exit.if.else39_crit_edge: ; preds = %twl4030battery_temperature.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

twl4030battery_temperature.exit.do.end36_crit_edge: ; preds = %twl4030battery_temperature.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

do.end36:                                         ; preds = %twl4030battery_temperature.exit.do.end36_crit_edge, %twl4030battery_temperature.exit.thread
  %31 = ptrtoint ptr %madc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %madc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.61) #9
  br label %cleanup.sink.split

if.else39:                                        ; preds = %twl4030battery_temperature.exit.if.else39_crit_edge, %twl4030battery_temperature.exit.thread119
  %add10.i123 = phi i32 [ 0, %twl4030battery_temperature.exit.thread119 ], [ %add10.i, %twl4030battery_temperature.exit.if.else39_crit_edge ]
  %sub41 = add nsw i32 %add10.i123, -3
  br label %for.inc.sink.split

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %mul47 = mul i32 %retval.0.i115, 3000
  %arrayidx48 = getelementptr [16 x %struct.twl4030_prescale_divider_ratios], ptr @twl4030_divider_ratios, i32 0, i32 %i.0138
  %denominator = getelementptr [16 x %struct.twl4030_prescale_divider_ratios], ptr @twl4030_divider_ratios, i32 0, i32 %i.0138, i32 1
  %33 = ptrtoint ptr %denominator to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %denominator, align 2
  %conv49 = sext i16 %34 to i32
  %mul50 = mul i32 %mul47, %conv49
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx48, align 2
  %conv52 = sext i16 %36 to i32
  %mul53 = mul nsw i32 %conv52, 2046
  %div = sdiv i32 %mul50, %mul53
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.default, %if.else39, %if.else
  %sub.sink = phi i32 [ %sub, %if.else ], [ %sub41, %if.else39 ], [ %div, %sw.default ]
  %37 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.sink, ptr %arrayidx116, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end.for.inc_crit_edge
  %count.1 = add i32 %count.0137, 1
  %add55 = add i32 %i.0138, 1
  %call56 = call i32 @_find_next_bit_be(ptr noundef nonnull %channels.addr, i32 noundef 16, i32 noundef %add55) #6
  %cmp = icmp slt i32 %call56, 16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.sink.split:                               ; preds = %do.end36, %do.end19, %do.end
  %arrayidx116156.sink = phi ptr [ %arrayidx116, %do.end36 ], [ %arrayidx116, %do.end19 ], [ %arrayidx, %do.end ]
  %38 = ptrtoint ptr %arrayidx116156.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx116156.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %39, %cleanup.sink.split ], [ %count.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__initcall__kmod_twl4030_madc__289_933_twl4030_madc_driver_init6, !1, !"__initcall__kmod_twl4030_madc__289_933_twl4030_madc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 933, i32 1}
!2 = !{ptr @__exitcall_twl4030_madc_driver_exit, !1, !"__exitcall_twl4030_madc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 935, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 936, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author293, !9, !"__UNIQUE_ID_author293", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 937, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 938, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 928, i32 14}
!14 = !{ptr @twl4030_madc_driver, !15, !"twl4030_madc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 924, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 761, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @twl4030_madc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @twl4030_madc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 767, i32 3}
!26 = !{ptr @twl4030_madc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @twl4030_madc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 789, i32 12}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 806, i32 3}
!32 = !{ptr @twl4030_madc_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @twl4030_madc_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 814, i32 3}
!36 = !{ptr @twl4030_madc_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @twl4030_madc_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 822, i32 3}
!40 = !{ptr @twl4030_madc_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @twl4030_madc_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 829, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @twl4030_madc_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @twl4030_madc_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 834, i32 4}
!49 = !{ptr @twl4030_madc_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @twl4030_madc_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @twl4030_madc_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 841, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 849, i32 3}
!56 = !{ptr @twl4030_madc_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @twl4030_madc_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 858, i32 3}
!60 = !{ptr @twl4030_madc_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @twl4030_madc_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 866, i32 3}
!64 = !{ptr @twl4030_madc_probe._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @twl4030_madc_probe._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 872, i32 47}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 880, i32 3}
!70 = !{ptr @twl4030_madc_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @twl4030_madc_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 886, i32 3}
!74 = !{ptr @twl4030_madc_probe._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @twl4030_madc_probe._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @twl4030_madc_iio_info, !77, !"twl4030_madc_iio_info", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 199, i32 30}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 632, i32 3}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @twl4030_madc_conversion._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @twl4030_madc_conversion._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 641, i32 4}
!85 = !{ptr @twl4030_madc_conversion._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @twl4030_madc_conversion._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @twl4030_conversion_methods, !88, !"twl4030_conversion_methods", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 281, i32 45}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 560, i32 3}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @twl4030_madc_start_conversion._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @twl4030_madc_start_conversion._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 588, i32 4}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @twl4030_madc_wait_conversion_ready._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @twl4030_madc_wait_conversion_ready._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 597, i32 2}
!101 = !{ptr @twl4030_madc_wait_conversion_ready._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @twl4030_madc_wait_conversion_ready._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 392, i32 4}
!105 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @twl4030_madc_read_channels._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @twl4030_madc_read_channels._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 404, i32 5}
!110 = !{ptr @twl4030_madc_read_channels._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @twl4030_madc_read_channels._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 414, i32 5}
!114 = !{ptr @twl4030_madc_read_channels._entry.60, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @twl4030_madc_read_channels._entry_ptr.62, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 318, i32 3}
!118 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @twl4030_madc_channel_raw_read._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @twl4030_madc_channel_raw_read._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @twl4030_therm_tbl, !122, !"twl4030_therm_tbl", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 261, i32 12}
!123 = !{ptr @twl4030_divider_ratios, !124, !"twl4030_divider_ratios", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 240, i32 1}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 214, i32 2}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 215, i32 2}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 216, i32 2}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 217, i32 2}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 218, i32 2}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 219, i32 2}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 220, i32 2}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 221, i32 2}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 222, i32 2}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 223, i32 2}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 224, i32 2}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 225, i32 2}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 226, i32 2}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 227, i32 2}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 228, i32 2}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 229, i32 2}
!157 = !{ptr @twl4030_madc_iio_channels, !158, !"twl4030_madc_iio_channels", i1 false, i1 false}
!158 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 213, i32 35}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 730, i32 3}
!161 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @twl4030_madc_set_power._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @twl4030_madc_set_power._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 740, i32 3}
!166 = !{ptr @twl4030_madc_set_power._entry.83, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @twl4030_madc_set_power._entry_ptr.85, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 694, i32 3}
!170 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @twl4030_madc_set_current_generator._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @twl4030_madc_set_current_generator._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 708, i32 3}
!175 = !{ptr @twl4030_madc_set_current_generator._entry.88, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @twl4030_madc_set_current_generator._entry_ptr.90, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 481, i32 3}
!179 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @twl4030_madc_threaded_irq_handler._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @twl4030_madc_threaded_irq_handler._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 487, i32 3}
!184 = !{ptr @twl4030_madc_threaded_irq_handler._entry.93, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @twl4030_madc_threaded_irq_handler._entry_ptr.95, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 497, i32 4}
!188 = !{ptr @twl4030_madc_threaded_irq_handler.__UNIQUE_ID_ddebug288, !187, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 455, i32 3}
!191 = !{ptr @twl4030_madc_disable_irq._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @twl4030_madc_disable_irq._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 462, i32 3}
!195 = !{ptr @twl4030_madc_disable_irq._entry.98, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @twl4030_madc_disable_irq._entry_ptr.100, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @twl4030_madc, !198, !"twl4030_madc", i1 false, i1 false}
!198 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 232, i32 34}
!199 = !{ptr @twl_madc_of_match, !200, !"twl_madc_of_match", i1 false, i1 false}
!200 = !{!"../drivers/iio/adc/twl4030-madc.c", i32 917, i32 34}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"auto-init"}
!211 = !{i64 2148301258, i64 2148301263, i64 2148301276, i64 2148301320, i64 2148301354, i64 2148301375}
!212 = !{i8 0, i8 2}
