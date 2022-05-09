; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/mxs-lradc-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/mxs-lradc-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.45, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.45 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mxs_lradc_adc = type { ptr, ptr, ptr, [4 x i8], [10 x i32], ptr, %struct.completion, %struct.spinlock, ptr, [16 x [2 x %struct.mxs_lradc_scale]], i32 }
%struct.mxs_lradc_scale = type { i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.mxs_lradc = type { i32, ptr, i8, i32, i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_mxs_lradc_adc__187_830_mxs_lradc_adc_driver_init6 = internal global ptr @mxs_lradc_adc_driver_init, section ".initcall6.init", align 4
@mxs_lradc_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_lradc_adc_probe, ptr @mxs_lradc_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_lradc_adc_driver_exit = internal global ptr @mxs_lradc_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [49 x i8] c"mxs_lradc_adc.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [80 x i8] c"mxs_lradc_adc.description=Freescale MXS LRADC driver general purpose ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [49 x i8] c"mxs_lradc_adc.file=drivers/iio/adc/mxs-lradc-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [26 x i8] c"mxs_lradc_adc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [43 x i8] c"mxs_lradc_adc.alias=platform:mxs-lradc-adc\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs-lradc-adc\00", [18 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxs_lradc_adc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/adc/mxs-lradc-adc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_probe._entry_ptr = internal global ptr @mxs_lradc_adc_probe._entry, section ".printk_index", align 4
@mxs_lradc_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mxs_lradc_adc_attribute_group, ptr @mxs_lradc_adc_read_raw, ptr null, ptr null, ptr @mxs_lradc_adc_write_raw, ptr null, ptr @mxs_lradc_adc_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mx23_lradc_chan_spec = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.31, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.33, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.34, i8 64 }, %struct.iio_chan_spec { i32 9, i32 8, i32 0, i32 0, i32 8, %struct.anon.45 { i8 117, i8 18, i8 32, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.35, i8 64 }, %struct.iio_chan_spec { i32 9, i32 9, i32 0, i32 0, i32 -1, %struct.anon.45 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.36, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.37, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.39, i8 64 }], [352 x i8] zeroinitializer }, align 32
@mx23_lradc_adc_irq_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [40 x i8] zeroinitializer }, align 32
@mx28_lradc_chan_spec = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.31, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.46, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.34, i8 64 }, %struct.iio_chan_spec { i32 9, i32 8, i32 0, i32 0, i32 8, %struct.anon.45 { i8 117, i8 18, i8 32, i8 0, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.35, i8 64 }, %struct.iio_chan_spec { i32 9, i32 9, i32 0, i32 0, i32 -1, %struct.anon.45 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.33, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.48, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.49, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.45 { i8 117, i8 12, i8 32, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.39, i8 64 }], [352 x i8] zeroinitializer }, align 32
@mx28_lradc_adc_irq_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.52, ptr @.str.53], [56 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @mxs_lradc_adc_buffer_preenable, ptr null, ptr null, ptr @mxs_lradc_adc_buffer_postdisable, ptr @mxs_lradc_adc_validate_scan_mask }, [44 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_vref_mv = internal constant { [2 x [16 x i32]], [32 x i8] } { [2 x [16 x i32]] [[16 x i32] [i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 3700, i32 7400, i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 7400], [16 x i32] [i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 1850, i32 7400, i32 1850, i32 1850, i32 3700, i32 1850, i32 3700, i32 1850, i32 1850, i32 7400]], [32 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 796, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_probe._entry_ptr.9 = internal global ptr @mxs_lradc_adc_probe._entry.7, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mxs_lradc_adc_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_attributes = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @iio_dev_attr_in_voltage0_scale_available, ptr @iio_dev_attr_in_voltage1_scale_available, ptr @iio_dev_attr_in_voltage2_scale_available, ptr @iio_dev_attr_in_voltage3_scale_available, ptr @iio_dev_attr_in_voltage4_scale_available, ptr @iio_dev_attr_in_voltage5_scale_available, ptr @iio_dev_attr_in_voltage6_scale_available, ptr @iio_dev_attr_in_voltage7_scale_available, ptr @iio_dev_attr_in_voltage10_scale_available, ptr @iio_dev_attr_in_voltage11_scale_available, ptr @iio_dev_attr_in_voltage12_scale_available, ptr @iio_dev_attr_in_voltage13_scale_available, ptr @iio_dev_attr_in_voltage14_scale_available, ptr @iio_dev_attr_in_voltage15_scale_available, ptr null], [36 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage0_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage1_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage2_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 2, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage3_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 3, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage4_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 4, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage5_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 5, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage6_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 6, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage7_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 7, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage10_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 10, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage11_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 11, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage12_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 12, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage13_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 13, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage14_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 14, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage15_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mxs_lradc_adc_show_scale_avail, ptr null }, i64 15, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage0_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%09u \00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage1_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage2_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage3_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage4_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage5_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage6_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage7_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_voltage10_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_voltage11_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_voltage12_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_voltage13_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_voltage14_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_voltage15_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LRADC0\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LRADC1\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LRADC2\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LRADC3\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LRADC4\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LRADC5\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDIO\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VBATT\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEMP_DIE\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USB_DP\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USB_DN\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VBG\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDD5V\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel0\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel1\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel2\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel3\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel4\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs-lradc-channel5\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LRADC6\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VTH\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDDA\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDDD\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxs-lradc-thresh0\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxs-lradc-thresh1\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxs-lradc-button0\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxs-lradc-button1\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%i\00", [23 x i8] zeroinitializer }, align 32
@mxs_lradc_adc_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @mxs_lradc_adc_configure_trigger, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"mxs_lradc_adc_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 823, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 825, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 702, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 719, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"mxs_lradc_adc_iio_info\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 376, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"mx23_lradc_chan_spec\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 593, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"mx23_lradc_adc_irq_names\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 42, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"mx28_lradc_chan_spec\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 629, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"mx28_lradc_adc_irq_names\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 51, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"mxs_lradc_adc_buffer_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 570, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"mxs_lradc_adc_vref_mv\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 64, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 796, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 87, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [30 x i8] c"mxs_lradc_adc_attribute_group\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 372, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"mxs_lradc_adc_attributes\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 354, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage0_scale_available\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage1_scale_available\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage2_scale_available\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage3_scale_available\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage4_scale_available\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage5_scale_available\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage6_scale_available\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage7_scale_available\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_voltage10_scale_available\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_voltage11_scale_available\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_voltage12_scale_available\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_voltage13_scale_available\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_voltage14_scale_available\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_voltage15_scale_available\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 339, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 326, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 340, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 341, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 342, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 343, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 344, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 345, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 346, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 347, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 348, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 349, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 350, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 351, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 352, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 594, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 595, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 596, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 597, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 598, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 599, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 600, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 601, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 612, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 623, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 624, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 625, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 626, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 43, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 44, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 45, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 46, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 47, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 48, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 636, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 658, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 659, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 660, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 52, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 53, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 60, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 61, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 458, i32 43 }
@___asan_gen_.296 = private unnamed_addr constant [26 x i8] c"mxs_lradc_adc_trigger_ops\00", align 1
@___asan_gen_.297 = private constant [35 x i8] c"../drivers/iio/adc/mxs-lradc-adc.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 448, i32 37 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_mxs_lradc_adc_driver_exit, ptr @__initcall__kmod_mxs_lradc_adc__187_830_mxs_lradc_adc_driver_init6, ptr @mxs_lradc_adc_driver_exit, ptr @mxs_lradc_adc_probe._entry, ptr @mxs_lradc_adc_probe._entry.7, ptr @mxs_lradc_adc_probe._entry_ptr, ptr @mxs_lradc_adc_probe._entry_ptr.9, ptr @mxs_lradc_adc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mxs_lradc_adc_probe.__key, ptr @.str.6, ptr @mxs_lradc_adc_iio_info, ptr @mx23_lradc_chan_spec, ptr @mx23_lradc_adc_irq_names, ptr @mx28_lradc_chan_spec, ptr @mx28_lradc_adc_irq_names, ptr @mxs_lradc_adc_buffer_ops, ptr @mxs_lradc_adc_vref_mv, ptr @.str.8, ptr @init_completion.__key, ptr @.str.10, ptr @mxs_lradc_adc_attribute_group, ptr @mxs_lradc_adc_attributes, ptr @iio_dev_attr_in_voltage0_scale_available, ptr @iio_dev_attr_in_voltage1_scale_available, ptr @iio_dev_attr_in_voltage2_scale_available, ptr @iio_dev_attr_in_voltage3_scale_available, ptr @iio_dev_attr_in_voltage4_scale_available, ptr @iio_dev_attr_in_voltage5_scale_available, ptr @iio_dev_attr_in_voltage6_scale_available, ptr @iio_dev_attr_in_voltage7_scale_available, ptr @iio_dev_attr_in_voltage10_scale_available, ptr @iio_dev_attr_in_voltage11_scale_available, ptr @iio_dev_attr_in_voltage12_scale_available, ptr @iio_dev_attr_in_voltage13_scale_available, ptr @iio_dev_attr_in_voltage14_scale_available, ptr @iio_dev_attr_in_voltage15_scale_available, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @mxs_lradc_adc_trigger_ops], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx23_lradc_chan_spec to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx23_lradc_adc_irq_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx28_lradc_chan_spec to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx28_lradc_adc_irq_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_vref_mv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_attributes to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage0_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage1_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage2_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage3_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage4_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage5_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage6_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage7_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage10_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage11_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage12_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage13_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage14_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage15_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_lradc_adc_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_lradc_adc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_lradc_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_lradc_adc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 424) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %5, align 8
  %dev5 = getelementptr inbounds %struct.mxs_lradc_adc, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev5, align 4
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  %call11 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %9, i32 noundef %add.i) #9
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %base, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %completion = getelementptr inbounds %struct.mxs_lradc_adc, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.mxs_lradc_adc, ptr %5, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #9
  %lock = getelementptr inbounds %struct.mxs_lradc_adc, ptr %5, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mxs_lradc_adc_probe.__key, i16 noundef signext 3) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %name20 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %17 = ptrtoint ptr %name20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %name20, align 8
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %of_node23 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2, i32 27
  %22 = ptrtoint ptr %of_node23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %of_node23, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mxs_lradc_adc_iio_info, ptr %info, align 8
  %24 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %call2, align 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 7
  %25 = ptrtoint ptr %masklength to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %masklength, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  %mx28_lradc_chan_spec.sink = select i1 %cmp, ptr @mx23_lradc_chan_spec, ptr @mx28_lradc_chan_spec
  %n.0 = select i1 %cmp, i32 6, i32 10
  %irq_name.0 = select i1 %cmp, ptr @mx23_lradc_adc_irq_names, ptr @mx28_lradc_adc_irq_names
  %28 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mx28_lradc_chan_spec.sink, ptr %28, align 8
  %30 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %30, align 4
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %call29 = tail call i32 @stmp_reset_block(ptr noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end15.for.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

for.cond:                                         ; preds = %if.end37
  %inc = add nuw nsw i32 %i.0438, 1
  %exitcond.not = icmp eq i32 %inc, %n.0
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end15.for.body_crit_edge
  %i.0438 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %irq_name.0, i32 %i.0438
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %call34 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %for.body.cleanup_crit_edge, label %if.end37

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %for.body
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  %of_node39 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node39, align 8
  %call40 = tail call i32 @irq_of_parse_and_map(ptr noundef %39, i32 noundef %call34) #9
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call40, ptr noundef nonnull @mxs_lradc_adc_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef %35, ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %for.cond, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2
  %42 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name20, align 8
  %call1.i = tail call i32 @iio_device_id(ptr noundef nonnull %call2) #9
  %call2.i = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev.i, ptr noundef nonnull @.str.54, ptr noundef %43, i32 noundef %call1.i) #9
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.end.err_trig_crit_edge, label %if.end.i

for.end.err_trig_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_trig

if.end.i:                                         ; preds = %for.end
  %dev3.i = getelementptr inbounds %struct.mxs_lradc_adc, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev3.i, align 4
  %parent.i = getelementptr inbounds %struct.iio_trigger, ptr %call2.i, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call2.i, i32 0, i32 4, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call2, ptr %driver_data.i.i.i, align 4
  %48 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @mxs_lradc_adc_trigger_ops, ptr %call2.i, align 8
  %call5.i = tail call i32 @__iio_trigger_register(ptr noundef nonnull %call2.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end49, label %if.end.i.err_trig_crit_edge

if.end.i.err_trig_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_trig

if.end49:                                         ; preds = %if.end.i
  %trig9.i = getelementptr inbounds %struct.mxs_lradc_adc, ptr %41, i32 0, i32 5
  %49 = ptrtoint ptr %trig9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call2.i, ptr %trig9.i, align 8
  %call50 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call2, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @mxs_lradc_adc_trigger_handler, i32 noundef 0, ptr noundef nonnull @mxs_lradc_adc_buffer_ops, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 4
  %arrayidx55 = getelementptr [2 x [16 x i32]], ptr @mxs_lradc_adc_vref_mv, i32 0, i32 %51
  %vref_mv = getelementptr inbounds %struct.mxs_lradc_adc, ptr %5, i32 0, i32 8
  %52 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx55, ptr %vref_mv, align 8
  br label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond59.preheader.for.cond59.preheader_crit_edge, %if.end53
  %i.1440 = phi i32 [ 0, %if.end53 ], [ %inc266, %for.cond59.preheader.for.cond59.preheader_crit_edge ]
  %53 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vref_mv, align 8
  %arrayidx63 = getelementptr i32, ptr %54, i32 %i.1440
  %55 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx63, align 4
  %conv = zext i32 %56 to i64
  %mul = mul nuw nsw i64 %conv, 100000000
  %shr = lshr i64 %mul, 12
  %conv86 = trunc i64 %shr to i32
  %57 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %shr) #13, !srcloc !165
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %shr, i64 %57, i32 0) #13, !srcloc !166
  %asmresult10.i = extractvalue { i64, i32 } %58, 0
  %div233434 = lshr i64 %asmresult10.i, 26
  %conv234 = trunc i64 %div233434 to i32
  %mul235.neg = mul i32 %conv234, -100000000
  %sub236 = add i32 %mul235.neg, %conv86
  %mul255 = mul i32 %sub236, 10
  %arrayidx257 = getelementptr %struct.mxs_lradc_adc, ptr %5, i32 0, i32 9, i32 %i.1440, i32 0
  %nano = getelementptr %struct.mxs_lradc_adc, ptr %5, i32 0, i32 9, i32 %i.1440, i32 0, i32 1
  %59 = ptrtoint ptr %nano to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul255, ptr %nano, align 4
  %60 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv234, ptr %arrayidx257, align 4
  %61 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx63, align 4
  %conv.1 = zext i32 %62 to i64
  %mul.1 = mul nuw nsw i64 %conv.1, 100000000
  %shr.1 = lshr i64 %mul.1, 11
  %conv86.1 = trunc i64 %shr.1 to i32
  %63 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %shr.1) #13, !srcloc !165
  %64 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %shr.1, i64 %63, i32 0) #13, !srcloc !166
  %asmresult10.i.1 = extractvalue { i64, i32 } %64, 0
  %div233434.1 = lshr i64 %asmresult10.i.1, 26
  %conv234.1 = trunc i64 %div233434.1 to i32
  %mul235.neg.1 = mul i32 %conv234.1, -100000000
  %sub236.1 = add i32 %mul235.neg.1, %conv86.1
  %mul255.1 = mul i32 %sub236.1, 10
  %arrayidx257.1 = getelementptr %struct.mxs_lradc_adc, ptr %5, i32 0, i32 9, i32 %i.1440, i32 1
  %nano.1 = getelementptr %struct.mxs_lradc_adc, ptr %5, i32 0, i32 9, i32 %i.1440, i32 1, i32 1
  %65 = ptrtoint ptr %nano.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul255.1, ptr %nano.1, align 4
  %66 = ptrtoint ptr %arrayidx257.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv234.1, ptr %arrayidx257.1, align 4
  %inc266 = add nuw nsw i32 %i.1440, 1
  %exitcond441.not = icmp eq i32 %inc266, 16
  br i1 %exitcond441.not, label %for.end267, label %for.cond59.preheader.for.cond59.preheader_crit_edge

for.cond59.preheader.for.cond59.preheader_crit_edge: ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond59.preheader

for.end267:                                       ; preds = %for.cond59.preheader
  tail call fastcc void @mxs_lradc_adc_hw_init(ptr noundef %5)
  %call268 = tail call i32 @__iio_device_register(ptr noundef nonnull %call2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %for.end267.cleanup_crit_edge, label %do.end273

for.end267.cleanup_crit_edge:                     ; preds = %for.end267
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end273:                                        ; preds = %for.end267
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %68, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !168
  %69 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv.i, align 8
  %trig.i = getelementptr inbounds %struct.mxs_lradc_adc, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trig.i, align 8
  tail call void @iio_trigger_unregister(ptr noundef %72) #9
  br label %err_trig

err_trig:                                         ; preds = %do.end273, %if.end.i.err_trig_crit_edge, %for.end.err_trig_crit_edge
  %ret.0 = phi i32 [ %call268, %do.end273 ], [ %call5.i, %if.end.i.err_trig_crit_edge ], [ -12, %for.end.err_trig_crit_edge ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %err_trig, %for.end267.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_trig ], [ -12, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call29, %if.end15.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ 0, %for.end267.cleanup_crit_edge ], [ %call.i, %if.end37.cleanup_crit_edge ], [ %call34, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.mxs_lradc_adc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !168
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %trig.i = getelementptr inbounds %struct.mxs_lradc_adc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trig.i, align 8
  tail call void @iio_trigger_unregister(ptr noundef %9) #9
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !169
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.selectcmp.i = icmp eq i32 %9, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8191, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %switch.selectcmp2.i = icmp eq i32 %9, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 511, i32 %switch.select.i
  %and = and i32 %switch.select3.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %11, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %buffer_vchans = getelementptr inbounds %struct.mxs_lradc, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %buffer_vchans to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buffer_vchans, align 4
  %conv = zext i8 %13 to i32
  %and7 = and i32 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then6.do.body24_crit_edge, label %do.body10

if.then6.do.body24_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.body10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 7
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %trig = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 10
  %14 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %15) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #9
  br label %do.body24

if.else:                                          ; preds = %if.end
  %and19 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.do.body24_crit_edge, label %if.then21

if.else.do.body24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %completion = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %completion) #9
  br label %do.body24

do.body24:                                        ; preds = %if.then21, %if.else.do.body24_crit_edge, %do.body10, %if.then6.do.body24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %switch.selectcmp.i48 = icmp eq i32 %17, 1
  %switch.select.i49 = select i1 %switch.selectcmp.i48, i32 8191, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %switch.selectcmp2.i50 = icmp eq i32 %17, 0
  %switch.select3.i51 = select i1 %switch.selectcmp2.i50, i32 511, i32 %switch.select.i49
  %and28 = and i32 %switch.select3.i51, %7
  %18 = tail call i32 @llvm.bswap.i32(i32 %and28)
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 8
  %add.ptr31 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %18) #9, !srcloc !168
  br label %cleanup

cleanup:                                          ; preds = %do.body24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body24 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1)
  %cmp33 = icmp ult i32 %call1, 16
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ %call1, %for.body.lr.ph ], [ %call14, %for.body.for.body_crit_edge ]
  %j.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %mul = shl i32 %j.034, 4
  %add = add i32 %mul, 80
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !169
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %arrayidx = getelementptr %struct.mxs_lradc_adc, ptr %3, i32 0, i32 4, i32 %j.034
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 36) #9, !srcloc !168
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %and = and i32 %14, 262143
  %div = udiv i32 %and, 5
  store i32 %div, ptr %arrayidx, align 4
  %inc = add i32 %j.034, 1
  %15 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_scan_mask, align 4
  %add13 = add nuw nsw i32 %i.035, 1
  %call14 = tail call i32 @_find_next_bit_be(ptr noundef %16, i32 noundef 16, i32 noundef %add13) #9
  %cmp = icmp ult i32 %call14, 16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer15 = getelementptr inbounds %struct.mxs_lradc_adc, ptr %3, i32 0, i32 4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scan_timestamp.i, align 8, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %19 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %22, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer15, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %20, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer15) #9
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %25) #9
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_lradc_adc_hw_init(ptr nocapture noundef readonly %adc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %adc, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -939523840) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #9, !srcloc !168
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_read_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %min.i = alloca i32, align 4
  %max.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp = icmp eq i32 %4, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.i) #9
  %5 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %min.i, align 4, !annotation !177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i) #9
  %6 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %max.i, align 4, !annotation !177
  %call.i = call fastcc i32 @mxs_lradc_adc_read_single(ptr noundef %iio_dev, i32 noundef 8, ptr noundef nonnull %min.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.mxs_lradc_adc_read_temp.exit_crit_edge

if.then.mxs_lradc_adc_read_temp.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %mxs_lradc_adc_read_temp.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = call fastcc i32 @mxs_lradc_adc_read_single(ptr noundef %iio_dev, i32 noundef 9, ptr noundef nonnull %max.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.mxs_lradc_adc_read_temp.exit_crit_edge

if.end.i.mxs_lradc_adc_read_temp.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mxs_lradc_adc_read_temp.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max.i, align 4
  %9 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min.i, align 4
  %sub.i = sub i32 %8, %10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %val, align 4
  br label %mxs_lradc_adc_read_temp.exit

mxs_lradc_adc_read_temp.exit:                     ; preds = %if.end4.i, %if.end.i.mxs_lradc_adc_read_temp.exit_crit_edge, %if.then.mxs_lradc_adc_read_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end4.i ], [ %call.i, %if.then.mxs_lradc_adc_read_temp.exit_crit_edge ], [ %call1.i, %if.end.i.mxs_lradc_adc_read_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.i) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %call2 = tail call fastcc i32 @mxs_lradc_adc_read_single(ptr noundef %iio_dev, i32 noundef %13, ptr noundef %val)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %cmp5 = icmp eq i32 %15, 9
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val, align 4
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 253000, ptr %val2, align 4
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %vref_mv = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vref_mv, align 8
  %channel8 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %20 = ptrtoint ptr %channel8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel8, align 4
  %arrayidx = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %realbits, align 1
  %conv = zext i8 %26 to i32
  %27 = load i32, ptr %channel8, align 4
  %is_divided = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 10
  %div3.i = lshr i32 %27, 5
  %arrayidx.i = getelementptr i32, ptr %is_divided, i32 %div3.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %27, 31
  %shr.i = lshr i32 %29, %and.i
  %and1.i = and i32 %shr.i, 1
  %sub = sub nsw i32 %conv, %and1.i
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %val2, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %31 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %32)
  %cmp13 = icmp eq i32 %32, 9
  br i1 %cmp13, label %if.then15, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1079, ptr %val, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 644268, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %sw.bb11.cleanup_crit_edge, %if.end7, %if.then6, %if.end, %mxs_lradc_adc_read_temp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then15 ], [ 2, %if.then6 ], [ 11, %if.end7 ], [ %retval.0.i, %mxs_lradc_adc_read_temp.exit ], [ %call2, %if.end ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_write_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.mxs_lradc_adc, ptr %1, i32 0, i32 9, i32 %3
  %call2 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %m)
  %cond = icmp eq i32 %m, 2
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %val)
  %cmp = icmp eq i32 %5, %val
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %nano = getelementptr inbounds %struct.mxs_lradc_scale, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %nano to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nano, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %val2)
  %cmp5 = icmp eq i32 %7, %val2
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %is_divided = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %9, ptr noundef %is_divided) #9
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %arrayidx8 = getelementptr %struct.mxs_lradc_scale, ptr %arrayidx, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %val)
  %cmp10 = icmp eq i32 %11, %val
  br i1 %cmp10, label %land.lhs.true11, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true11:                                  ; preds = %if.else
  %nano13 = getelementptr %struct.mxs_lradc_scale, ptr %arrayidx, i32 1, i32 1
  %12 = ptrtoint ptr %nano13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nano13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %val2)
  %cmp14 = icmp eq i32 %13, %val2
  br i1 %cmp14, label %if.then15, label %land.lhs.true11.sw.epilog_crit_edge

land.lhs.true11.sw.epilog_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %is_divided17 = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %15, ptr noundef %is_divided17) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15, %land.lhs.true11.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.then6, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then15 ], [ -22, %land.lhs.true11.sw.epilog_crit_edge ], [ -22, %if.else.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxs_lradc_adc_write_raw_get_fmt(ptr nocapture noundef readnone %iio_dev, ptr nocapture noundef readnone %chan, i32 noundef %m) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_show_scale_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address, align 8
  %conv = trunc i64 %3 to i32
  %arrayidx4 = getelementptr %struct.mxs_lradc_adc, ptr %1, i32 0, i32 9, i32 %conv, i32 0
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %nano = getelementptr %struct.mxs_lradc_adc, ptr %1, i32 0, i32 9, i32 %conv, i32 0, i32 1
  %6 = ptrtoint ptr %nano to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nano, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %7)
  %add.ptr3.1 = getelementptr i8, ptr %buf, i32 %call8
  %arrayidx4.1 = getelementptr %struct.mxs_lradc_adc, ptr %1, i32 0, i32 9, i32 %conv, i32 1
  %8 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.1, align 4
  %nano.1 = getelementptr %struct.mxs_lradc_adc, ptr %1, i32 0, i32 9, i32 %conv, i32 1, i32 1
  %10 = ptrtoint ptr %nano.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nano.1, align 4
  %call8.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3.1, ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %11)
  %add.1 = add i32 %call8.1, %call8
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add.1
  %12 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 2560, ptr %add.ptr9, align 1
  %add11 = add i32 %add.1, 1
  ret i32 %add11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_lradc_adc_read_single(ptr noundef %iio_dev, i32 noundef %chan, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %completion = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %do.body, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 256) #9, !srcloc !168
  br label %do.body6

do.body6:                                         ; preds = %do.body, %if.end.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %base9 = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base9, align 8
  %add.ptr11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #9, !srcloc !168
  %is_divided = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 10
  %div3.i = lshr i32 %chan, 5
  %arrayidx.i = getelementptr i32, ptr %is_divided, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %chan, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base9, align 8
  br i1 %tobool13.not, label %do.body21, label %do.body15

do.body15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr20 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 1) #9, !srcloc !168
  br label %do.body28

do.body21:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr26 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 1) #9, !srcloc !168
  br label %do.body28

do.body28:                                        ; preds = %do.body21, %do.body15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base9, align 8
  %add.ptr33 = getelementptr i8, ptr %18, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 251658240) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %chan)
  %20 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base9, align 8
  %add.ptr39 = getelementptr i8, ptr %21, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %19) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base9, align 8
  %add.ptr44 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 0) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base9, align 8
  %add.ptr50 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 256) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base9, align 8
  %add.ptr56 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 16777216) #9, !srcloc !168
  %call58 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %completion, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  %spec.store.select = select i1 %tobool59.not, i32 -110, i32 %call58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp62 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp62, label %do.body28.do.body69_crit_edge, label %if.end64

do.body28.do.body69_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

if.end64:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base9, align 8
  %add.ptr66 = getelementptr i8, ptr %29, i32 80
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #9, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %31 = and i32 %30, -64768
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val, align 4
  br label %do.body69

do.body69:                                        ; preds = %if.end64, %do.body28.do.body69_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %do.body28.do.body69_crit_edge ], [ 1, %if.end64 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base9, align 8
  %add.ptr74 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 256) #9, !srcloc !168
  tail call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body69, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body69 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_configure_trigger(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add = select i1 %state, i32 212, i32 216
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4096) #9, !srcloc !168
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_buffer_preenable(ptr nocapture noundef readonly %iio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %do.body, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %buffer_vchans = getelementptr inbounds %struct.mxs_lradc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %buffer_vchans to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer_vchans, align 4
  %conv = zext i8 %7 to i32
  %8 = shl nuw nsw i32 %conv, 8
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #9, !srcloc !168
  br label %do.body3

do.body3:                                         ; preds = %do.body, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %buffer_vchans6 = getelementptr inbounds %struct.mxs_lradc, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %buffer_vchans6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buffer_vchans6, align 4
  %conv7 = zext i8 %12 to i32
  %13 = shl nuw i32 %conv7, 24
  %base8 = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base8, align 8
  %add.ptr10 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #9, !srcloc !168
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 8
  %16 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active_scan_mask, align 4
  %call11 = tail call i32 @_find_next_bit_be(ptr noundef %17, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call11)
  %cmp1284 = icmp slt i32 %call11, 16
  br i1 %cmp1284, label %do.body3.for.body_crit_edge, label %do.body3.do.body30_crit_edge

do.body3.do.body30_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body3.for.body_crit_edge
  %ctrl1_irq.090 = phi i32 [ %or19, %for.body.for.body_crit_edge ], [ 0, %do.body3.for.body_crit_edge ]
  %ctrl4_clr.089 = phi i32 [ %or17, %for.body.for.body_crit_edge ], [ 0, %do.body3.for.body_crit_edge ]
  %ctrl4_set.088 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %do.body3.for.body_crit_edge ]
  %ofs.087 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body3.for.body_crit_edge ]
  %chan.086 = phi i32 [ %call29, %for.body.for.body_crit_edge ], [ %call11, %do.body3.for.body_crit_edge ]
  %or.i.i8385 = phi i32 [ %or.i.i, %for.body.for.body_crit_edge ], [ 0, %do.body3.for.body_crit_edge ]
  %mul = shl i32 %ofs.087, 2
  %shl14 = shl i32 %chan.086, %mul
  %or = or i32 %shl14, %ctrl4_set.088
  %shl16 = shl i32 15, %mul
  %or17 = or i32 %ctrl4_clr.089, %shl16
  %add = add i32 %ofs.087, 16
  %shl18 = shl nuw i32 1, %add
  %or19 = or i32 %ctrl1_irq.090, %shl18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base8, align 8
  %mul24 = shl i32 %ofs.087, 4
  %add25 = add i32 %mul24, 80
  %add.ptr26 = getelementptr i8, ptr %19, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 36) #9, !srcloc !168
  %rem.i.i = and i32 %ofs.087, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %or.i.i8385, %shl.i.i
  %inc = add i32 %ofs.087, 1
  %20 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_scan_mask, align 4
  %add28 = add nsw i32 %chan.086, 1
  %call29 = tail call i32 @_find_next_bit_be(ptr noundef %21, i32 noundef 16, i32 noundef %add28) #9
  %cmp12 = icmp slt i32 %call29, 16
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %do.body30.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body30.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = and i32 %or.i.i, 255
  br label %do.body30

do.body30:                                        ; preds = %do.body30.loopexit, %do.body3.do.body30_crit_edge
  %or.i.i83.lcssa = phi i32 [ 0, %do.body3.do.body30_crit_edge ], [ %phi.bo, %do.body30.loopexit ]
  %ctrl4_set.0.lcssa = phi i32 [ 0, %do.body3.do.body30_crit_edge ], [ %or, %do.body30.loopexit ]
  %ctrl4_clr.0.lcssa = phi i32 [ 0, %do.body3.do.body30_crit_edge ], [ %or17, %do.body30.loopexit ]
  %ctrl1_irq.0.lcssa = phi i32 [ 0, %do.body3.do.body30_crit_edge ], [ %or19, %do.body30.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base8, align 8
  %add.ptr35 = getelementptr i8, ptr %23, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 4351) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %ctrl4_clr.0.lcssa)
  %25 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base8, align 8
  %add.ptr41 = getelementptr i8, ptr %26, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %24) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %ctrl4_set.0.lcssa)
  %28 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base8, align 8
  %add.ptr47 = getelementptr i8, ptr %29, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %27) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %ctrl1_irq.0.lcssa)
  %31 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base8, align 8
  %add.ptr53 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %30) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base8, align 8
  %add.ptr60 = getelementptr i8, ptr %34, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %or.i.i83.lcssa) #9, !srcloc !168
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_lradc_adc_buffer_postdisable(ptr nocapture noundef readonly %iio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.mxs_lradc_adc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 4351) #9, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  %buffer_vchans = getelementptr inbounds %struct.mxs_lradc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %buffer_vchans to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer_vchans, align 4
  %conv = zext i8 %7 to i32
  %8 = shl nuw i32 %conv, 24
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #9, !srcloc !168
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %do.body10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %buffer_vchans to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buffer_vchans, align 4
  %conv14 = zext i8 %14 to i32
  %15 = shl nuw nsw i32 %conv14, 8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr17 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %15) #9, !srcloc !168
  br label %if.end

if.end:                                           ; preds = %do.body10, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mxs_lradc_adc_validate_scan_mask(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and3.i = and i32 %5, 65535
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i) #9
  %use_touchbutton = getelementptr inbounds %struct.mxs_lradc, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %use_touchbutton to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_touchbutton, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 3
  %touchscreen_wire = getelementptr inbounds %struct.mxs_lradc, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %touchscreen_wire to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %touchscreen_wire, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %9, label %entry.if.end10_crit_edge [
    i32 1, label %if.end5.thread
    i32 2, label %if.then8
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or4 = or i32 %spec.store.select, 60
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or9 = or i32 %spec.store.select, 124
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.thread, %entry.if.end10_crit_edge
  %rsvd_mask.1 = phi i32 [ %or9, %if.then8 ], [ %or4, %if.end5.thread ], [ %spec.store.select, %entry.if.end10_crit_edge ]
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and.i = and i32 %rsvd_mask.1, 65535
  %and4.i = and i32 %and.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp5.i.not = icmp eq i32 %and4.i, 0
  br i1 %cmp5.i.not, label %if.end22, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  %add = or i32 %spec.select, 2
  %rsvd_chans.1 = select i1 %tobool16.not, i32 %spec.select, i32 %add
  %add23 = add i32 %rsvd_chans.1, %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add23)
  %cmp24 = icmp slt i32 %add23, 9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end10.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end10.cleanup_crit_edge ], [ %cmp24, %if.end22 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !43, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_mxs_lradc_adc__187_830_mxs_lradc_adc_driver_init6, !1, !"__initcall__kmod_mxs_lradc_adc__187_830_mxs_lradc_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 830, i32 1}
!2 = !{ptr @__exitcall_mxs_lradc_adc_driver_exit, !1, !"__exitcall_mxs_lradc_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 832, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 833, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 834, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 835, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 825, i32 11}
!14 = !{ptr @mxs_lradc_adc_driver, !15, !"mxs_lradc_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 823, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 702, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mxs_lradc_adc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mxs_lradc_adc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mxs_lradc_adc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 719, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 796, i32 3}
!29 = !{ptr @mxs_lradc_adc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mxs_lradc_adc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @init_completion.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../include/linux/completion.h", i32 87, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mxs_lradc_adc_iio_info, !35, !"mxs_lradc_adc_iio_info", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 376, i32 30}
!36 = !{ptr @mxs_lradc_adc_attribute_group, !37, !"mxs_lradc_adc_attribute_group", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 372, i32 37}
!38 = !{ptr @mxs_lradc_adc_attributes, !39, !"mxs_lradc_adc_attributes", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 354, i32 26}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 339, i32 8}
!42 = !{ptr @iio_dev_attr_in_voltage0_scale_available, !41, !"iio_dev_attr_in_voltage0_scale_available", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 326, i32 29}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 330, i32 28}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 340, i32 8}
!49 = !{ptr @iio_dev_attr_in_voltage1_scale_available, !48, !"iio_dev_attr_in_voltage1_scale_available", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 341, i32 8}
!52 = !{ptr @iio_dev_attr_in_voltage2_scale_available, !51, !"iio_dev_attr_in_voltage2_scale_available", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 342, i32 8}
!55 = !{ptr @iio_dev_attr_in_voltage3_scale_available, !54, !"iio_dev_attr_in_voltage3_scale_available", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 343, i32 8}
!58 = !{ptr @iio_dev_attr_in_voltage4_scale_available, !57, !"iio_dev_attr_in_voltage4_scale_available", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 344, i32 8}
!61 = !{ptr @iio_dev_attr_in_voltage5_scale_available, !60, !"iio_dev_attr_in_voltage5_scale_available", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 345, i32 8}
!64 = !{ptr @iio_dev_attr_in_voltage6_scale_available, !63, !"iio_dev_attr_in_voltage6_scale_available", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 346, i32 8}
!67 = !{ptr @iio_dev_attr_in_voltage7_scale_available, !66, !"iio_dev_attr_in_voltage7_scale_available", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 347, i32 8}
!70 = !{ptr @iio_dev_attr_in_voltage10_scale_available, !69, !"iio_dev_attr_in_voltage10_scale_available", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 348, i32 8}
!73 = !{ptr @iio_dev_attr_in_voltage11_scale_available, !72, !"iio_dev_attr_in_voltage11_scale_available", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 349, i32 8}
!76 = !{ptr @iio_dev_attr_in_voltage12_scale_available, !75, !"iio_dev_attr_in_voltage12_scale_available", i1 false, i1 false}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 350, i32 8}
!79 = !{ptr @iio_dev_attr_in_voltage13_scale_available, !78, !"iio_dev_attr_in_voltage13_scale_available", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 351, i32 8}
!82 = !{ptr @iio_dev_attr_in_voltage14_scale_available, !81, !"iio_dev_attr_in_voltage14_scale_available", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 352, i32 8}
!85 = !{ptr @iio_dev_attr_in_voltage15_scale_available, !84, !"iio_dev_attr_in_voltage15_scale_available", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 594, i32 2}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 595, i32 2}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 596, i32 2}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 597, i32 2}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 598, i32 2}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 599, i32 2}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 600, i32 2}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 601, i32 2}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 612, i32 21}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 623, i32 2}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 624, i32 2}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 625, i32 2}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 626, i32 2}
!112 = !{ptr @mx23_lradc_chan_spec, !113, !"mx23_lradc_chan_spec", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 593, i32 35}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 43, i32 2}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 44, i32 2}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 45, i32 2}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 46, i32 2}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 47, i32 2}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 48, i32 2}
!126 = !{ptr @mx23_lradc_adc_irq_names, !127, !"mx23_lradc_adc_irq_names", i1 false, i1 false}
!127 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 42, i32 20}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 636, i32 2}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 658, i32 2}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 659, i32 2}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 660, i32 2}
!136 = !{ptr @mx28_lradc_chan_spec, !137, !"mx28_lradc_chan_spec", i1 false, i1 false}
!137 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 629, i32 35}
!138 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 52, i32 2}
!140 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 53, i32 2}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 60, i32 2}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 61, i32 2}
!146 = !{ptr @mx28_lradc_adc_irq_names, !147, !"mx28_lradc_adc_irq_names", i1 false, i1 false}
!147 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 51, i32 20}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 458, i32 43}
!150 = !{ptr @mxs_lradc_adc_trigger_ops, !151, !"mxs_lradc_adc_trigger_ops", i1 false, i1 false}
!151 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 448, i32 37}
!152 = !{ptr @mxs_lradc_adc_buffer_ops, !153, !"mxs_lradc_adc_buffer_ops", i1 false, i1 false}
!153 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 570, i32 42}
!154 = !{ptr @mxs_lradc_adc_vref_mv, !155, !"mxs_lradc_adc_vref_mv", i1 false, i1 false}
!155 = !{!"../drivers/iio/adc/mxs-lradc-adc.c", i32 64, i32 18}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i64 876358, i64 876385}
!166 = !{i64 877053, i64 877080, i64 877113, i64 877134, i64 877161, i64 877187}
!167 = !{i64 2153257993}
!168 = !{i64 4879965}
!169 = !{i64 4880383}
!170 = !{i64 2153230200}
!171 = !{i64 2153230892}
!172 = !{i64 2153232159}
!173 = !{i64 2153232422}
!174 = !{i8 0, i8 2}
!175 = !{i64 2153257150}
!176 = !{i64 2153257571}
!177 = !{!"auto-init"}
!178 = !{i64 2153197090}
!179 = !{i64 2153197546}
!180 = !{i64 2153198862}
!181 = !{i64 2153199325}
!182 = !{i64 2153199763}
!183 = !{i64 2153200214}
!184 = !{i64 2153200769}
!185 = !{i64 2153201621}
!186 = !{i64 2153201895}
!187 = !{i64 2153233027}
!188 = !{i64 2153233724}
!189 = !{i64 2153234218}
!190 = !{i64 2153235122}
!191 = !{i64 2153235745}
!192 = !{i64 2153236306}
!193 = !{i64 2153236741}
!194 = !{i64 2153237174}
!195 = !{i64 2153237650}
!196 = !{i64 2153238283}
!197 = !{i64 2153238853}
!198 = !{i64 2153239338}
