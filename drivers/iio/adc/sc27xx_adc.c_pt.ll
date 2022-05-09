; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/sc27xx_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/sc27xx_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.sc27xx_adc_linear_graph = type { i32, i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.sc27xx_adc_data = type { ptr, ptr, ptr, [32 x i32], i32, i32 }

@__initcall__kmod_sc27xx_adc__185_562_sc27xx_adc_driver_init6 = internal global ptr @sc27xx_adc_driver_init, section ".initcall6.init", align 4
@sc27xx_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc27xx_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc27xx_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc27xx_adc_driver_exit = internal global ptr @sc27xx_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author186 = internal constant [59 x i8] c"sc27xx_adc.author=Freeman Liu <freeman.liu@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [52 x i8] c"sc27xx_adc.description=Spreadtrum SC27XX ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [43 x i8] c"sc27xx_adc.file=drivers/iio/adc/sc27xx_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [26 x i8] c"sc27xx_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sc27xx-adc\00", [21 x i8] zeroinitializer }, align 32
@sc27xx_adc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get ADC regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc27xx_adc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/sc27xx_adc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry_ptr = internal global ptr @sc27xx_adc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get ADC base address\0A\00", [32 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry_ptr.9 = internal global ptr @sc27xx_adc_probe._entry.7, section ".printk_index", align 4
@sc27xx_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get hwspinlock id\0A\00", [35 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry_ptr.12 = internal global ptr @sc27xx_adc_probe._entry.10, section ".printk_index", align 4
@sc27xx_adc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request hwspinlock\0A\00", [34 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry_ptr.15 = internal global ptr @sc27xx_adc_probe._entry.13, section ".printk_index", align 4
@sc27xx_adc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable ADC module\0A\00", [35 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry_ptr.18 = internal global ptr @sc27xx_adc_probe._entry.16, section ".printk_index", align 4
@sc27xx_adc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add ADC disable action\0A\00", [62 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry_ptr.21 = internal global ptr @sc27xx_adc_probe._entry.19, section ".printk_index", align 4
@sc27xx_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @sc27xx_adc_read_raw, ptr null, ptr null, ptr @sc27xx_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sc27xx_channels = internal constant { [32 x %struct.iio_chan_spec], [704 x i8] } { [32 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 17, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 18, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 19, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 20, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 21, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 22, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 23, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 24, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 25, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 26, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 27, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 28, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 29, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 30, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 31, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }], [704 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not register iio (ADC)\00", [35 x i8] zeroinitializer }, align 32
@sc27xx_adc_probe._entry_ptr.24 = internal global ptr @sc27xx_adc_probe._entry.22, section ".printk_index", align 4
@big_scale_graph = internal global { %struct.sc27xx_adc_linear_graph, [16 x i8] } { %struct.sc27xx_adc_linear_graph { i32 4200, i32 3310, i32 3600, i32 2832 }, [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"big_scale_calib\00", [16 x i8] zeroinitializer }, align 32
@small_scale_graph = internal global { %struct.sc27xx_adc_linear_graph, [16 x i8] } { %struct.sc27xx_adc_linear_graph { i32 1000, i32 3413, i32 100, i32 341 }, [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"small_scale_calib\00", [46 x i8] zeroinitializer }, align 32
@sc27xx_adc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout to get the hwspinlock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sc27xx_adc_read\00", [16 x i8] zeroinitializer }, align 32
@sc27xx_adc_read._entry_ptr = internal global ptr @sc27xx_adc_read._entry, section ".printk_index", align 4
@sc27xx_adc_read._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"read adc timeout, status = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@sc27xx_adc_read._entry_ptr.31 = internal global ptr @sc27xx_adc_read._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CH##index\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 19]
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"sc27xx_adc_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 554, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 557, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"sc27xx_adc_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 548, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 496, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 500, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 502, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 512, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 518, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 526, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 532, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"sc27xx_info\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 383, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"sc27xx_channels\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 396, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 543, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"big_scale_graph\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 96, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 135, i32 15 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"small_scale_graph\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 101, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 139, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 196, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 239, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [32 x i8] c"../drivers/iio/adc/sc27xx_adc.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 397, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_sc27xx_adc_driver_exit, ptr @__initcall__kmod_sc27xx_adc__185_562_sc27xx_adc_driver_init6, ptr @sc27xx_adc_driver_exit, ptr @sc27xx_adc_probe._entry, ptr @sc27xx_adc_probe._entry.10, ptr @sc27xx_adc_probe._entry.13, ptr @sc27xx_adc_probe._entry.16, ptr @sc27xx_adc_probe._entry.19, ptr @sc27xx_adc_probe._entry.22, ptr @sc27xx_adc_probe._entry.7, ptr @sc27xx_adc_probe._entry_ptr, ptr @sc27xx_adc_probe._entry_ptr.12, ptr @sc27xx_adc_probe._entry_ptr.15, ptr @sc27xx_adc_probe._entry_ptr.18, ptr @sc27xx_adc_probe._entry_ptr.21, ptr @sc27xx_adc_probe._entry_ptr.24, ptr @sc27xx_adc_probe._entry_ptr.9, ptr @sc27xx_adc_read._entry, ptr @sc27xx_adc_read._entry.29, ptr @sc27xx_adc_read._entry_ptr, ptr @sc27xx_adc_read._entry_ptr.31, ptr @sc27xx_adc_driver, ptr @.str, ptr @sc27xx_adc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @sc27xx_info, ptr @sc27xx_channels, ptr @.str.23, ptr @big_scale_graph, ptr @.str.25, ptr @small_scale_graph, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_channels to i32), i32 2816, i32 3520, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @big_scale_graph to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @small_scale_graph to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_adc_read._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc27xx_adc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc27xx_adc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 148) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call3 = tail call ptr @dev_get_regmap(ptr noundef %5, ptr noundef null) #7
  %regmap = getelementptr inbounds %struct.sc27xx_adc_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %regmap, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end7

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.sc27xx_adc_data, ptr %3, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %base, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool9.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool9.not, label %if.end14, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end7
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.sc27xx_adc_data, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call15, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @of_hwspin_lock_get_id(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup.sink.split_crit_edge, label %if.end26

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end19
  %call27 = tail call ptr @devm_hwspin_lock_request_specific(ptr noundef %dev1, i32 noundef %call20) #7
  %hwlock = getelementptr inbounds %struct.sc27xx_adc_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27, ptr %hwlock, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end26.cleanup.sink.split_crit_edge, label %if.end34

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end26
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %3, align 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i.i105 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 3080, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool.not.i = icmp eq i32 %call.i.i105, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end34.cleanup.sink.split_crit_edge

if.end34.cleanup.sink.split_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end34
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 3088, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool3.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup.sink.split.sink.split_crit_edge

if.end.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call fastcc i32 @sc27xx_adc_scale_calibration(ptr noundef %3, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end5.i.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call fastcc i32 @sc27xx_adc_scale_calibration(ptr noundef %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end42, label %if.end9.i.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end9.i.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.end42:                                         ; preds = %if.end9.i
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @sc27xx_adc_disable, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i106 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i106, label %if.end49, label %if.end42.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end42.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.end49:                                         ; preds = %if.end42
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i108 = icmp eq ptr %15, null
  br i1 %tobool.not.i108, label %if.end.i109, label %if.end49.dev_name.exit_crit_edge

if.end49.dev_name.exit_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i109:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i109, %if.end49.dev_name.exit_crit_edge
  %retval.0.i110 = phi ptr [ %17, %if.end.i109 ], [ %15, %if.end49.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i110, ptr %name, align 8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sc27xx_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sc27xx_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %22 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %num_channels, align 4
  %call51 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %dev_name.exit.cleanup_crit_edge, label %dev_name.exit.cleanup.sink.split_crit_edge

dev_name.exit.cleanup.sink.split_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.end42.cleanup.sink.split.sink.split.sink.split_crit_edge, %if.end9.i.cleanup.sink.split.sink.split.sink.split_crit_edge, %if.end5.i.cleanup.sink.split.sink.split.sink.split_crit_edge
  %.str.23.sink.ph.ph = phi ptr [ @.str.17, %if.end9.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ @.str.17, %if.end5.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ @.str.20, %if.end42.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %call10.i, %if.end9.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %call6.i, %if.end5.i.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %call.i, %if.end42.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3088, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.i.cleanup.sink.split.sink.split_crit_edge
  %.str.23.sink.ph = phi ptr [ @.str.17, %if.end.i.cleanup.sink.split.sink.split_crit_edge ], [ %.str.23.sink.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %call.i28.i, %if.end.i.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 3080, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %dev_name.exit.cleanup.sink.split_crit_edge, %if.end34.cleanup.sink.split_crit_edge, %if.end26.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.1, %if.end.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end7.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end19.cleanup.sink.split_crit_edge ], [ @.str.14, %if.end26.cleanup.sink.split_crit_edge ], [ @.str.17, %if.end34.cleanup.sink.split_crit_edge ], [ @.str.23, %dev_name.exit.cleanup.sink.split_crit_edge ], [ %.str.23.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -19, %if.end.cleanup.sink.split_crit_edge ], [ %call.i.i, %if.end7.cleanup.sink.split_crit_edge ], [ %call20, %if.end19.cleanup.sink.split_crit_edge ], [ -6, %if.end26.cleanup.sink.split_crit_edge ], [ %call.i.i105, %if.end34.cleanup.sink.split_crit_edge ], [ %call51, %dev_name.exit.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.23.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dev_name.exit.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_hwspin_lock_get_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwspin_lock_request_specific(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_adc_disable(ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.sc27xx_adc_data, ptr %_data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3088, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3080, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_adc_scale_calibration(ptr nocapture noundef readonly %data, i1 noundef zeroext %big_scale) unnamed_addr #2 align 64 {
entry:
  %calib_data = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calib_data)
  %0 = ptrtoint ptr %calib_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %calib_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !86
  %.str.25..str.26 = select i1 %big_scale, ptr @.str.25, ptr @.str.26
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call ptr @nvmem_cell_get(ptr noundef %3, ptr noundef nonnull %.str.25..str.26) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = call ptr @nvmem_cell_read(ptr noundef %call, ptr noundef nonnull %len) #7
  call void @nvmem_cell_put(ptr noundef %call) #7
  %cmp.i31 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 4)
  %9 = call ptr @memcpy(ptr %calib_data, ptr %call5, i32 %8)
  %10 = ptrtoint ptr %calib_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %calib_data.0.calib_data.0.calib_data.0. = load i32, ptr %calib_data, align 4
  %11 = select i1 %big_scale, i32 856, i32 833
  %and.i = and i32 %calib_data.0.calib_data.0.calib_data.0., 255
  %add.i = add nuw nsw i32 %and.i, %11
  %sub.i = shl nuw nsw i32 %add.i, 2
  %mul.i = add nsw i32 %sub.i, -512
  %adc011 = select i1 %big_scale, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @big_scale_graph, i32 0, i32 1), ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 1)
  %12 = ptrtoint ptr %adc011 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %adc011, align 4
  %shr = lshr i32 %calib_data.0.calib_data.0.calib_data.0., 8
  %13 = select i1 %big_scale, i32 733, i32 80
  %and.i32 = and i32 %shr, 255
  %add.i33 = add nuw nsw i32 %and.i32, %13
  %sub.i34 = shl nuw nsw i32 %add.i33, 2
  %mul.i35 = add nsw i32 %sub.i34, -512
  %adc113 = select i1 %big_scale, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @big_scale_graph, i32 0, i32 3), ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 3)
  %14 = ptrtoint ptr %adc113 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i35, ptr %adc113, align 4
  call void @kfree(ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then2
  %retval.0 = phi i32 [ %4, %if.then2 ], [ %5, %if.then7 ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calib_data)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_adc_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %raw_adc.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.sc27xx_adc_data, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp, align 4, !annotation !86
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #7
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %call2 = call fastcc i32 @sc27xx_adc_read(ptr noundef %1, i32 noundef %9, i32 noundef %5, ptr noundef nonnull %tmp)
  tail call void @mutex_unlock(ptr noundef %mlock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %mlock5 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock5, i32 noundef 0) #7
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_adc.i) #7
  %15 = ptrtoint ptr %raw_adc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %raw_adc.i, align 4, !annotation !86
  %call.i = call fastcc i32 @sc27xx_adc_read(ptr noundef %1, i32 noundef %14, i32 noundef %5, ptr noundef nonnull %raw_adc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sc27xx_adc_read_processed.exit

if.end.i:                                         ; preds = %sw.bb4
  %16 = ptrtoint ptr %raw_adc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raw_adc.i, align 4
  %18 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %14, label %sw.default.i.i [
    i32 5, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load i32, ptr @big_scale_graph, align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @big_scale_graph, i32 0, i32 2), align 4
  %sub.i.i.i = sub i32 %19, %20
  %21 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @big_scale_graph, i32 0, i32 3), align 4
  %sub1.i.i.i = sub i32 %17, %21
  %mul.i.i.i = mul i32 %sub1.i.i.i, %sub.i.i.i
  %22 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @big_scale_graph, i32 0, i32 1), align 4
  %sub3.i.i.i = sub i32 %22, %21
  %div.i.i.i = sdiv i32 %mul.i.i.i, %sub3.i.i.i
  %add.i.i.i = add i32 %div.i.i.i, %20
  %23 = tail call i32 @llvm.smax.i32(i32 %add.i.i.i, i32 0) #7
  br label %if.end11

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = load i32, ptr @small_scale_graph, align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 2), align 4
  %sub.i2.i.i = sub i32 %24, %25
  %26 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 3), align 4
  %sub1.i3.i.i = sub i32 %17, %26
  %mul.i4.i.i = mul i32 %sub1.i3.i.i, %sub.i2.i.i
  %27 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 1), align 4
  %sub3.i5.i.i = sub i32 %27, %26
  %div.i6.i.i = sdiv i32 %mul.i4.i.i, %sub3.i5.i.i
  %add.i7.i.i = add i32 %div.i6.i.i, %25
  %28 = tail call i32 @llvm.smax.i32(i32 %add.i7.i.i, i32 0) #7
  br label %if.end11

sw.default.i.i:                                   ; preds = %if.end.i
  %29 = load i32, ptr @small_scale_graph, align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 2), align 4
  %sub.i8.i.i = sub i32 %29, %30
  %31 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 3), align 4
  %sub1.i9.i.i = sub i32 %17, %31
  %mul.i10.i.i = mul i32 %sub1.i9.i.i, %sub.i8.i.i
  %32 = load i32, ptr getelementptr inbounds (%struct.sc27xx_adc_linear_graph, ptr @small_scale_graph, i32 0, i32 1), align 4
  %sub3.i11.i.i = sub i32 %32, %31
  %div.i12.i.i = sdiv i32 %mul.i10.i.i, %sub3.i11.i.i
  %add.i13.i.i = add i32 %div.i12.i.i, %30
  %33 = tail call i32 @llvm.smax.i32(i32 %add.i13.i.i, i32 0) #7
  %34 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %14, label %sw.default.i.i.i.i [
    i32 19, label %sw.bb6.i.i.i.i
    i32 2, label %sw.default.i.i.sw.bb.i.i.i.i_crit_edge
    i32 3, label %sw.default.i.i.sw.bb.i.i.i.i_crit_edge31
    i32 4, label %sw.default.i.i.sw.bb.i.i.i.i_crit_edge32
    i32 8, label %sw.default.i.i.sw.bb3.i.i.i.i_crit_edge
    i32 6, label %sw.default.i.i.sc27xx_adc_volt_ratio.exit.i.i_crit_edge
    i32 7, label %sw.default.i.i.sw.bb3.i.i.i.i_crit_edge33
  ]

sw.default.i.i.sw.bb3.i.i.i.i_crit_edge33:        ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i.i.i

sw.default.i.i.sc27xx_adc_volt_ratio.exit.i.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_adc_volt_ratio.exit.i.i

sw.default.i.i.sw.bb3.i.i.i.i_crit_edge:          ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i.i.i

sw.default.i.i.sw.bb.i.i.i.i_crit_edge32:         ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i.i

sw.default.i.i.sw.bb.i.i.i.i_crit_edge31:         ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i.i

sw.default.i.i.sw.bb.i.i.i.i_crit_edge:           ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %sw.default.i.i.sw.bb.i.i.i.i_crit_edge, %sw.default.i.i.sw.bb.i.i.i.i_crit_edge31, %sw.default.i.i.sw.bb.i.i.i.i_crit_edge32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i.i = icmp eq i32 %5, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 65537, i32 26215425
  br label %sc27xx_adc_volt_ratio.exit.i.i

sw.bb3.i.i.i.i:                                   ; preds = %sw.default.i.i.sw.bb3.i.i.i.i_crit_edge, %sw.default.i.i.sw.bb3.i.i.i.i_crit_edge33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i.i.i.i = icmp eq i32 %5, 0
  %cond5.i.i.i.i = select i1 %tobool4.not.i.i.i.i, i32 65537, i32 6553725
  br label %sc27xx_adc_volt_ratio.exit.i.i

sw.bb6.i.i.i.i:                                   ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_adc_volt_ratio.exit.i.i

sw.default.i.i.i.i:                               ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sc27xx_adc_volt_ratio.exit.i.i

sc27xx_adc_volt_ratio.exit.i.i:                   ; preds = %sw.default.i.i.i.i, %sw.bb6.i.i.i.i, %sw.bb3.i.i.i.i, %sw.bb.i.i.i.i, %sw.default.i.i.sc27xx_adc_volt_ratio.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 65537, %sw.default.i.i.i.i ], [ 65539, %sw.bb6.i.i.i.i ], [ %cond5.i.i.i.i, %sw.bb3.i.i.i.i ], [ %cond.i.i.i.i, %sw.bb.i.i.i.i ], [ 24585000, %sw.default.i.i.sc27xx_adc_volt_ratio.exit.i.i_crit_edge ]
  %shr.i.i.i = lshr i32 %retval.0.i.i.i.i, 16
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 10111
  %mul.i.i = mul i32 %and.i.i.i, %33
  %div1.i.i = lshr i32 %retval.0.i.i.i.i, 17
  %add.i.i = add i32 %mul.i.i, %div1.i.i
  %div4.i.i = udiv i32 %add.i.i, %shr.i.i.i
  br label %if.end11

sc27xx_adc_read_processed.exit:                   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_adc.i) #7
  tail call void @mutex_unlock(ptr noundef %mlock5) #7
  br label %cleanup

if.end11:                                         ; preds = %sc27xx_adc_volt_ratio.exit.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %div4.i.i, %sc27xx_adc_volt_ratio.exit.i.i ], [ %28, %sw.bb1.i.i ], [ %23, %sw.bb.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_adc.i) #7
  tail call void @mutex_unlock(ptr noundef %mlock5) #7
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %5, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %if.end11, %sc27xx_adc_read_processed.exit, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb12 ], [ 1, %if.end11 ], [ 1, %if.end ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call.i, %sc27xx_adc_read_processed.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sc27xx_adc_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.sc27xx_adc_data, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %val, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_adc_read(ptr nocapture noundef readonly %data, i32 noundef %channel, i32 noundef %scale, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %status, align 4, !annotation !86
  %hwlock = getelementptr inbounds %struct.sc27xx_adc_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwlock, align 4
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef %3, i32 noundef 5000, i32 noundef 3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.sc27xx_adc_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.sc27xx_adc_data, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %call.i144 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool2.not = icmp eq i32 %call.i144, 0
  br i1 %tobool2.not, label %if.end4, label %unlock_adc.thread

unlock_adc.thread:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwlock, align 4
  tail call void @__hwspin_unlock(ptr noundef %11, i32 noundef 3, ptr noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  %add7 = add i32 %15, 84
  %call.i145 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add7, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool9.not = icmp eq i32 %call.i145, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.unlock_adc_crit_edge

if.end4.unlock_adc_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_adc

if.end11:                                         ; preds = %if.end4
  %shl = shl i32 %scale, 8
  %and = and i32 %shl, 1792
  %and12 = and i32 %channel, 31
  %or = or i32 %and, %and12
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %add15 = add i32 %19, 4
  %call.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add15, i32 noundef 1823, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool17.not = icmp eq i32 %call.i146, 0
  br i1 %tobool17.not, label %if.end19, label %if.end11.unlock_adc_crit_edge

if.end11.unlock_adc_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_adc

if.end19:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base, align 4
  %call.i147 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef 244, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool25.not = icmp eq i32 %call.i147, 0
  br i1 %tobool25.not, label %if.end27, label %if.end19.unlock_adc_crit_edge

if.end19.unlock_adc_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_adc

if.end27:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base, align 4
  %call.i148 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %27, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool32.not = icmp eq i32 %call.i148, 0
  br i1 %tobool32.not, label %if.end34, label %if.end27.unlock_adc_crit_edge

if.end27.unlock_adc_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_adc

if.end34:                                         ; preds = %if.end27
  %call35 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call35, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 237) #7
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base, align 4
  %add50163 = add i32 %31, 92
  %call51164 = call i32 @regmap_read(ptr noundef %29, i32 noundef %add50163, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51164)
  %tobool52.not165 = icmp eq i32 %call51164, 0
  br i1 %tobool52.not165, label %if.end34.lor.lhs.false_crit_edge, label %if.end34.do.end82_crit_edge

if.end34.do.end82_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

if.end34.lor.lhs.false_crit_edge:                 ; preds = %if.end34
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then68.lor.lhs.false_crit_edge, %if.end34.lor.lhs.false_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %and53 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call58 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call58, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call58, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then68

if.then68:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #7
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %add50 = add i32 %37, 92
  %call51 = call i32 @regmap_read(ptr noundef %35, i32 noundef %add50, ptr noundef nonnull %status) #7
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then68.lor.lhs.false_crit_edge, label %if.then68.do.end82_crit_edge

if.then68.do.end82_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

if.then68.lor.lhs.false_crit_edge:                ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base, align 4
  %add64 = add i32 %41, 92
  %call65 = call i32 @regmap_read(ptr noundef %39, i32 noundef %add64, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool72.not = icmp eq i32 %call65, 0
  br i1 %tobool72.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end82_crit_edge

for.end.do.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %and73 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %lor.rhs.do.end82_crit_edge, label %if.end84

lor.rhs.do.end82_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

do.end82:                                         ; preds = %lor.rhs.do.end82_crit_edge, %for.end.do.end82_crit_edge, %if.then68.do.end82_crit_edge, %if.end34.do.end82_crit_edge
  %tobool72.not154.ph = phi i32 [ %call51164, %if.end34.do.end82_crit_edge ], [ %call65, %for.end.do.end82_crit_edge ], [ -110, %lor.rhs.do.end82_crit_edge ], [ %call51, %if.then68.do.end82_crit_edge ]
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.30, i32 noundef %47) #10
  br label %unlock_adc

if.end84:                                         ; preds = %lor.rhs
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base, align 4
  %add87 = add i32 %51, 76
  %call88 = call i32 @regmap_read(ptr noundef %49, i32 noundef %add87, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end84.unlock_adc_crit_edge

if.end84.unlock_adc_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_adc

if.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value, align 4
  %and92 = and i32 %53, 4095
  store i32 %and92, ptr %value, align 4
  br label %unlock_adc

unlock_adc:                                       ; preds = %if.end91, %if.end84.unlock_adc_crit_edge, %do.end82, %if.end27.unlock_adc_crit_edge, %if.end19.unlock_adc_crit_edge, %if.end11.unlock_adc_crit_edge, %if.end4.unlock_adc_crit_edge
  %ret.0 = phi i32 [ %call.i145, %if.end4.unlock_adc_crit_edge ], [ %call.i146, %if.end11.unlock_adc_crit_edge ], [ %call.i147, %if.end19.unlock_adc_crit_edge ], [ %call.i148, %if.end27.unlock_adc_crit_edge ], [ %tobool72.not154.ph, %do.end82 ], [ %call88, %if.end84.unlock_adc_crit_edge ], [ 0, %if.end91 ]
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base, align 4
  %call.i149 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %57, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %58 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hwlock, align 4
  call void @__hwspin_unlock(ptr noundef %59, i32 noundef 3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool98.not = icmp eq i32 %ret.0, 0
  br i1 %tobool98.not, label %if.then99, label %unlock_adc.cleanup_crit_edge

unlock_adc.cleanup_crit_edge:                     ; preds = %unlock_adc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then99:                                        ; preds = %unlock_adc
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %value, align 4
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %unlock_adc.cleanup_crit_edge, %unlock_adc.thread, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then99 ], [ %ret.0, %unlock_adc.cleanup_crit_edge ], [ %call.i144, %unlock_adc.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwspin_lock_timeout(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hwspin_unlock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_sc27xx_adc__185_562_sc27xx_adc_driver_init6, !1, !"__initcall__kmod_sc27xx_adc__185_562_sc27xx_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 562, i32 1}
!2 = !{ptr @__exitcall_sc27xx_adc_driver_exit, !1, !"__exitcall_sc27xx_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author186, !4, !"__UNIQUE_ID_author186", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 564, i32 1}
!5 = !{ptr @__UNIQUE_ID_description187, !6, !"__UNIQUE_ID_description187", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 565, i32 1}
!7 = !{ptr @__UNIQUE_ID_file188, !8, !"__UNIQUE_ID_file188", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 566, i32 1}
!9 = !{ptr @__UNIQUE_ID_license189, !8, !"__UNIQUE_ID_license189", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 557, i32 11}
!12 = !{ptr @sc27xx_adc_driver, !13, !"sc27xx_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 554, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 496, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sc27xx_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sc27xx_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 500, i32 33}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 502, i32 3}
!26 = !{ptr @sc27xx_adc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sc27xx_adc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 512, i32 3}
!30 = !{ptr @sc27xx_adc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sc27xx_adc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 518, i32 3}
!34 = !{ptr @sc27xx_adc_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sc27xx_adc_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 526, i32 3}
!38 = !{ptr @sc27xx_adc_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sc27xx_adc_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 532, i32 3}
!42 = !{ptr @sc27xx_adc_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sc27xx_adc_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 543, i32 3}
!46 = !{ptr @sc27xx_adc_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sc27xx_adc_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 135, i32 15}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 139, i32 15}
!52 = distinct !{null, !53, !"big_scale_graph_calib", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 106, i32 45}
!54 = !{ptr @big_scale_graph, !55, !"big_scale_graph", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 96, i32 39}
!56 = distinct !{null, !57, !"small_scale_graph_calib", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 111, i32 45}
!58 = !{ptr @small_scale_graph, !59, !"small_scale_graph", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 101, i32 39}
!60 = !{ptr @sc27xx_info, !61, !"sc27xx_info", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 383, i32 30}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 196, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sc27xx_adc_read._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sc27xx_adc_read._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 239, i32 3}
!69 = !{ptr @sc27xx_adc_read._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sc27xx_adc_read._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 397, i32 2}
!73 = !{ptr @sc27xx_channels, !74, !"sc27xx_channels", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 396, i32 35}
!75 = !{ptr @sc27xx_adc_of_match, !76, !"sc27xx_adc_of_match", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/sc27xx_adc.c", i32 548, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
