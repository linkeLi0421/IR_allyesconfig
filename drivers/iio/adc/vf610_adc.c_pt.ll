; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/vf610_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/vf610_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.85, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.85 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.vf610_adc = type { ptr, ptr, ptr, i32, i32, ptr, [3 x i32], %struct.vf610_adc_feature, [5 x i32], %struct.completion, %struct.anon.84 }
%struct.vf610_adc_feature = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.anon.84 = type { i16, i64 }

@__initcall__kmod_vf610_adc__288_969_vf610_adc_driver_init6 = internal global ptr @vf610_adc_driver_init, section ".initcall6.init", align 4
@vf610_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vf610_adc_probe, ptr @vf610_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vf610_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vf610_adc_driver_exit = internal global ptr @vf610_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"vf610_adc.author=Fugang Duan <B38611@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"vf610_adc.description=Freescale VF610 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"vf610_adc.file=drivers/iio/adc/vf610_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"vf610_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vf610-adc\00", [22 x i8] zeroinitializer }, align 32
@vf610_adc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vf610_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vf610_adc_suspend, ptr @vf610_adc_resume, ptr @vf610_adc_suspend, ptr @vf610_adc_resume, ptr @vf610_adc_suspend, ptr @vf610_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed allocating iio device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vf610_adc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/adc/vf610_adc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry_ptr = internal global ptr @vf610_adc_probe._entry, section ".printk_index", align 4
@vf610_adc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed requesting irq, irq = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry_ptr.8 = internal global ptr @vf610_adc_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed getting clock, err = %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry_ptr.12 = internal global ptr @vf610_adc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,adck-max-frequency\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"min-sample-time\00", [16 x i8] zeroinitializer }, align 32
@vf610_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @vf610_attribute_group, ptr @vf610_read_raw, ptr null, ptr null, ptr @vf610_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_adc_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vf610_adc_iio_channels = internal constant { [18 x %struct.iio_chan_spec], [400 x i8] } { [18 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 8, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 9, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 10, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 11, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 12, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 0, i32 13, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 14, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 15, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 26, i32 0, i32 0, i32 26, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 32, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [400 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 870, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not prepare or enable the clock.\0A\00", [56 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry_ptr.18 = internal global ptr @vf610_adc_probe._entry.16, section ".printk_index", align 4
@iio_triggered_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @vf610_adc_buffer_postenable, ptr @vf610_adc_buffer_predisable, ptr null, ptr @iio_validate_scan_mask_onehot }, [44 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 880, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't initialise the buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry_ptr.21 = internal global ptr @vf610_adc_probe._entry.19, section ".printk_index", align 4
@vf610_adc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 886, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't register the device.\0A\00", [33 x i8] zeroinitializer }, align 32
@vf610_adc_probe._entry_ptr.24 = internal global ptr @vf610_adc_probe._entry.22, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@vf610_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vf610_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@vf610_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vf610_show_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@vf610_adc_sample_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error resolution mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vf610_adc_sample_set\00", [43 x i8] zeroinitializer }, align 32
@vf610_adc_sample_set._entry_ptr = internal global ptr @vf610_adc_sample_set._entry, section ".printk_index", align 4
@vf610_adc_sample_set._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error clk divider\0A\00", [45 x i8] zeroinitializer }, align 32
@vf610_adc_sample_set._entry_ptr.32 = internal global ptr @vf610_adc_sample_set._entry.30, section ".printk_index", align 4
@vf610_adc_sample_set._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error in sample time select\0A\00", [35 x i8] zeroinitializer }, align 32
@vf610_adc_sample_set._entry_ptr.35 = internal global ptr @vf610_adc_sample_set._entry.33, section ".printk_index", align 4
@vf610_adc_sample_set._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error hardware sample average select\0A\00", [58 x i8] zeroinitializer }, align 32
@vf610_adc_sample_set._entry_ptr.38 = internal global ptr @vf610_adc_sample_set._entry.36, section ".printk_index", align 4
@vf610_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.39, i32 2, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @vf610_conversion_mode to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"conversion_mode\00", [16 x i8] zeroinitializer }, align 32
@vf610_conversion_mode = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @vf610_conv_modes, i32 3, ptr @vf610_set_conversion_mode, ptr @vf610_get_conversion_mode }, [16 x i8] zeroinitializer }, align 32
@vf610_conv_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42], [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high-speed\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low-power\00", [22 x i8] zeroinitializer }, align 32
@vf610_lst_adder = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 5, i32 7, i32 9, i32 13, i32 17, i32 21, i32 25], [32 x i8] zeroinitializer }, align 32
@vf610_adc_cfg_post_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error voltage reference\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vf610_adc_cfg_post_set\00", [41 x i8] zeroinitializer }, align 32
@vf610_adc_cfg_post_set._entry_ptr = internal global ptr @vf610_adc_cfg_post_set._entry, section ".printk_index", align 4
@vf610_adc_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout for adc calibration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vf610_adc_calibration\00", [42 x i8] zeroinitializer }, align 32
@vf610_adc_calibration._entry_ptr = internal global ptr @vf610_adc_calibration._entry, section ".printk_index", align 4
@vf610_adc_calibration._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC calibration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@vf610_adc_calibration._entry_ptr.49 = internal global ptr @vf610_adc_calibration._entry.47, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 12]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"vf610_adc_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 959, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 963, i32 13 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"vf610_adc_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 794, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"vf610_adc_pm_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 957, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 809, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 828, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 832, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 834, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 839, i32 46 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 849, i32 48 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 852, i32 48 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"vf610_adc_iio_info\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 787, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"vf610_adc_iio_channels\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 531, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 869, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"iio_triggered_buffer_setup_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 766, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 880, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 886, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 87, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"vf610_attribute_group\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 622, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"vf610_attributes\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 617, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 615, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 607, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 357, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 381, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 419, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 444, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"vf610_ext_info\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 498, i32 44 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 499, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"vf610_conversion_mode\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 491, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"vf610_conv_modes\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 488, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 488, i32 50 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 488, i32 60 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 489, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"vf610_lst_adder\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 178, i32 18 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 283, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 309, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [31 x i8] c"../drivers/iio/adc/vf610_adc.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 313, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_vf610_adc_driver_exit, ptr @__initcall__kmod_vf610_adc__288_969_vf610_adc_driver_init6, ptr @vf610_adc_calibration._entry, ptr @vf610_adc_calibration._entry.47, ptr @vf610_adc_calibration._entry_ptr, ptr @vf610_adc_calibration._entry_ptr.49, ptr @vf610_adc_cfg_post_set._entry, ptr @vf610_adc_cfg_post_set._entry_ptr, ptr @vf610_adc_driver_exit, ptr @vf610_adc_probe._entry, ptr @vf610_adc_probe._entry.10, ptr @vf610_adc_probe._entry.16, ptr @vf610_adc_probe._entry.19, ptr @vf610_adc_probe._entry.22, ptr @vf610_adc_probe._entry.6, ptr @vf610_adc_probe._entry_ptr, ptr @vf610_adc_probe._entry_ptr.12, ptr @vf610_adc_probe._entry_ptr.18, ptr @vf610_adc_probe._entry_ptr.21, ptr @vf610_adc_probe._entry_ptr.24, ptr @vf610_adc_probe._entry_ptr.8, ptr @vf610_adc_sample_set._entry, ptr @vf610_adc_sample_set._entry.30, ptr @vf610_adc_sample_set._entry.33, ptr @vf610_adc_sample_set._entry.36, ptr @vf610_adc_sample_set._entry_ptr, ptr @vf610_adc_sample_set._entry_ptr.32, ptr @vf610_adc_sample_set._entry_ptr.35, ptr @vf610_adc_sample_set._entry_ptr.38, ptr @vf610_adc_driver, ptr @.str, ptr @vf610_adc_match, ptr @vf610_adc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @vf610_adc_iio_info, ptr @vf610_adc_iio_channels, ptr @.str.17, ptr @iio_triggered_buffer_setup_ops, ptr @.str.20, ptr @.str.23, ptr @init_completion.__key, ptr @.str.25, ptr @vf610_attribute_group, ptr @vf610_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @vf610_ext_info, ptr @.str.39, ptr @vf610_conversion_mode, ptr @vf610_conv_modes, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @vf610_lst_adder, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_iio_channels to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_triggered_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_sample_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_sample_set._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_sample_set._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_sample_set._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_conversion_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_conv_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_lst_adder to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_cfg_post_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_adc_calibration._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_adc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vf610_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @vf610_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 168) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 8
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.dev_name.exit_crit_edge

if.end14.dev_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end14.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %call12, ptr noundef nonnull @vf610_adc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call12) #9
  br label %cleanup

if.end25:                                         ; preds = %dev_name.exit
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  %clk = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call27, ptr %clk, align 8
  %cmp.i160 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %do.end33, label %if.end39

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %12) #9
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 8
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end25
  %call41 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %vref = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call41, ptr %vref, align 4
  %cmp.i161 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end39
  %call49 = tail call i32 @regulator_enable(ptr noundef %call41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %18 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vref, align 4
  %call54 = tail call i32 @regulator_get_voltage(ptr noundef %19) #6
  %vref_uv = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %vref_uv to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call54, ptr %vref_uv, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %max_adck_rate = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 6
  %call.i162 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.14, ptr noundef %max_adck_rate, i32 noundef 3, i32 noundef 0) #6
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %default_sample_time = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 7
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.15, ptr noundef %default_sample_time, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool60.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool60.not, label %if.end52.if.end64_crit_edge, label %if.then61

if.end52.if.end64_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then61:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %default_sample_time to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1000, ptr %default_sample_time, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end52.if.end64_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %driver_data.i.i, align 4
  %completion = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #6
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i164 = icmp eq ptr %29, null
  br i1 %tobool.not.i164, label %if.end.i165, label %if.end64.dev_name.exit167_crit_edge

if.end64.dev_name.exit167_crit_edge:              ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit167

if.end.i165:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit167

dev_name.exit167:                                 ; preds = %if.end.i165, %if.end64.dev_name.exit167_crit_edge
  %retval.0.i166 = phi ptr [ %31, %if.end.i165 ], [ %29, %if.end64.dev_name.exit167_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %32 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i166, ptr %name, align 8
  %info67 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %33 = ptrtoint ptr %info67 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @vf610_adc_iio_info, ptr %info67, align 8
  %34 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vf610_adc_iio_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %36 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 18, ptr %num_channels, align 4
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 8
  %call.i168 = tail call i32 @clk_prepare(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end.i170, label %dev_name.exit167.do.end74_crit_edge

dev_name.exit167.do.end74_crit_edge:              ; preds = %dev_name.exit167
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

if.end.i170:                                      ; preds = %dev_name.exit167
  %call1.i = tail call i32 @clk_enable(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end76, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then3.i, %dev_name.exit167.do.end74_crit_edge
  %retval.0.i171.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i168, %dev_name.exit167.do.end74_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %error_adc_clk_enable

if.end76:                                         ; preds = %if.end.i170
  %adc_feature1.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %adc_feature1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %adc_feature1.i, align 4
  %vol_ref.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %vol_ref.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %vol_ref.i, align 4
  %calibration.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 8
  %41 = ptrtoint ptr %calibration.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %calibration.i, align 4
  %ovwren.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 9
  %42 = ptrtoint ptr %ovwren.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %ovwren.i, align 1
  %res_mode.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 5
  %43 = ptrtoint ptr %res_mode.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 12, ptr %res_mode.i, align 4
  %sample_rate.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 4
  %44 = ptrtoint ptr %sample_rate.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %sample_rate.i, align 4
  %conv_mode.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %conv_mode.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %conv_mode.i, align 4
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 8
  %call.i.i172 = tail call i32 @clk_get_rate(ptr noundef %47) #6
  %48 = ptrtoint ptr %conv_mode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %conv_mode.i, align 4
  %arrayidx.i.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 6, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %if.end76.if.end.i.i_crit_edge, label %if.then.i.i

if.end76.if.end.i.i_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i = udiv i32 %call.i.i172, %51
  %add.i.i = add i32 %div.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i.i.i = icmp eq i32 %add.i.i, 0
  %52 = tail call i32 @llvm.ctlz.i32(i32 %add.i.i, i1 true) #6, !range !130
  %sub.i.i.i = sub nuw nsw i32 32, %52
  %sub.i.op.i.i = shl nuw i32 1, %sub.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.op.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end76.if.end.i.i_crit_edge
  %shl.sink.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ 8, %if.end76.if.end.i.i_crit_edge ]
  %53 = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 3
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl.sink.i.i, ptr %53, align 4
  %div5.i.i = udiv i32 %call.i.i172, %shl.sink.i.i
  %div6.i.i = udiv i32 1000000000, %div5.i.i
  %55 = ptrtoint ptr %default_sample_time to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %default_sample_time, align 4
  %div7.i.i = udiv i32 %56, %div6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div7.i.i)
  %cmp9.i.i = icmp ult i32 %div7.i.i, 3
  br i1 %cmp9.i.i, label %if.end.i.i.if.then10.i.i_crit_edge, label %for.inc.i.i

if.end.i.i.if.then10.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %for.inc.6.i.i.if.then10.i.i_crit_edge, %for.inc.5.i.i.if.then10.i.i_crit_edge, %for.inc.4.i.i.if.then10.i.i_crit_edge, %for.inc.3.i.i.if.then10.i.i_crit_edge, %for.inc.2.i.i.if.then10.i.i_crit_edge, %for.inc.1.i.i.if.then10.i.i_crit_edge, %for.inc.i.i.if.then10.i.i_crit_edge, %if.end.i.i.if.then10.i.i_crit_edge
  %i.046.lcssa.i.i = phi i32 [ 0, %if.end.i.i.if.then10.i.i_crit_edge ], [ 1, %for.inc.i.i.if.then10.i.i_crit_edge ], [ 2, %for.inc.1.i.i.if.then10.i.i_crit_edge ], [ 3, %for.inc.2.i.i.if.then10.i.i_crit_edge ], [ 4, %for.inc.3.i.i.if.then10.i.i_crit_edge ], [ 5, %for.inc.4.i.i.if.then10.i.i_crit_edge ], [ 6, %for.inc.5.i.i.if.then10.i.i_crit_edge ], [ 7, %for.inc.6.i.i.if.then10.i.i_crit_edge ]
  %lst_adder_index.i.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 6
  %57 = ptrtoint ptr %lst_adder_index.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %i.046.lcssa.i.i, ptr %lst_adder_index.i.i, align 4
  br label %vf610_adc_cfg_init.exit

for.inc.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div7.i.i)
  %cmp9.1.i.i = icmp ult i32 %div7.i.i, 5
  br i1 %cmp9.1.i.i, label %for.inc.i.i.if.then10.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.then10.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div7.i.i)
  %cmp9.2.i.i = icmp ult i32 %div7.i.i, 7
  br i1 %cmp9.2.i.i, label %for.inc.1.i.i.if.then10.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %div7.i.i)
  %cmp9.3.i.i = icmp ult i32 %div7.i.i, 9
  br i1 %cmp9.3.i.i, label %for.inc.2.i.i.if.then10.i.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %div7.i.i)
  %cmp9.4.i.i = icmp ult i32 %div7.i.i, 13
  br i1 %cmp9.4.i.i, label %for.inc.3.i.i.if.then10.i.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %div7.i.i)
  %cmp9.5.i.i = icmp ult i32 %div7.i.i, 17
  br i1 %cmp9.5.i.i, label %for.inc.4.i.i.if.then10.i.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %div7.i.i)
  %cmp9.6.i.i = icmp ult i32 %div7.i.i, 21
  br i1 %cmp9.6.i.i, label %for.inc.5.i.i.if.then10.i.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %div7.i.i)
  %cmp9.7.i.i = icmp ult i32 %div7.i.i, 25
  br i1 %cmp9.7.i.i, label %for.inc.6.i.i.if.then10.i.i_crit_edge, label %for.inc.6.i.i.vf610_adc_cfg_init.exit_crit_edge

for.inc.6.i.i.vf610_adc_cfg_init.exit_crit_edge:  ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vf610_adc_cfg_init.exit

for.inc.6.i.i.if.then10.i.i_crit_edge:            ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

vf610_adc_cfg_init.exit:                          ; preds = %for.inc.6.i.i.vf610_adc_cfg_init.exit_crit_edge, %if.then10.i.i
  %lst_adder_index16.i.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 6
  %58 = ptrtoint ptr %lst_adder_index16.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lst_adder_index16.i.i, align 4
  %arrayidx17.i.i = getelementptr [8 x i32], ptr @vf610_lst_adder, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx17.i.i, align 4
  %add18.i.i = add i32 %61, 25
  %add19.i.i = add i32 %61, 31
  %div20.i.i = udiv i32 %div5.i.i, %add19.i.i
  %arrayidx21.i.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 0
  %62 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div20.i.i, ptr %arrayidx21.i.i, align 4
  %mul.1.i.i = shl i32 %add18.i.i, 2
  %add19.1.i.i = add i32 %mul.1.i.i, 6
  %div20.1.i.i = udiv i32 %div5.i.i, %add19.1.i.i
  %arrayidx21.1.i.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %arrayidx21.1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div20.1.i.i, ptr %arrayidx21.1.i.i, align 4
  %mul.2.i.i = shl i32 %add18.i.i, 3
  %add19.2.i.i = or i32 %mul.2.i.i, 6
  %div20.2.i.i = udiv i32 %div5.i.i, %add19.2.i.i
  %arrayidx21.2.i.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 2
  %64 = ptrtoint ptr %arrayidx21.2.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div20.2.i.i, ptr %arrayidx21.2.i.i, align 4
  %mul.3.i.i = shl i32 %add18.i.i, 4
  %add19.3.i.i = or i32 %mul.3.i.i, 6
  %div20.3.i.i = udiv i32 %div5.i.i, %add19.3.i.i
  %arrayidx21.3.i.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 3
  %65 = ptrtoint ptr %arrayidx21.3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div20.3.i.i, ptr %arrayidx21.3.i.i, align 4
  %mul.4.i.i = shl i32 %add18.i.i, 5
  %add19.4.i.i = or i32 %mul.4.i.i, 6
  %div20.4.i.i = udiv i32 %div5.i.i, %add19.4.i.i
  %arrayidx21.4.i.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 4
  %66 = ptrtoint ptr %arrayidx21.4.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div20.4.i.i, ptr %arrayidx21.4.i.i, align 4
  tail call fastcc void @vf610_adc_hw_init(ptr noundef %1)
  %call77 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef null, i32 noundef 0, ptr noundef nonnull @iio_triggered_buffer_setup_ops, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end82, label %if.end84

do.end82:                                         ; preds = %vf610_adc_cfg_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %error_iio_device_register

if.end84:                                         ; preds = %vf610_adc_cfg_init.exit
  %call85 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end84.cleanup_crit_edge, label %do.end90

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #6
  br label %error_iio_device_register

error_iio_device_register:                        ; preds = %do.end90, %do.end82
  %ret.0 = phi i32 [ %call77, %do.end82 ], [ %call85, %do.end90 ]
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %68) #6
  tail call void @clk_unprepare(ptr noundef %68) #6
  br label %error_adc_clk_enable

error_adc_clk_enable:                             ; preds = %error_iio_device_register, %do.end74
  %ret.1 = phi i32 [ %retval.0.i171.ph, %do.end74 ], [ %ret.0, %error_iio_device_register ]
  %69 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vref, align 4
  %call95 = tail call i32 @regulator_disable(ptr noundef %70) #6
  br label %cleanup

cleanup:                                          ; preds = %error_adc_clk_enable, %if.end84.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then44, %do.end33, %do.end23, %if.end11.cleanup_crit_edge, %if.then8, %do.end
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %call.i, %do.end23 ], [ %15, %do.end33 ], [ %17, %if.then44 ], [ %ret.1, %error_adc_clk_enable ], [ -12, %do.end ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call49, %if.end47.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
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
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #6
  %vref = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #6
  %clk = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !131
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %res_mode.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %res_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res_mode.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then.vf610_adc_read_data.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 10, label %sw.bb2.i
    i32 12, label %sw.bb4.i
  ]

if.then.vf610_adc_read_data.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %vf610_adc_read_data.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %9, 255
  br label %vf610_adc_read_data.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and3.i = and i32 %9, 1023
  br label %vf610_adc_read_data.exit

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i = and i32 %9, 4095
  br label %vf610_adc_read_data.exit

vf610_adc_read_data.exit:                         ; preds = %sw.bb4.i, %sw.bb2.i, %sw.bb.i, %if.then.vf610_adc_read_data.exit_crit_edge
  %result.0.i = phi i32 [ %9, %if.then.vf610_adc_read_data.exit_crit_edge ], [ %and5.i, %sw.bb4.i ], [ %and3.i, %sw.bb2.i ], [ %and.i, %sw.bb.i ]
  %value = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %result.0.i, ptr %value, align 8
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %currentmode.i, align 4
  %and.i21 = and i32 %15, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.i.not = icmp eq i32 %and.i21, 0
  br i1 %tobool.i.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %vf610_adc_read_data.exit
  %conv = trunc i32 %result.0.i to i16
  %scan = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %scan to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %scan, align 8
  %call8 = tail call i64 @iio_get_time_ns(ptr noundef %dev_id) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 9
  %17 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scan_timestamp.i, align 8, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then5.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then5.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 4
  %19 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %20, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call8, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then5.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %dev_id, ptr noundef %scan) #6
  %trig = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 10
  %22 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %23) #6
  br label %if.end10

if.else:                                          ; preds = %vf610_adc_read_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  %completion = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %completion) #6
  br label %if.end10

if.end10:                                         ; preds = %if.else, %iio_push_to_buffers_with_timestamp.exit, %entry.if.end10_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vf610_adc_hw_init(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adc_feature1.i = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %adc_feature1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adc_feature1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1155, i32 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp33.i = icmp eq i32 %1, 1
  %switch.select34.i = select i1 %switch.selectcmp33.i, i32 1154, i32 %switch.select.i
  %vol_ref.i = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %vol_ref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_ref.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %do.end.i [
    i32 0, label %entry.vf610_adc_cfg_post_set.exit_crit_edge
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb8.i
  ]

entry.vf610_adc_cfg_post_set.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vf610_adc_cfg_post_set.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or7.i = or i32 %switch.select34.i, 2048
  br label %vf610_adc_cfg_post_set.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or9.i = or i32 %switch.select34.i, 4096
  br label %vf610_adc_cfg_post_set.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.43) #9
  br label %vf610_adc_cfg_post_set.exit

vf610_adc_cfg_post_set.exit:                      ; preds = %do.end.i, %sw.bb8.i, %sw.bb6.i, %entry.vf610_adc_cfg_post_set.exit_crit_edge
  %cfg_data.1.i = phi i32 [ %switch.select34.i, %do.end.i ], [ %or9.i, %sw.bb8.i ], [ %or7.i, %sw.bb6.i ], [ %switch.select34.i, %entry.vf610_adc_cfg_post_set.exit_crit_edge ]
  %ovwren.i = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 9
  %7 = ptrtoint ptr %ovwren.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ovwren.i, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %or12.i = or i32 %cfg_data.1.i, 65536
  %spec.select.i = select i1 %tobool.not.i, i32 %cfg_data.1.i, i32 %or12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %regs.i = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #6, !srcloc !136
  tail call fastcc void @vf610_adc_sample_set(ptr noundef %info)
  %calibration.i = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 8
  %14 = ptrtoint ptr %calibration.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %calibration.i, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i4 = icmp eq i8 %15, 0
  br i1 %tobool.not.i4, label %vf610_adc_cfg_post_set.exit.vf610_adc_calibration.exit_crit_edge, label %if.end.i

vf610_adc_cfg_post_set.exit.vf610_adc_calibration.exit_crit_edge: ; preds = %vf610_adc_cfg_post_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vf610_adc_calibration.exit

if.end.i:                                         ; preds = %vf610_adc_cfg_post_set.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1627389952) #6, !srcloc !136
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %21 = or i32 %20, -2147483648
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %21) #6, !srcloc !136
  %completion.i = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 9
  %call10.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.45) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end15.i, %if.end.i.if.end16.i_crit_edge
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i6 = getelementptr i8, ptr %27, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i6) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not.i = icmp eq i32 %29, 0
  br i1 %tobool24.not.i, label %if.end16.i.if.end30.i_crit_edge, label %do.end28.i

if.end16.i.if.end30.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

do.end28.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.48) #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end28.i, %if.end16.i.if.end30.i_crit_edge
  %32 = ptrtoint ptr %calibration.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %calibration.i, align 4
  br label %vf610_adc_calibration.exit

vf610_adc_calibration.exit:                       ; preds = %if.end30.i, %vf610_adc_cfg_post_set.exit.vf610_adc_calibration.exit_crit_edge
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %36 = and i32 %35, 2147483647
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %conv_mode.i = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %conv_mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %conv_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i = icmp eq i32 %39, 2
  %or.i = or i32 %37, 128
  %spec.select.i9 = select i1 %cmp.i, i32 %or.i, i32 %37
  %and3.i = and i32 %spec.select.i9, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp5.i = icmp eq i32 %39, 1
  %masksel.i = select i1 %cmp5.i, i32 1024, i32 0
  %cfg_data.1.i10 = or i32 %and3.i, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %cfg_data.1.i10) #6
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %40) #6, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge50
    i32 2, label %sw.bb19
    i32 12, label %sw.bb21
  ]

entry.sw.bb_crit_edge50:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge50
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #6
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %3 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %4, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mlock) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %completion = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %and = shl i32 %7, 24
  %or = and i32 %and, 520093696
  %8 = or i32 %or, -2147483648
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !136
  %call5 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mlock) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp9 = icmp slt i32 %call5, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mlock) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb13
    i32 9, label %sw.bb14
  ]

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %value15 = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %value15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value15, align 8
  %18 = mul i32 %17, 1000000
  %mul = add i32 %18, -867000000
  %div.neg = sdiv i32 %mul, -1840
  %sub16 = add nsw i32 %div.neg, 25000
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mlock) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13
  %storemerge = phi i32 [ %sub16, %sw.bb14 ], [ %15, %sw.bb13 ]
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %mlock) #6
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vref_uv = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %vref_uv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vref_uv, align 4
  %div20 = udiv i32 %21, 1000
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div20, ptr %val, align 4
  %res_mode = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %res_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res_mode, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val2, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sample_rate = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sample_rate, align 4
  %arrayidx = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val, align 4
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %sw.bb19, %sw.epilog, %sw.default, %if.then10, %if.then6, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb21 ], [ 11, %sw.bb19 ], [ -16, %if.then ], [ -110, %if.then6 ], [ %call5, %if.then10 ], [ -22, %sw.default ], [ 1, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val)
  %cmp1 = icmp eq i32 %3, %val
  br i1 %cmp1, label %for.body.preheader.if.then_crit_edge, label %for.inc

for.body.preheader.if.then_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %for.body.preheader.if.then_crit_edge
  %i.09.lcssa = phi i32 [ 0, %for.body.preheader.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ]
  %sample_rate = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.09.lcssa, ptr %sample_rate, align 4
  tail call fastcc void @vf610_adc_sample_set(ptr noundef %1)
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.1 = icmp eq i32 %6, %val
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.2 = icmp eq i32 %8, %val
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.3 = icmp eq i32 %10, %val
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.4 = icmp eq i32 %12, %val
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cleanup:                                          ; preds = %for.inc.3.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %readval, null
  %rem = and i32 %reg, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp ne i32 %rem, 0
  %or.cond.not = or i1 %tobool.not, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %reg)
  %cmp2 = icmp ugt i32 %reg, 48
  %or.cond8 = or i1 %cmp2, %or.cond.not
  br i1 %or.cond8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !131
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %6 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %readval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_show_samp_freq_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %arrayidx = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %3) #6
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call2
  %sub.1 = sub i32 4096, %call2
  %arrayidx.1 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %call2.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.27, i32 noundef %5) #6
  %add.1 = add i32 %call2.1, %call2
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %arrayidx.2 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %call2.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.27, i32 noundef %7) #6
  %add.2 = add i32 %call2.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %arrayidx.3 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  %call2.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.27, i32 noundef %9) #6
  %add.3 = add i32 %call2.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %arrayidx.4 = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4, align 4
  %call2.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.27, i32 noundef %11) #6
  %add.4 = add i32 %call2.4, %add.3
  %sub3 = add i32 %add.4, -1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %sub3
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %arrayidx4, align 1
  ret i32 %add.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vf610_adc_sample_set(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adc_feature1 = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  %6 = and i32 %2, -201326593
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %res_mode = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %res_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res_mode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %9, label %do.end [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 10, label %sw.bb10
    i32 12, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or11 = or i32 %7, 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or13 = or i32 %7, 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.28) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb12, %sw.bb10, %entry.sw.epilog_crit_edge
  %cfg_data.0 = phi i32 [ %7, %do.end ], [ %or13, %sw.bb12 ], [ %or11, %sw.bb10 ], [ %7, %entry.sw.epilog_crit_edge ]
  %and14 = and i32 %cfg_data.0, -100
  %clk_div = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_div, align 4
  %15 = add i32 %14, -2
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 31)
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %16, label %sw.epilog.sw.epilog30_crit_edge [
    i32 7, label %sw.bb21
    i32 0, label %sw.bb15
    i32 1, label %sw.bb17
    i32 3, label %sw.bb19
  ]

sw.epilog.sw.epilog30_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog30

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or16 = or i32 %and14, 32
  br label %sw.epilog30

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or18 = or i32 %and14, 64
  br label %sw.epilog30

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or20 = or i32 %and14, 96
  br label %sw.epilog30

sw.bb21:                                          ; preds = %sw.epilog
  %18 = ptrtoint ptr %adc_feature1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %adc_feature1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cond = icmp eq i32 %19, 0
  br i1 %cond, label %sw.bb22, label %do.end27

sw.bb22:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %or23 = or i32 %and14, 97
  br label %sw.epilog30

do.end27:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.31) #9
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %do.end27, %sw.bb22, %sw.bb19, %sw.bb17, %sw.bb15, %sw.epilog.sw.epilog30_crit_edge
  %cfg_data.1 = phi i32 [ %and14, %sw.epilog.sw.epilog30_crit_edge ], [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %or23, %sw.bb22 ], [ %and14, %do.end27 ]
  %lst_adder_index = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 6
  %22 = ptrtoint ptr %lst_adder_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lst_adder_index, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %23, label %do.end51 [
    i32 0, label %sw.epilog30.sw.epilog53_crit_edge
    i32 1, label %sw.bb31
    i32 2, label %sw.bb33
    i32 3, label %sw.bb35
    i32 4, label %sw.bb37
    i32 5, label %sw.bb39
    i32 6, label %sw.bb42
    i32 7, label %sw.bb45
  ]

sw.epilog30.sw.epilog53_crit_edge:                ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog53

sw.bb31:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %or32 = or i32 %cfg_data.1, 256
  br label %sw.epilog53

sw.bb33:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %or34 = or i32 %cfg_data.1, 512
  br label %sw.epilog53

sw.bb35:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %or36 = or i32 %cfg_data.1, 768
  br label %sw.epilog53

sw.bb37:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %or38 = or i32 %cfg_data.1, 16
  br label %sw.epilog53

sw.bb39:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %or41 = or i32 %cfg_data.1, 272
  br label %sw.epilog53

sw.bb42:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %or44 = or i32 %cfg_data.1, 528
  br label %sw.epilog53

sw.bb45:                                          ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %or47 = or i32 %cfg_data.1, 528
  br label %sw.epilog53

do.end51:                                         ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.34) #9
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %do.end51, %sw.bb45, %sw.bb42, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.epilog30.sw.epilog53_crit_edge
  %cfg_data.2 = phi i32 [ %cfg_data.1, %do.end51 ], [ %or47, %sw.bb45 ], [ %or44, %sw.bb42 ], [ %or41, %sw.bb39 ], [ %or38, %sw.bb37 ], [ %or36, %sw.bb35 ], [ %or34, %sw.bb33 ], [ %or32, %sw.bb31 ], [ %cfg_data.1, %sw.epilog30.sw.epilog53_crit_edge ]
  %and54 = and i32 %cfg_data.2, -49153
  %27 = and i32 %5, -536870913
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %sample_rate = getelementptr inbounds %struct.vf610_adc, ptr %info, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sample_rate, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %30, label %do.end70 [
    i32 0, label %sw.epilog53.do.body73_crit_edge
    i32 1, label %sw.bb56
    i32 2, label %sw.bb58
    i32 3, label %sw.bb61
    i32 4, label %sw.bb64
  ]

sw.epilog53.do.body73_crit_edge:                  ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

sw.bb56:                                          ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  %or57 = or i32 %28, 32
  br label %do.body73

sw.bb58:                                          ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  %or59 = or i32 %28, 32
  %or60 = or i32 %and54, 16384
  br label %do.body73

sw.bb61:                                          ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  %or62 = or i32 %28, 32
  %or63 = or i32 %and54, 32768
  br label %do.body73

sw.bb64:                                          ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  %or65 = or i32 %28, 32
  %or66 = or i32 %cfg_data.2, 49152
  br label %do.body73

do.end70:                                         ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.37) #9
  br label %do.body73

do.body73:                                        ; preds = %do.end70, %sw.bb64, %sw.bb61, %sw.bb58, %sw.bb56, %sw.epilog53.do.body73_crit_edge
  %gc_data.0 = phi i32 [ %28, %do.end70 ], [ %or65, %sw.bb64 ], [ %or62, %sw.bb61 ], [ %or59, %sw.bb58 ], [ %or57, %sw.bb56 ], [ %28, %sw.epilog53.do.body73_crit_edge ]
  %cfg_data.3 = phi i32 [ %and54, %do.end70 ], [ %or66, %sw.bb64 ], [ %or63, %sw.bb61 ], [ %or60, %sw.bb58 ], [ %and54, %sw.bb56 ], [ %and54, %sw.epilog53.do.body73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %cfg_data.3)
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr77 = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %34) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %gc_data.0)
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr82 = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %37) #6, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_set_conversion_mode(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #6
  %conv_mode = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %conv_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %conv_mode, align 4
  %clk.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk.i, align 8
  %call.i = tail call i32 @clk_get_rate(ptr noundef %4) #6
  %5 = ptrtoint ptr %conv_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %conv_mode, align 4
  %arrayidx.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 6, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = udiv i32 %call.i, %8
  %add.i = add i32 %div.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i.i = icmp eq i32 %add.i, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %add.i, i1 true) #6, !range !130
  %sub.i.i = sub nuw nsw i32 32, %9
  %sub.i.op.i = shl nuw i32 1, %sub.i.i
  %shl.i = select i1 %tobool.not.i.i, i32 1, i32 %sub.i.op.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %shl.sink.i = phi i32 [ %shl.i, %if.then.i ], [ 8, %entry.if.end.i_crit_edge ]
  %10 = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.sink.i, ptr %10, align 4
  %div5.i = udiv i32 %call.i, %shl.sink.i
  %div6.i = udiv i32 1000000000, %div5.i
  %default_sample_time.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 7
  %12 = ptrtoint ptr %default_sample_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %default_sample_time.i, align 4
  %div7.i = udiv i32 %13, %div6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div7.i)
  %cmp9.i = icmp ult i32 %div7.i, 3
  br i1 %cmp9.i, label %if.end.i.if.then10.i_crit_edge, label %for.inc.i

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then10.i:                                      ; preds = %for.inc.6.i.if.then10.i_crit_edge, %for.inc.5.i.if.then10.i_crit_edge, %for.inc.4.i.if.then10.i_crit_edge, %for.inc.3.i.if.then10.i_crit_edge, %for.inc.2.i.if.then10.i_crit_edge, %for.inc.1.i.if.then10.i_crit_edge, %for.inc.i.if.then10.i_crit_edge, %if.end.i.if.then10.i_crit_edge
  %i.046.lcssa.i = phi i32 [ 0, %if.end.i.if.then10.i_crit_edge ], [ 1, %for.inc.i.if.then10.i_crit_edge ], [ 2, %for.inc.1.i.if.then10.i_crit_edge ], [ 3, %for.inc.2.i.if.then10.i_crit_edge ], [ 4, %for.inc.3.i.if.then10.i_crit_edge ], [ 5, %for.inc.4.i.if.then10.i_crit_edge ], [ 6, %for.inc.5.i.if.then10.i_crit_edge ], [ 7, %for.inc.6.i.if.then10.i_crit_edge ]
  %lst_adder_index.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 6
  %14 = ptrtoint ptr %lst_adder_index.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.046.lcssa.i, ptr %lst_adder_index.i, align 4
  br label %vf610_adc_calculate_rates.exit

for.inc.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div7.i)
  %cmp9.1.i = icmp ult i32 %div7.i, 5
  br i1 %cmp9.1.i, label %for.inc.i.if.then10.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then10.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div7.i)
  %cmp9.2.i = icmp ult i32 %div7.i, 7
  br i1 %cmp9.2.i, label %for.inc.1.i.if.then10.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then10.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %div7.i)
  %cmp9.3.i = icmp ult i32 %div7.i, 9
  br i1 %cmp9.3.i, label %for.inc.2.i.if.then10.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then10.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %div7.i)
  %cmp9.4.i = icmp ult i32 %div7.i, 13
  br i1 %cmp9.4.i, label %for.inc.3.i.if.then10.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then10.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %div7.i)
  %cmp9.5.i = icmp ult i32 %div7.i, 17
  br i1 %cmp9.5.i, label %for.inc.4.i.if.then10.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then10.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %div7.i)
  %cmp9.6.i = icmp ult i32 %div7.i, 21
  br i1 %cmp9.6.i, label %for.inc.5.i.if.then10.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then10.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %div7.i)
  %cmp9.7.i = icmp ult i32 %div7.i, 25
  br i1 %cmp9.7.i, label %for.inc.6.i.if.then10.i_crit_edge, label %for.inc.6.i.vf610_adc_calculate_rates.exit_crit_edge

for.inc.6.i.vf610_adc_calculate_rates.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vf610_adc_calculate_rates.exit

for.inc.6.i.if.then10.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

vf610_adc_calculate_rates.exit:                   ; preds = %for.inc.6.i.vf610_adc_calculate_rates.exit_crit_edge, %if.then10.i
  %lst_adder_index16.i = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 6
  %15 = ptrtoint ptr %lst_adder_index16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lst_adder_index16.i, align 4
  %arrayidx17.i = getelementptr [8 x i32], ptr @vf610_lst_adder, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %18, 25
  %add19.i = add i32 %18, 31
  %div20.i = udiv i32 %div5.i, %add19.i
  %arrayidx21.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 0
  %19 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div20.i, ptr %arrayidx21.i, align 4
  %mul.1.i = shl i32 %add18.i, 2
  %add19.1.i = add i32 %mul.1.i, 6
  %div20.1.i = udiv i32 %div5.i, %add19.1.i
  %arrayidx21.1.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div20.1.i, ptr %arrayidx21.1.i, align 4
  %mul.2.i = shl i32 %add18.i, 3
  %add19.2.i = or i32 %mul.2.i, 6
  %div20.2.i = udiv i32 %div5.i, %add19.2.i
  %arrayidx21.2.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div20.2.i, ptr %arrayidx21.2.i, align 4
  %mul.3.i = shl i32 %add18.i, 4
  %add19.3.i = or i32 %mul.3.i, 6
  %div20.3.i = udiv i32 %div5.i, %add19.3.i
  %arrayidx21.3.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div20.3.i, ptr %arrayidx21.3.i, align 4
  %mul.4.i = shl i32 %add18.i, 5
  %add19.4.i = or i32 %mul.4.i, 6
  %div20.4.i = udiv i32 %div5.i, %add19.4.i
  %arrayidx21.4.i = getelementptr %struct.vf610_adc, ptr %1, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %arrayidx21.4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div20.4.i, ptr %arrayidx21.4.i, align 4
  tail call fastcc void @vf610_adc_hw_init(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mlock) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vf610_get_conversion_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %conv_mode = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %conv_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conv_mode, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %5 = or i32 %4, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #6, !srcloc !136
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %8 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %10 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %masklength, align 8
  %call5 = tail call i32 @_find_first_bit_be(ptr noundef %9, i32 noundef %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %and = shl i32 %call5, 24
  %or6 = and i32 %and, 520093696
  %12 = or i32 %or6, -2147483648
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !136
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %5 = and i32 %4, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 520093696) #6, !srcloc !136
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_validate_scan_mask_onehot(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %7 = or i32 %6, 520093696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !136
  %clk = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %vref = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vref, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %13) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_adc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vref = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.disable_reg_crit_edge

if.end.disable_reg_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_reg

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %disable_reg

if.end6:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @vf610_adc_hw_init(ptr noundef %3)
  br label %cleanup

disable_reg:                                      ; preds = %if.then3.i, %if.end.disable_reg_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.disable_reg_crit_edge ]
  %8 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vref, align 4
  %call8 = tail call i32 @regulator_disable(ptr noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_reg, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %disable_reg ], [ 0, %if.end6 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !59, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_vf610_adc__288_969_vf610_adc_driver_init6, !1, !"__initcall__kmod_vf610_adc__288_969_vf610_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/vf610_adc.c", i32 969, i32 1}
!2 = !{ptr @__exitcall_vf610_adc_driver_exit, !1, !"__exitcall_vf610_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/vf610_adc.c", i32 971, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/vf610_adc.c", i32 972, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/vf610_adc.c", i32 973, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/vf610_adc.c", i32 963, i32 13}
!12 = !{ptr @vf610_adc_driver, !13, !"vf610_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/vf610_adc.c", i32 959, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/vf610_adc.c", i32 809, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vf610_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @vf610_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/vf610_adc.c", i32 828, i32 3}
!24 = !{ptr @vf610_adc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vf610_adc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/vf610_adc.c", i32 832, i32 39}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/vf610_adc.c", i32 834, i32 3}
!30 = !{ptr @vf610_adc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vf610_adc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/vf610_adc.c", i32 839, i32 46}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/vf610_adc.c", i32 849, i32 48}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/vf610_adc.c", i32 852, i32 48}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/vf610_adc.c", i32 869, i32 3}
!40 = !{ptr @vf610_adc_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vf610_adc_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/vf610_adc.c", i32 880, i32 3}
!44 = !{ptr @vf610_adc_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vf610_adc_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/vf610_adc.c", i32 886, i32 3}
!48 = !{ptr @vf610_adc_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vf610_adc_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @vf610_adc_iio_info, !54, !"vf610_adc_iio_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/vf610_adc.c", i32 787, i32 30}
!55 = !{ptr @vf610_attribute_group, !56, !"vf610_attribute_group", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/vf610_adc.c", i32 622, i32 37}
!57 = !{ptr @vf610_attributes, !58, !"vf610_attributes", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/vf610_adc.c", i32 617, i32 26}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/vf610_adc.c", i32 615, i32 8}
!61 = !{ptr @iio_dev_attr_sampling_frequency_available, !60, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/vf610_adc.c", i32 607, i32 4}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/vf610_adc.c", i32 357, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vf610_adc_sample_set._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @vf610_adc_sample_set._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/vf610_adc.c", i32 381, i32 4}
!71 = !{ptr @vf610_adc_sample_set._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @vf610_adc_sample_set._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/vf610_adc.c", i32 419, i32 3}
!75 = !{ptr @vf610_adc_sample_set._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @vf610_adc_sample_set._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/vf610_adc.c", i32 444, i32 3}
!79 = !{ptr @vf610_adc_sample_set._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @vf610_adc_sample_set._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @vf610_adc_iio_channels, !82, !"vf610_adc_iio_channels", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/vf610_adc.c", i32 531, i32 35}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/vf610_adc.c", i32 499, i32 2}
!85 = !{ptr @vf610_ext_info, !86, !"vf610_ext_info", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/vf610_adc.c", i32 498, i32 44}
!87 = !{ptr @vf610_conversion_mode, !88, !"vf610_conversion_mode", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/vf610_adc.c", i32 491, i32 30}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/vf610_adc.c", i32 488, i32 50}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/vf610_adc.c", i32 488, i32 60}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/vf610_adc.c", i32 489, i32 8}
!95 = !{ptr @vf610_conv_modes, !96, !"vf610_conv_modes", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/vf610_adc.c", i32 488, i32 27}
!97 = !{ptr @vf610_lst_adder, !98, !"vf610_lst_adder", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/vf610_adc.c", i32 178, i32 18}
!99 = distinct !{null, !100, !"vf610_hw_avgs", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/vf610_adc.c", i32 177, i32 18}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/vf610_adc.c", i32 283, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @vf610_adc_cfg_post_set._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @vf610_adc_cfg_post_set._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/adc/vf610_adc.c", i32 309, i32 3}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vf610_adc_calibration._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @vf610_adc_calibration._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/vf610_adc.c", i32 313, i32 3}
!113 = !{ptr @vf610_adc_calibration._entry.47, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @vf610_adc_calibration._entry_ptr.49, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @iio_triggered_buffer_setup_ops, !116, !"iio_triggered_buffer_setup_ops", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/vf610_adc.c", i32 766, i32 42}
!117 = !{ptr @vf610_adc_match, !118, !"vf610_adc_match", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/vf610_adc.c", i32 794, i32 34}
!119 = !{ptr @vf610_adc_pm_ops, !120, !"vf610_adc_pm_ops", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/vf610_adc.c", i32 957, i32 8}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i32 0, i32 33}
!131 = !{i64 4894385}
!132 = !{i64 2155176107}
!133 = !{i64 2155175616}
!134 = !{i8 0, i8 2}
!135 = !{i64 2155147795}
!136 = !{i64 4893967}
!137 = !{i64 2155148208}
!138 = !{i64 2155148633}
!139 = !{i64 2155149308}
!140 = !{i64 2155149542}
!141 = !{i64 2155151898}
!142 = !{i64 2155153986}
!143 = !{i64 2155154232}
!144 = !{i64 2155179262}
!145 = !{i64 2155183187}
!146 = !{i64 2155154913}
!147 = !{i64 2155155404}
!148 = !{i64 2155162281}
!149 = !{i64 2155162694}
!150 = !{i64 2155180473}
!151 = !{i64 2155180697}
!152 = !{i64 2155181198}
!153 = !{i64 2155181864}
!154 = !{i64 2155182088}
!155 = !{i64 2155182501}
!156 = !{i64 2155194578}
!157 = !{i64 2155194805}
