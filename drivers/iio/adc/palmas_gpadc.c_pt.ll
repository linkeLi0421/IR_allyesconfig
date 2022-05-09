; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/palmas_gpadc.c_pt.bc'
source_filename = "../drivers/iio/adc/palmas_gpadc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.palmas_gpadc_info = type { i32, i32, i32, i32, i8, i8, i32, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.palmas_platform_data = type { i32, i32, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.palmas_gpadc_platform_data = type { i32, i32, i8, i32, i32, i32, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.palmas_gpadc = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, %struct.completion, %struct.palmas_adc_wakeup_property, %struct.palmas_adc_wakeup_property, i8, i8, i32, %struct.mutex }
%struct.palmas_adc_wakeup_property = type { i32, i32, i32 }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_palmas_gpadc__294_847_palmas_gpadc_driver_init6 = internal global ptr @palmas_gpadc_driver_init, section ".initcall6.init", align 4
@palmas_gpadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @palmas_gpadc_probe, ptr @palmas_gpadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_gpadc_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_palmas_gpadc_driver_exit = internal global ptr @palmas_gpadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [45 x i8] c"palmas_gpadc.description=palmas GPADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [63 x i8] c"palmas_gpadc.author=Pradeep Goudagunta<pgoudagunta@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [41 x i8] c"palmas_gpadc.alias=platform:palmas-gpadc\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [47 x i8] c"palmas_gpadc.file=drivers/iio/adc/palmas_gpadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [28 x i8] c"palmas_gpadc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"palmas-gpadc\00", [19 x i8] zeroinitializer }, align 32
@of_palmas_gpadc_match_tbl = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-gpadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@palmas_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @palmas_gpadc_suspend, ptr @palmas_gpadc_resume, ptr @palmas_gpadc_suspend, ptr @palmas_gpadc_resume, ptr @palmas_gpadc_suspend, ptr @palmas_gpadc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iio_device_alloc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"palmas_gpadc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/adc/palmas_gpadc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry_ptr = internal global ptr @palmas_gpadc_probe._entry, section ".printk_index", align 4
@palmas_gpadc_info = internal global { [16 x %struct.palmas_gpadc_info], [128 x i8] } { [16 x %struct.palmas_gpadc_info] [%struct.palmas_gpadc_info { i32 2064, i32 3112, i32 630, i32 950, i8 0, i8 1, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 630, i32 950, i8 0, i8 1, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 1260, i32 1900, i8 2, i8 3, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 630, i32 950, i8 0, i8 1, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 630, i32 950, i8 0, i8 1, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 630, i32 950, i8 0, i8 1, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 2520, i32 3800, i8 4, i8 5, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 2520, i32 3800, i8 6, i8 7, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 3150, i32 4750, i8 8, i8 9, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 5670, i32 8550, i8 10, i8 11, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 3465, i32 5225, i8 12, i8 13, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 0, i32 0, i32 0, i32 0, i8 -1, i8 -1, i32 0, i32 0, i32 0, i8 1 }, %struct.palmas_gpadc_info { i32 0, i32 0, i32 0, i32 0, i8 -1, i8 -1, i32 0, i32 0, i32 0, i8 1 }, %struct.palmas_gpadc_info { i32 0, i32 0, i32 0, i32 0, i8 -1, i8 -1, i32 0, i32 0, i32 0, i8 1 }, %struct.palmas_gpadc_info { i32 2064, i32 3112, i32 3645, i32 5225, i8 14, i8 15, i32 0, i32 0, i32 0, i8 0 }, %struct.palmas_gpadc_info { i32 0, i32 0, i32 0, i32 0, i8 -1, i8 -1, i32 0, i32 0, i32 0, i8 1 }], [128 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get virq failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry_ptr.9 = internal global ptr @palmas_gpadc_probe._entry.7, section ".printk_index", align 4
@palmas_gpadc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request irq %d failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry_ptr.12 = internal global ptr @palmas_gpadc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"palmas-adc-auto-0\00", [46 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request auto0 irq %d failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry_ptr.16 = internal global ptr @palmas_gpadc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"palmas-adc-auto-1\00", [46 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request auto1 irq %d failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry_ptr.20 = internal global ptr @palmas_gpadc_probe._entry.18, section ".printk_index", align 4
@palmas_gpadc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @palmas_gpadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@palmas_gpadc_iio_channel = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.66, i8 64 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.67, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.68, i8 64 }, %struct.iio_chan_spec { i32 9, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.69, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.70, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.71, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.72, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.73, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.74, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.75, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.76, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.77, i8 64 }, %struct.iio_chan_spec { i32 9, i32 12, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.78, i8 64 }, %struct.iio_chan_spec { i32 9, i32 13, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.79, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.80, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.81, i8 64 }], [352 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 612, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iio_device_register() failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_gpadc_probe._entry_ptr.23 = internal global ptr @palmas_gpadc_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti,channel0-current-microamp\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti,channel3-current-microamp\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,enable-extended-delay\00", [39 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@palmas_gpadc_irq_auto.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"palmas_gpadc\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas_gpadc_irq_auto\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Threshold interrupt %d occurs\0A\00", [33 x i8] zeroinitializer }, align 32
@palmas_disable_auto_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"GPADC_CTRL1 update failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"palmas_disable_auto_conversion\00", [33 x i8] zeroinitializer }, align 32
@palmas_disable_auto_conversion._entry_ptr = internal global ptr @palmas_disable_auto_conversion._entry, section ".printk_index", align 4
@palmas_disable_auto_conversion._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AUTO_CTRL update failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@palmas_disable_auto_conversion._entry_ptr.35 = internal global ptr @palmas_disable_auto_conversion._entry.33, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@palmas_disable_auto_conversion._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@palmas_disable_auto_conversion._entry_ptr.37 = internal global ptr @palmas_disable_auto_conversion._entry.36, section ".printk_index", align 4
@palmas_gpadc_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ADC start conversion failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas_gpadc_read_raw\00", [42 x i8] zeroinitializer }, align 32
@palmas_gpadc_read_raw._entry_ptr = internal global ptr @palmas_gpadc_read_raw._entry, section ".printk_index", align 4
@palmas_gpadc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RT_CTRL update failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"palmas_gpadc_enable\00", [44 x i8] zeroinitializer }, align 32
@palmas_gpadc_enable._entry_ptr = internal global ptr @palmas_gpadc_enable._entry, section ".printk_index", align 4
@palmas_gpadc_enable._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to update current setting: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@palmas_gpadc_enable._entry_ptr.44 = internal global ptr @palmas_gpadc_enable._entry.42, section ".printk_index", align 4
@palmas_gpadc_enable._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SW_SELECT update failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@palmas_gpadc_enable._entry_ptr.47 = internal global ptr @palmas_gpadc_enable._entry.45, section ".printk_index", align 4
@palmas_gpadc_enable._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SW_SELECT write failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@palmas_gpadc_enable._entry_ptr.50 = internal global ptr @palmas_gpadc_enable._entry.48, section ".printk_index", align 4
@palmas_gpadc_enable._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CTRL1 update failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@palmas_gpadc_enable._entry_ptr.53 = internal global ptr @palmas_gpadc_enable._entry.51, section ".printk_index", align 4
@palmas_gpadc_start_mask_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"GPADC INT MASK update failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"palmas_gpadc_start_mask_interrupt\00", [62 x i8] zeroinitializer }, align 32
@palmas_gpadc_start_mask_interrupt._entry_ptr = internal global ptr @palmas_gpadc_start_mask_interrupt._entry, section ".printk_index", align 4
@palmas_gpadc_start_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SELECT_SW_START write failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"palmas_gpadc_start_conversion\00", [34 x i8] zeroinitializer }, align 32
@palmas_gpadc_start_conversion._entry_ptr = internal global ptr @palmas_gpadc_start_conversion._entry, section ".printk_index", align 4
@palmas_gpadc_start_conversion._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"conversion not completed\0A\00", [38 x i8] zeroinitializer }, align 32
@palmas_gpadc_start_conversion._entry_ptr.60 = internal global ptr @palmas_gpadc_start_conversion._entry.58, section ".printk_index", align 4
@palmas_gpadc_start_conversion._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SW_CONV0_LSB read failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@palmas_gpadc_start_conversion._entry_ptr.63 = internal global ptr @palmas_gpadc_start_conversion._entry.61, section ".printk_index", align 4
@palmas_gpadc_get_calibrated_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mismatch with calibration\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"palmas_gpadc_get_calibrated_code\00", [63 x i8] zeroinitializer }, align 32
@palmas_gpadc_get_calibrated_code._entry_ptr = internal global ptr @palmas_gpadc_get_calibrated_code._entry, section ".printk_index", align 4
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN0\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN1\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN2\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN3\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN4\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN5\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN6\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN7\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN8\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas-gpadc-chan-IN9\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas-gpadc-chan-IN10\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas-gpadc-chan-IN11\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas-gpadc-chan-IN12\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas-gpadc-chan-IN13\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas-gpadc-chan-IN14\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas-gpadc-chan-IN15\00", [41 x i8] zeroinitializer }, align 32
@palmas_gpadc_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TRIM read failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas_gpadc_calibrate\00", [41 x i8] zeroinitializer }, align 32
@palmas_gpadc_calibrate._entry_ptr = internal global ptr @palmas_gpadc_calibrate._entry, section ".printk_index", align 4
@palmas_gpadc_calibrate._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@palmas_gpadc_calibrate._entry_ptr.85 = internal global ptr @palmas_gpadc_calibrate._entry.84, section ".printk_index", align 4
@palmas_adc_wakeup_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 678, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AUTO_CTRL write failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"palmas_adc_wakeup_configure\00", [36 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_configure._entry_ptr = internal global ptr @palmas_adc_wakeup_configure._entry, section ".printk_index", align 4
@palmas_adc_wakeup_configure._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"THRES_CONV0_LSB write failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_configure._entry_ptr.90 = internal global ptr @palmas_adc_wakeup_configure._entry.88, section ".printk_index", align 4
@palmas_adc_wakeup_configure._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"THRES_CONV0_MSB write failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_configure._entry_ptr.93 = internal global ptr @palmas_adc_wakeup_configure._entry.91, section ".printk_index", align 4
@palmas_adc_wakeup_configure._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.3, i32 731, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"THRES_CONV1_LSB write failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_configure._entry_ptr.96 = internal global ptr @palmas_adc_wakeup_configure._entry.94, section ".printk_index", align 4
@palmas_adc_wakeup_configure._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.3, i32 740, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"THRES_CONV1_MSB write failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_configure._entry_ptr.99 = internal global ptr @palmas_adc_wakeup_configure._entry.97, section ".printk_index", align 4
@palmas_adc_wakeup_configure._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.87, ptr @.str.3, i32 748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AUTO_SELECT write failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_configure._entry_ptr.102 = internal global ptr @palmas_adc_wakeup_configure._entry.100, section ".printk_index", align 4
@palmas_adc_wakeup_configure._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 757, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_configure._entry_ptr.104 = internal global ptr @palmas_adc_wakeup_configure._entry.103, section ".printk_index", align 4
@palmas_adc_wakeup_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.105, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"palmas_adc_wakeup_reset\00", [40 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_reset._entry_ptr = internal global ptr @palmas_adc_wakeup_reset._entry, section ".printk_index", align 4
@palmas_adc_wakeup_reset._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Disable auto conversion failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@palmas_adc_wakeup_reset._entry_ptr.108 = internal global ptr @palmas_adc_wakeup_reset._entry.106, section ".printk_index", align 4
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"palmas_gpadc_driver\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 838, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 842, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"of_palmas_gpadc_match_tbl\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 832, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"palmas_pm_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 827, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 518, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"palmas_gpadc_info\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 60, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 527, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 535, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 545, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 558, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 560, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 574, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 576, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [22 x i8] c"palmas_gpadc_iio_info\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 434, i32 30 }
@___asan_gen_.181 = private unnamed_addr constant [25 x i8] c"palmas_gpadc_iio_channel\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 448, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 612, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 479, i32 33 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 483, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 488, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 87, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 193, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 155, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 165, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 175, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 409, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 232, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 247, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 258, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 265, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 271, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 214, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 348, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 355, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 362, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 379, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 449, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 450, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 451, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 452, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 453, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 454, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 455, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 456, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 457, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 458, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 459, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 460, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 461, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 462, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 463, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 464, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 311, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 318, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 678, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 699, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 708, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 730, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 739, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 748, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 757, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 769, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.425 = private constant [34 x i8] c"../drivers/iio/adc/palmas_gpadc.c\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 775, i32 3 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_palmas_gpadc_driver_exit, ptr @__initcall__kmod_palmas_gpadc__294_847_palmas_gpadc_driver_init6, ptr @palmas_adc_wakeup_configure._entry, ptr @palmas_adc_wakeup_configure._entry.100, ptr @palmas_adc_wakeup_configure._entry.103, ptr @palmas_adc_wakeup_configure._entry.88, ptr @palmas_adc_wakeup_configure._entry.91, ptr @palmas_adc_wakeup_configure._entry.94, ptr @palmas_adc_wakeup_configure._entry.97, ptr @palmas_adc_wakeup_configure._entry_ptr, ptr @palmas_adc_wakeup_configure._entry_ptr.102, ptr @palmas_adc_wakeup_configure._entry_ptr.104, ptr @palmas_adc_wakeup_configure._entry_ptr.90, ptr @palmas_adc_wakeup_configure._entry_ptr.93, ptr @palmas_adc_wakeup_configure._entry_ptr.96, ptr @palmas_adc_wakeup_configure._entry_ptr.99, ptr @palmas_adc_wakeup_reset._entry, ptr @palmas_adc_wakeup_reset._entry.106, ptr @palmas_adc_wakeup_reset._entry_ptr, ptr @palmas_adc_wakeup_reset._entry_ptr.108, ptr @palmas_disable_auto_conversion._entry, ptr @palmas_disable_auto_conversion._entry.33, ptr @palmas_disable_auto_conversion._entry.36, ptr @palmas_disable_auto_conversion._entry_ptr, ptr @palmas_disable_auto_conversion._entry_ptr.35, ptr @palmas_disable_auto_conversion._entry_ptr.37, ptr @palmas_gpadc_calibrate._entry, ptr @palmas_gpadc_calibrate._entry.84, ptr @palmas_gpadc_calibrate._entry_ptr, ptr @palmas_gpadc_calibrate._entry_ptr.85, ptr @palmas_gpadc_driver_exit, ptr @palmas_gpadc_enable._entry, ptr @palmas_gpadc_enable._entry.42, ptr @palmas_gpadc_enable._entry.45, ptr @palmas_gpadc_enable._entry.48, ptr @palmas_gpadc_enable._entry.51, ptr @palmas_gpadc_enable._entry_ptr, ptr @palmas_gpadc_enable._entry_ptr.44, ptr @palmas_gpadc_enable._entry_ptr.47, ptr @palmas_gpadc_enable._entry_ptr.50, ptr @palmas_gpadc_enable._entry_ptr.53, ptr @palmas_gpadc_get_calibrated_code._entry, ptr @palmas_gpadc_get_calibrated_code._entry_ptr, ptr @palmas_gpadc_probe._entry, ptr @palmas_gpadc_probe._entry.10, ptr @palmas_gpadc_probe._entry.14, ptr @palmas_gpadc_probe._entry.18, ptr @palmas_gpadc_probe._entry.21, ptr @palmas_gpadc_probe._entry.7, ptr @palmas_gpadc_probe._entry_ptr, ptr @palmas_gpadc_probe._entry_ptr.12, ptr @palmas_gpadc_probe._entry_ptr.16, ptr @palmas_gpadc_probe._entry_ptr.20, ptr @palmas_gpadc_probe._entry_ptr.23, ptr @palmas_gpadc_probe._entry_ptr.9, ptr @palmas_gpadc_read_raw._entry, ptr @palmas_gpadc_read_raw._entry_ptr, ptr @palmas_gpadc_start_conversion._entry, ptr @palmas_gpadc_start_conversion._entry.58, ptr @palmas_gpadc_start_conversion._entry.61, ptr @palmas_gpadc_start_conversion._entry_ptr, ptr @palmas_gpadc_start_conversion._entry_ptr.60, ptr @palmas_gpadc_start_conversion._entry_ptr.63, ptr @palmas_gpadc_start_mask_interrupt._entry, ptr @palmas_gpadc_start_mask_interrupt._entry_ptr, ptr @palmas_gpadc_driver, ptr @.str, ptr @of_palmas_gpadc_match_tbl, ptr @palmas_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @palmas_gpadc_info, ptr @palmas_gpadc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @palmas_gpadc_iio_info, ptr @palmas_gpadc_iio_channel, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @init_completion.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.105, ptr @.str.107], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_palmas_gpadc_match_tbl to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_info to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_iio_channel to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_disable_auto_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_disable_auto_conversion._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_disable_auto_conversion._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_enable._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_enable._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_enable._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_enable._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_start_mask_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_start_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_start_conversion._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_start_conversion._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_get_calibrated_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpadc_calibrate._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_configure._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_configure._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_configure._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_configure._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_configure._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_configure._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_adc_wakeup_reset._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_gpadc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @palmas_gpadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_gpadc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %d1.i = alloca i32, align 4
  %d2.i = alloca i32, align 4
  %pval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.land.lhs.true5_crit_edge, label %land.lhs.true

entry.land.lhs.true5_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true5

land.lhs.true:                                    ; preds = %entry
  %gpadc_pdata1 = getelementptr inbounds %struct.palmas_platform_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %gpadc_pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpadc_pdata1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.land.lhs.true5_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true.land.lhs.true5_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true.land.lhs.true5_crit_edge, %entry.land.lhs.true5_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i) #5
  %8 = ptrtoint ptr %pval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pval.i, align 4, !annotation !221
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %palmas_gpadc_get_adc_dt_data.exit.thread, label %if.end.i

palmas_gpadc_get_adc_dt_data.exit.thread:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.24, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pval.i, align 4
  %ch0_current.i = getelementptr inbounds %struct.palmas_gpadc_platform_data, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ch0_current.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ch0_current.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %call.i.i22.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.25, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i22.i)
  %tobool7.not.i = icmp sgt i32 %call.i.i22.i, -1
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.palmas_gpadc_get_adc_dt_data.exit_crit_edge

if.end5.i.palmas_gpadc_get_adc_dt_data.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %palmas_gpadc_get_adc_dt_data.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pval.i, align 4
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call.i.i, align 4
  br label %palmas_gpadc_get_adc_dt_data.exit

palmas_gpadc_get_adc_dt_data.exit:                ; preds = %if.then8.i, %if.end5.i.palmas_gpadc_get_adc_dt_data.exit_crit_edge
  %call.i23.i = call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.26, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i23.i, null
  %extended_delay.i = getelementptr inbounds %struct.palmas_gpadc_platform_data, ptr %call.i.i, i32 0, i32 2
  %frombool.i = zext i1 %tobool.i.i to i8
  %15 = ptrtoint ptr %extended_delay.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %extended_delay.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #5
  br label %if.end15

if.end15:                                         ; preds = %palmas_gpadc_get_adc_dt_data.exit, %land.lhs.true.if.end15_crit_edge
  %gpadc_pdata.2.ph = phi ptr [ %5, %land.lhs.true.if.end15_crit_edge ], [ %call.i.i, %palmas_gpadc_get_adc_dt_data.exit ]
  %call17 = call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 208) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call17, i32 0, i32 19
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %17, align 4
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i, align 4
  %palmas = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %palmas to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %palmas, align 4
  %adc_info = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 8
  %24 = ptrtoint ptr %adc_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @palmas_gpadc_info, ptr %adc_info, align 4
  %lock = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 15
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @palmas_gpadc_probe.__key) #5
  %conv_completion = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 9
  %25 = ptrtoint ptr %conv_completion to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %conv_completion, align 4
  %wait.i = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call17, ptr %driver_data.i.i, align 4
  %auto_conversion_period_ms = getelementptr inbounds %struct.palmas_gpadc_platform_data, ptr %gpadc_pdata.2.ph, i32 0, i32 5
  %27 = ptrtoint ptr %auto_conversion_period_ms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %auto_conversion_period_ms, align 4
  %auto_conversion_period = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 14
  %29 = ptrtoint ptr %auto_conversion_period to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %auto_conversion_period, align 4
  %30 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %palmas, align 4
  %irq_data.i = getelementptr inbounds %struct.palmas, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_data.i, align 4
  %call.i = call i32 @regmap_irq_get_virq(ptr noundef %33, i32 noundef 18) #5
  %irq = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 5
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp slt i32 %call.i, 0
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %17, align 4
  br i1 %cmp34, label %do.end38, label %if.end42

do.end38:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.8, i32 noundef %call.i) #8
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end21
  %init_name.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i252 = icmp eq ptr %40, null
  br i1 %tobool.not.i252, label %if.end.i253, label %if.end42.dev_name.exit_crit_edge

if.end42.dev_name.exit_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i253:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i253, %if.end42.dev_name.exit_crit_edge
  %retval.0.i254 = phi ptr [ %42, %if.end.i253 ], [ %40, %if.end42.dev_name.exit_crit_edge ]
  %call46 = call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef null, ptr noundef nonnull @palmas_gpadc_irq, i32 noundef 8192, ptr noundef %retval.0.i254, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end54

do.end51:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %17, align 4
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.11, i32 noundef %46, i32 noundef %call46) #8
  br label %cleanup

if.end54:                                         ; preds = %dev_name.exit
  %adc_wakeup1_data = getelementptr inbounds %struct.palmas_gpadc_platform_data, ptr %gpadc_pdata.2.ph, i32 0, i32 6
  %47 = ptrtoint ptr %adc_wakeup1_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adc_wakeup1_data, align 4
  %tobool55.not = icmp eq ptr %48, null
  br i1 %tobool55.not, label %if.end54.if.end69_crit_edge, label %if.then56

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then56:                                        ; preds = %if.end54
  %wakeup1_data = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 10
  %49 = call ptr @memcpy(ptr %wakeup1_data, ptr %48, i32 12)
  %wakeup1_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 12
  %50 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %wakeup1_enable, align 4
  %call58 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #5
  %irq_auto_0 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 6
  %51 = ptrtoint ptr %irq_auto_0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call58, ptr %irq_auto_0, align 4
  %call60 = call i32 @request_threaded_irq(i32 noundef %call58, ptr noundef null, ptr noundef nonnull @palmas_gpadc_irq_auto, i32 noundef 8192, ptr noundef nonnull @.str.13, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end65, label %if.then56.if.end69_crit_edge

if.then56.if.end69_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.end65:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %17, align 4
  %54 = ptrtoint ptr %irq_auto_0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq_auto_0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.15, i32 noundef %55, i32 noundef %call60) #8
  br label %out_irq_free

if.end69:                                         ; preds = %if.then56.if.end69_crit_edge, %if.end54.if.end69_crit_edge
  %adc_wakeup2_data = getelementptr inbounds %struct.palmas_gpadc_platform_data, ptr %gpadc_pdata.2.ph, i32 0, i32 7
  %56 = ptrtoint ptr %adc_wakeup2_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adc_wakeup2_data, align 4
  %tobool70.not = icmp eq ptr %57, null
  br i1 %tobool70.not, label %if.end69.if.end84_crit_edge, label %if.then71

if.end69.if.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then71:                                        ; preds = %if.end69
  %wakeup2_data = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 11
  %58 = call ptr @memcpy(ptr %wakeup2_data, ptr %57, i32 12)
  %wakeup2_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 13
  %59 = ptrtoint ptr %wakeup2_enable to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %wakeup2_enable, align 1
  %call73 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #5
  %irq_auto_1 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 7
  %60 = ptrtoint ptr %irq_auto_1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call73, ptr %irq_auto_1, align 4
  %call75 = call i32 @request_threaded_irq(i32 noundef %call73, ptr noundef null, ptr noundef nonnull @palmas_gpadc_irq_auto, i32 noundef 8192, ptr noundef nonnull @.str.17, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end80, label %if.then71.if.end84_crit_edge

if.then71.if.end84_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.end80:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %17, align 4
  %63 = ptrtoint ptr %irq_auto_1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq_auto_1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.19, i32 noundef %64, i32 noundef %call75) #8
  br label %out_irq_auto0_free

if.end84:                                         ; preds = %if.then71.if.end84_crit_edge, %if.end69.if.end84_crit_edge
  %ch0_current = getelementptr inbounds %struct.palmas_gpadc_platform_data, ptr %gpadc_pdata.2.ph, i32 0, i32 1
  %65 = ptrtoint ptr %ch0_current to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ch0_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp85 = icmp slt i32 %66, 2
  br i1 %cmp85, label %if.then86, label %if.else

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  %ch0_current87 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 2
  %67 = ptrtoint ptr %ch0_current87 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %ch0_current87, align 4
  br label %if.end101

if.else:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %66)
  %cmp89 = icmp ult i32 %66, 6
  br i1 %cmp89, label %if.then90, label %if.else92

if.then90:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %ch0_current91 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 2
  %68 = ptrtoint ptr %ch0_current91 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %ch0_current91, align 4
  br label %if.end101

if.else92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %66)
  %cmp94 = icmp ult i32 %66, 16
  %ch0_current96 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 2
  br i1 %cmp94, label %if.then95, label %if.else97

if.then95:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %ch0_current96 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %ch0_current96, align 4
  br label %if.end101

if.else97:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %ch0_current96 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %ch0_current96, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.else97, %if.then95, %if.then90, %if.then86
  %71 = ptrtoint ptr %gpadc_pdata.2.ph to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gpadc_pdata.2.ph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp102 = icmp slt i32 %72, 2
  br i1 %cmp102, label %if.then103, label %if.else105

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %ch3_current104 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 3
  %73 = ptrtoint ptr %ch3_current104 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %ch3_current104, align 1
  br label %if.end119

if.else105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %72)
  %cmp107 = icmp ult i32 %72, 11
  br i1 %cmp107, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #7
  %ch3_current109 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 3
  %74 = ptrtoint ptr %ch3_current109 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %ch3_current109, align 1
  br label %if.end119

if.else110:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_const_cmp4(i32 401, i32 %72)
  %cmp112 = icmp ult i32 %72, 401
  %ch3_current114 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 3
  br i1 %cmp112, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %ch3_current114 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %ch3_current114, align 1
  br label %if.end119

if.else115:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %ch3_current114 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 3, ptr %ch3_current114, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.else115, %if.then113, %if.then108, %if.then103
  %extended_delay = getelementptr inbounds %struct.palmas_gpadc_platform_data, ptr %gpadc_pdata.2.ph, i32 0, i32 2
  %77 = ptrtoint ptr %extended_delay to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %extended_delay, align 4, !range !222
  %extended_delay121 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 4
  %79 = ptrtoint ptr %extended_delay121 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %extended_delay121, align 2
  %name = getelementptr inbounds %struct.iio_dev, ptr %call17, i32 0, i32 15
  %80 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call17, i32 0, i32 17
  %81 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @palmas_gpadc_iio_info, ptr %info, align 8
  %82 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %call17, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call17, i32 0, i32 13
  %83 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @palmas_gpadc_iio_channel, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call17, i32 0, i32 14
  %84 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16, ptr %num_channels, align 4
  %call122 = call i32 @__iio_device_register(ptr noundef nonnull %call17, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %do.end127, label %if.end129

do.end127:                                        ; preds = %if.end119
  %85 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.22, i32 noundef %call122) #8
  %87 = ptrtoint ptr %adc_wakeup2_data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adc_wakeup2_data, align 4
  %tobool146.not = icmp eq ptr %88, null
  br i1 %tobool146.not, label %do.end127.out_irq_auto0_free_crit_edge, label %if.then147

do.end127.out_irq_auto0_free_crit_edge:           ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_irq_auto0_free

if.end129:                                        ; preds = %if.end119
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end129
  %i.0275 = phi i32 [ 0, %if.end129 ], [ %inc, %for.inc.for.body_crit_edge ]
  %89 = ptrtoint ptr %adc_info to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adc_info, align 4
  %is_uncalibrated = getelementptr %struct.palmas_gpadc_info, ptr %90, i32 %i.0275, i32 9
  %91 = ptrtoint ptr %is_uncalibrated to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %is_uncalibrated, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool133.not = icmp eq i8 %92, 0
  br i1 %tobool133.not, label %if.then134, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then134:                                       ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1.i) #5
  %93 = ptrtoint ptr %d1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %d1.i, align 4, !annotation !221
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2.i) #5
  %94 = ptrtoint ptr %d2.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %d2.i, align 4, !annotation !221
  %arrayidx.i = getelementptr %struct.palmas_gpadc_info, ptr %90, i32 %i.0275
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i, align 4
  %x24.i = getelementptr %struct.palmas_gpadc_info, ptr %90, i32 %i.0275, i32 1
  %97 = ptrtoint ptr %x24.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %x24.i, align 4
  %v17.i = getelementptr %struct.palmas_gpadc_info, ptr %90, i32 %i.0275, i32 2
  %99 = ptrtoint ptr %v17.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %v17.i, align 4
  %v210.i = getelementptr %struct.palmas_gpadc_info, ptr %90, i32 %i.0275, i32 3
  %101 = ptrtoint ptr %v210.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %v210.i, align 4
  %103 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %palmas, align 4
  %trim1_reg.i = getelementptr %struct.palmas_gpadc_info, ptr %90, i32 %i.0275, i32 4
  %105 = ptrtoint ptr %trim1_reg.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %trim1_reg.i, align 4
  %conv.i = zext i8 %106 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 205
  %arrayidx.i.i = getelementptr %struct.palmas, ptr %104, i32 0, i32 2, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i255 = call i32 @regmap_read(ptr noundef %108, i32 noundef %add.i.i, ptr noundef nonnull %d1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i255)
  %cmp.i = icmp slt i32 %call.i.i255, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i256

do.end.i:                                         ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.82, i32 noundef %call.i.i255) #8
  br label %palmas_gpadc_calibrate.exit

if.end.i256:                                      ; preds = %if.then134
  %111 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %palmas, align 4
  %113 = ptrtoint ptr %adc_info to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adc_info, align 4
  %trim2_reg.i = getelementptr %struct.palmas_gpadc_info, ptr %114, i32 %i.0275, i32 5
  %115 = ptrtoint ptr %trim2_reg.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %trim2_reg.i, align 1
  %conv17.i = zext i8 %116 to i32
  %add.i1.i = add nuw nsw i32 %conv17.i, 205
  %arrayidx.i2.i = getelementptr %struct.palmas, ptr %112, i32 0, i32 2, i32 2
  %117 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i2.i, align 4
  %call.i3.i = call i32 @regmap_read(ptr noundef %118, i32 noundef %add.i1.i, ptr noundef nonnull %d2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %cmp19.i = icmp slt i32 %call.i3.i, 0
  br i1 %cmp19.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.82, i32 noundef %call.i3.i) #8
  br label %palmas_gpadc_calibrate.exit

if.end26.i:                                       ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %d2.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %d2.i, align 4
  %123 = ptrtoint ptr %d1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %d1.i, align 4
  %sub.i = sub i32 %122, %124
  %mul.i = mul i32 %sub.i, 1000
  %sub27.i = sub i32 %98, %96
  %div.i = sdiv i32 %mul.i, %sub27.i
  %add.i = add i32 %div.i, 1000
  %sub28.i = sub i32 %102, %100
  %mul29.i = mul i32 %sub28.i, 1000
  %div31.i = sdiv i32 %mul29.i, %sub27.i
  %125 = ptrtoint ptr %adc_info to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %adc_info, align 4
  %gain_error.i = getelementptr %struct.palmas_gpadc_info, ptr %126, i32 %i.0275, i32 8
  %127 = ptrtoint ptr %gain_error.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add.i, ptr %gain_error.i, align 4
  %128 = load ptr, ptr %adc_info, align 4
  %gain36.i = getelementptr %struct.palmas_gpadc_info, ptr %128, i32 %i.0275, i32 6
  %129 = ptrtoint ptr %gain36.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %div31.i, ptr %gain36.i, align 4
  %130 = load i32, ptr %d1.i, align 4
  %mul37.i = mul i32 %130, 1000
  %mul39.i = mul i32 %div.i, %96
  %sub40.i = sub i32 %mul37.i, %mul39.i
  %131 = load ptr, ptr %adc_info, align 4
  %offset.i = getelementptr %struct.palmas_gpadc_info, ptr %131, i32 %i.0275, i32 7
  %132 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub40.i, ptr %offset.i, align 4
  br label %palmas_gpadc_calibrate.exit

palmas_gpadc_calibrate.exit:                      ; preds = %if.end26.i, %do.end24.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1.i) #5
  br label %for.inc

for.inc:                                          ; preds = %palmas_gpadc_calibrate.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0275, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %wakeup1_enable137 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 12
  %133 = ptrtoint ptr %wakeup1_enable137 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %wakeup1_enable137, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool138.not = icmp eq i8 %134, 0
  br i1 %tobool138.not, label %lor.lhs.false, label %for.end.if.then141_crit_edge

for.end.if.then141_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then141

lor.lhs.false:                                    ; preds = %for.end
  %wakeup2_enable139 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 13
  %135 = ptrtoint ptr %wakeup2_enable139 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %wakeup2_enable139, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool140.not = icmp eq i8 %136, 0
  br i1 %tobool140.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then141_crit_edge

lor.lhs.false.if.then141_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then141

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then141:                                       ; preds = %lor.lhs.false.if.then141_crit_edge, %for.end.if.then141_crit_edge
  %call143 = call i32 @device_wakeup_enable(ptr noundef %dev) #5
  br label %cleanup

if.then147:                                       ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_1148 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 7
  %137 = ptrtoint ptr %irq_auto_1148 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %irq_auto_1148, align 4
  %call149 = call ptr @free_irq(i32 noundef %138, ptr noundef %17) #5
  br label %out_irq_auto0_free

out_irq_auto0_free:                               ; preds = %if.then147, %do.end127.out_irq_auto0_free_crit_edge, %do.end80
  %ret.0 = phi i32 [ %call75, %do.end80 ], [ %call122, %if.then147 ], [ %call122, %do.end127.out_irq_auto0_free_crit_edge ]
  %139 = ptrtoint ptr %adc_wakeup1_data to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %adc_wakeup1_data, align 4
  %tobool152.not = icmp eq ptr %140, null
  br i1 %tobool152.not, label %out_irq_auto0_free.out_irq_free_crit_edge, label %if.then153

out_irq_auto0_free.out_irq_free_crit_edge:        ; preds = %out_irq_auto0_free
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_irq_free

if.then153:                                       ; preds = %out_irq_auto0_free
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_0154 = getelementptr inbounds %struct.palmas_gpadc, ptr %17, i32 0, i32 6
  %141 = ptrtoint ptr %irq_auto_0154 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %irq_auto_0154, align 4
  %call155 = call ptr @free_irq(i32 noundef %142, ptr noundef %17) #5
  br label %out_irq_free

out_irq_free:                                     ; preds = %if.then153, %out_irq_auto0_free.out_irq_free_crit_edge, %do.end65
  %ret.1 = phi i32 [ %call60, %do.end65 ], [ %ret.0, %if.then153 ], [ %ret.0, %out_irq_auto0_free.out_irq_free_crit_edge ]
  %143 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq, align 4
  %call158 = call ptr @free_irq(i32 noundef %144, ptr noundef %17) #5
  br label %cleanup

cleanup:                                          ; preds = %out_irq_free, %if.then141, %lor.lhs.false.cleanup_crit_edge, %do.end51, %do.end38, %do.end, %palmas_gpadc_get_adc_dt_data.exit.thread, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then141 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %38, %do.end38 ], [ %call46, %do.end51 ], [ %ret.1, %out_irq_free ], [ -12, %palmas_gpadc_get_adc_dt_data.exit.thread ], [ -22, %land.lhs.true5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %add.ptr.i = getelementptr %struct.platform_device, ptr %pdev, i32 0, i32 2
  %priv.i = getelementptr %struct.platform_device, ptr %pdev, i32 1, i32 3, i32 0, i32 7, i32 1, i32 2
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %wakeup1_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wakeup1_enable, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %wakeup2_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %wakeup2_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup2_enable, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call4 = tail call i32 @device_wakeup_disable(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @iio_device_unregister(ptr noundef %add.ptr.i) #5
  %irq = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #5
  %8 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wakeup1_enable, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_0 = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq_auto_0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_auto_0, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %wakeup2_enable11 = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %wakeup2_enable11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wakeup2_enable11, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_1 = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %irq_auto_1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_auto_1, align 4
  %call14 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %1) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv_completion = getelementptr inbounds %struct.palmas_gpadc, ptr %data, i32 0, i32 9
  tail call void @complete(ptr noundef %conv_completion) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_irq_auto(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_gpadc_irq_auto.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_gpadc_irq_auto, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !223

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_gpadc_irq_auto.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %irq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @palmas_disable_auto_conversion(ptr noundef %data)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @palmas_disable_auto_conversion(ptr nocapture noundef readonly %adc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %palmas = getelementptr inbounds %struct.palmas_gpadc, ptr %adc, i32 0, i32 1
  %0 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %palmas, align 4
  %arrayidx.i = getelementptr %struct.palmas, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 192, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.31, i32 noundef %call.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %palmas, align 4
  %arrayidx.i32 = getelementptr %struct.palmas, ptr %7, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i32, align 4
  %call.i.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 195, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %cmp3 = icmp slt i32 %call.i.i33, 0
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef %call.i.i33) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #5
  %13 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %palmas, align 4
  %arrayidx.i34 = getelementptr %struct.palmas, ptr %14, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i34, align 4
  %call.i.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 192, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp12 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp12, label %do.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.31, i32 noundef %call.i.i35) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i33, %do.end7 ], [ %call.i.i35, %do.end16 ], [ %call.i.i35, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp sgt i32 %3, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %switch = icmp ult i32 %mask, 2
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %extended_delay.i = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %extended_delay.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %extended_delay.i, align 2, !range !222
  %6 = shl nuw nsw i8 %5, 1
  %shl.i = zext i8 %6 to i32
  %palmas.i47 = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i.i48 = getelementptr %struct.palmas, ptr %8, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i48, align 4
  %call.i.i.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 194, i32 noundef 2, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i49)
  %cmp.i50 = icmp slt i32 %call.i.i.i49, 0
  br i1 %cmp.i50, label %do.end.i52, label %if.end.i53

do.end.i52:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.40, i32 noundef %call.i.i.i49) #8
  br label %out

if.end.i53:                                       ; preds = %sw.bb
  %ch0_current.i = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ch0_current.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ch0_current.i, align 4
  %conv4.i = zext i8 %14 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 2
  %ch3_current.i = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %ch3_current.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ch3_current.i, align 1
  %conv6.i = zext i8 %16 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 4
  %or.i = or i32 %shl5.i, %shl7.i
  %or8.i = or i32 %or.i, 1
  %17 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i84.i = getelementptr %struct.palmas, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i84.i, align 4
  %call.i.i85.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 192, i32 noundef 61, i32 noundef %or8.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp11.i = icmp slt i32 %call.i.i85.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %if.end18.i

do.end16.i:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.43, i32 noundef %call.i.i85.i) #8
  br label %out

if.end18.i:                                       ; preds = %if.end.i53
  %or19.i = or i32 %3, 128
  %23 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i86.i = getelementptr %struct.palmas, ptr %24, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i86.i, align 4
  %call.i.i87.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 205, i32 noundef 143, i32 noundef %or19.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87.i)
  %cmp22.i = icmp slt i32 %call.i.i87.i, 0
  br i1 %cmp22.i, label %do.end27.i, label %if.end.i

do.end27.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.46, i32 noundef %call.i.i87.i) #8
  br label %out

if.end.i:                                         ; preds = %if.end18.i
  %29 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i9.i.i = getelementptr %struct.palmas, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i9.i.i, align 4
  %call.i.i10.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 27, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i10.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end4

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.54, i32 noundef %call.i.i10.i.i) #8
  br label %out

if.end4:                                          ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i, align 4, !annotation !221
  %conv_completion.i = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %conv_completion.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %conv_completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #5
  %37 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i.i = getelementptr %struct.palmas, ptr %38, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 205, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i34 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i34, label %do.end.i, label %if.end.i35

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.56, i32 noundef %call.i.i.i) #8
  br label %palmas_gpadc_start_conversion.exit.thread

if.end.i35:                                       ; preds = %if.end4
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %conv_completion.i, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.59) #8
  br label %palmas_gpadc_start_conversion.exit.thread

if.end10.i:                                       ; preds = %if.end.i35
  %45 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i1.i = getelementptr %struct.palmas, ptr %46, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i1.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %48, i32 noundef 206, ptr noundef nonnull %val.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %palmas_gpadc_start_conversion.exit

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.62, i32 noundef %call.i.i) #8
  br label %palmas_gpadc_start_conversion.exit.thread

palmas_gpadc_start_conversion.exit.thread:        ; preds = %do.end17.i, %do.end8.i, %do.end.i
  %retval.0.i36.ph = phi i32 [ %call.i.i, %do.end17.i ], [ -110, %do.end8.i ], [ %call.i.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.38) #8
  br label %out

palmas_gpadc_start_conversion.exit:               ; preds = %if.end10.i
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i, align 4
  %and.i = and i32 %54, 4095
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cmp9 = icmp eq i32 %mask, 1
  br i1 %cmp9, label %if.then10, label %palmas_gpadc_start_conversion.exit.if.end12_crit_edge

palmas_gpadc_start_conversion.exit.if.end12_crit_edge: ; preds = %palmas_gpadc_start_conversion.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %palmas_gpadc_start_conversion.exit
  %adc_info.i = getelementptr inbounds %struct.palmas_gpadc, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %adc_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adc_info.i, align 4
  %is_uncalibrated.i = getelementptr %struct.palmas_gpadc_info, ptr %56, i32 %3, i32 9
  %57 = ptrtoint ptr %is_uncalibrated.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_uncalibrated.i, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i, label %if.end.i38, label %if.then10.if.end6.i_crit_edge

if.then10.if.end6.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end.i38:                                       ; preds = %if.then10
  %mul.i = mul nuw nsw i32 %and.i, 1000
  %offset.i = getelementptr %struct.palmas_gpadc_info, ptr %56, i32 %3, i32 7
  %59 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %mul.i, %60
  %gain_error.i = getelementptr %struct.palmas_gpadc_info, ptr %56, i32 %3, i32 8
  %61 = ptrtoint ptr %gain_error.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gain_error.i, align 4
  %div.i = sdiv i32 %sub.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp.i37 = icmp slt i32 %div.i, 0
  br i1 %cmp.i37, label %do.end.i39, label %if.end.i38.if.end6.i_crit_edge

if.end.i38.if.end6.i_crit_edge:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

do.end.i39:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.64) #8
  br label %if.end12

if.end6.i:                                        ; preds = %if.end.i38.if.end6.i_crit_edge, %if.then10.if.end6.i_crit_edge
  %val.addr.0.i64 = phi i32 [ %div.i, %if.end.i38.if.end6.i_crit_edge ], [ %and.i, %if.then10.if.end6.i_crit_edge ]
  %gain.i = getelementptr %struct.palmas_gpadc_info, ptr %56, i32 %3, i32 6
  %65 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gain.i, align 4
  %mul9.i = mul i32 %66, %val.addr.0.i64
  %div10.i = sdiv i32 %mul9.i, 1000
  br label %if.end12

if.end12:                                         ; preds = %if.end6.i, %do.end.i39, %palmas_gpadc_start_conversion.exit.if.end12_crit_edge
  %ret.0 = phi i32 [ %and.i, %palmas_gpadc_start_conversion.exit.if.end12_crit_edge ], [ 0, %do.end.i39 ], [ %div10.i, %if.end6.i ]
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %ret.0, ptr %val, align 4
  br label %out

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

out:                                              ; preds = %if.end12, %palmas_gpadc_start_conversion.exit.thread, %do.end.i.i, %do.end27.i, %do.end16.i, %do.end.i52
  %ret.1 = phi i32 [ %retval.0.i36.ph, %palmas_gpadc_start_conversion.exit.thread ], [ 1, %if.end12 ], [ %call.i.i10.i.i, %do.end.i.i ], [ %call.i.i87.i, %do.end27.i ], [ %call.i.i85.i, %do.end16.i ], [ %call.i.i.i49, %do.end.i52 ]
  %68 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i9.i.i42 = getelementptr %struct.palmas, ptr %69, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %arrayidx.i9.i.i42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i9.i.i42, align 4
  %call.i.i10.i.i43 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 27, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i.i43)
  %cmp.i.i44 = icmp slt i32 %call.i.i10.i.i43, 0
  br i1 %cmp.i.i44, label %do.end.i.i45, label %out.palmas_gpadc_start_mask_interrupt.exit.i_crit_edge

out.palmas_gpadc_start_mask_interrupt.exit.i_crit_edge: ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %palmas_gpadc_start_mask_interrupt.exit.i

do.end.i.i45:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.54, i32 noundef %call.i.i10.i.i43) #8
  br label %palmas_gpadc_start_mask_interrupt.exit.i

palmas_gpadc_start_mask_interrupt.exit.i:         ; preds = %do.end.i.i45, %out.palmas_gpadc_start_mask_interrupt.exit.i_crit_edge
  %74 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i88.i.i = getelementptr %struct.palmas, ptr %75, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %arrayidx.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i88.i.i, align 4
  %call.i.i.i46 = call i32 @regmap_write(ptr noundef %77, i32 noundef 205, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i46)
  %cmp32.i.i = icmp slt i32 %call.i.i.i46, 0
  br i1 %cmp32.i.i, label %do.end37.i.i, label %palmas_gpadc_start_mask_interrupt.exit.i.if.end39.i.i_crit_edge

palmas_gpadc_start_mask_interrupt.exit.i.if.end39.i.i_crit_edge: ; preds = %palmas_gpadc_start_mask_interrupt.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i.i

do.end37.i.i:                                     ; preds = %palmas_gpadc_start_mask_interrupt.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.49, i32 noundef %call.i.i.i46) #8
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %do.end37.i.i, %palmas_gpadc_start_mask_interrupt.exit.i.if.end39.i.i_crit_edge
  %80 = ptrtoint ptr %palmas.i47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %palmas.i47, align 4
  %arrayidx.i89.i.i = getelementptr %struct.palmas, ptr %81, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %arrayidx.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i89.i.i, align 4
  %call.i.i90.i.i = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 192, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i.i)
  %cmp42.i.i = icmp slt i32 %call.i.i90.i.i, 0
  br i1 %cmp42.i.i, label %do.end47.i.i, label %if.end39.i.i.palmas_gpadc_read_done.exit_crit_edge

if.end39.i.i.palmas_gpadc_read_done.exit_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %palmas_gpadc_read_done.exit

do.end47.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.52, i32 noundef %call.i.i90.i.i) #8
  br label %palmas_gpadc_read_done.exit

palmas_gpadc_read_done.exit:                      ; preds = %do.end47.i.i, %if.end39.i.i.palmas_gpadc_read_done.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %palmas_gpadc_read_done.exit, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %ret.1, %palmas_gpadc_read_done.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %wakeup1_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup1_enable, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup2_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %wakeup2_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wakeup2_enable, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2 = icmp ne i8 %7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.end.cleanup_crit_edge, label %device_may_wakeup.exit

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %lor.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %11, null
  %.not = xor i1 %8, true
  %brmerge = select i1 %tobool2.i.not, i1 true, i1 %.not
  br i1 %brmerge, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.end

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %auto_conversion_period.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %auto_conversion_period.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %auto_conversion_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %13)
  %14 = icmp sgt i32 %13, 62
  br i1 %14, label %for.inc.1.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.1.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %13)
  %cmp2.not.2.i = icmp ugt i32 %13, 125
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %13)
  %cmp2.not.3.i = icmp ugt i32 %13, 250
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %13)
  %cmp2.not.4.i = icmp ugt i32 %13, 500
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %13)
  %cmp2.not.5.i = icmp ugt i32 %13, 1000
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %13)
  %cmp2.not.6.i = icmp ugt i32 %13, 2000
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.for.end.i_crit_edge

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %13)
  %cmp2.not.7.i = icmp ugt i32 %13, 4000
  br i1 %cmp2.not.7.i, label %for.inc.7.i, label %for.inc.6.i.for.end.i_crit_edge

for.inc.6.i.for.end.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %13)
  %cmp2.not.8.i = icmp ugt i32 %13, 8000
  br i1 %cmp2.not.8.i, label %for.inc.8.i, label %for.inc.7.i.for.end.i_crit_edge

for.inc.7.i.for.end.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %13)
  %cmp2.not.9.i = icmp ugt i32 %13, 16000
  br i1 %cmp2.not.9.i, label %for.inc.9.i, label %for.inc.8.i.for.end.i_crit_edge

for.inc.8.i.for.end.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %13)
  %cmp2.not.10.i = icmp ugt i32 %13, 32000
  br i1 %cmp2.not.10.i, label %for.inc.10.i, label %for.inc.9.i.for.end.i_crit_edge

for.inc.9.i.for.end.i_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %13)
  %cmp2.not.11.i = icmp ugt i32 %13, 64000
  br i1 %cmp2.not.11.i, label %for.inc.11.i, label %for.inc.10.i.for.end.i_crit_edge

for.inc.10.i.for.end.i_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %13)
  %cmp2.not.12.i = icmp ugt i32 %13, 128000
  br i1 %cmp2.not.12.i, label %for.inc.12.i, label %for.inc.11.i.for.end.i_crit_edge

for.inc.11.i.for.end.i_crit_edge:                 ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %13)
  %cmp2.not.13.i = icmp ugt i32 %13, 256000
  br i1 %cmp2.not.13.i, label %for.inc.13.i, label %for.inc.12.i.for.end.i_crit_edge

for.inc.12.i.for.end.i_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512000, i32 %13)
  %cmp2.not.14.i = icmp ugt i32 %13, 512000
  br i1 %cmp2.not.14.i, label %for.inc.14.i, label %for.inc.13.i.for.end.i_crit_edge

for.inc.13.i.for.end.i_crit_edge:                 ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024000, i32 %13)
  %cmp2.not.15.i = icmp ugt i32 %13, 1024000
  %spec.select191.i = select i1 %cmp2.not.15.i, i32 15, i32 14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.14.i, %for.inc.13.i.for.end.i_crit_edge, %for.inc.12.i.for.end.i_crit_edge, %for.inc.11.i.for.end.i_crit_edge, %for.inc.10.i.for.end.i_crit_edge, %for.inc.9.i.for.end.i_crit_edge, %for.inc.8.i.for.end.i_crit_edge, %for.inc.7.i.for.end.i_crit_edge, %for.inc.6.i.for.end.i_crit_edge, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %spec.select.i = phi i32 [ 13, %for.inc.13.i.for.end.i_crit_edge ], [ 12, %for.inc.12.i.for.end.i_crit_edge ], [ 11, %for.inc.11.i.for.end.i_crit_edge ], [ 10, %for.inc.10.i.for.end.i_crit_edge ], [ 9, %for.inc.9.i.for.end.i_crit_edge ], [ 8, %for.inc.8.i.for.end.i_crit_edge ], [ 7, %for.inc.7.i.for.end.i_crit_edge ], [ 6, %for.inc.6.i.for.end.i_crit_edge ], [ 5, %for.inc.5.i.for.end.i_crit_edge ], [ 4, %for.inc.4.i.for.end.i_crit_edge ], [ 3, %for.inc.3.i.for.end.i_crit_edge ], [ 2, %for.inc.2.i.for.end.i_crit_edge ], [ 1, %for.inc.1.i.for.end.i_crit_edge ], [ 0, %if.end.for.end.i_crit_edge ], [ %spec.select191.i, %for.inc.14.i ]
  %palmas.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %palmas.i, align 4
  %arrayidx.i.i = getelementptr %struct.palmas, ptr %16, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 195, i32 noundef 15, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.86, i32 noundef %call.i.i.i) #8
  br label %cleanup

if.end11.i:                                       ; preds = %for.end.i
  %21 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wakeup1_enable, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i29 = icmp eq i8 %22, 0
  br i1 %tobool.not.i29, label %if.end11.i.if.end43.i_crit_edge, label %if.then12.i

if.end11.i.if.end43.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then12.i:                                      ; preds = %if.end11.i
  %wakeup1_data.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 10
  %23 = ptrtoint ptr %wakeup1_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wakeup1_data.i, align 4
  %adc_high_threshold.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %adc_high_threshold.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %adc_high_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp14.i = icmp sgt i32 %26, 0
  br i1 %cmp14.i, label %if.then12.i.if.end20.i_crit_edge, label %if.else.i

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  %adc_low_threshold.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 10, i32 2
  %27 = ptrtoint ptr %adc_low_threshold.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adc_low_threshold.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then12.i.if.end20.i_crit_edge
  %thres.0.i = phi i32 [ %28, %if.else.i ], [ %26, %if.then12.i.if.end20.i_crit_edge ]
  %polarity.0.i = phi i32 [ 128, %if.else.i ], [ 0, %if.then12.i.if.end20.i_crit_edge ]
  %29 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %palmas.i, align 4
  %and.i = and i32 %thres.0.i, 255
  %arrayidx.i175.i = getelementptr %struct.palmas, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx.i175.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i175.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 208, i32 noundef %and.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp23.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.89, i32 noundef %call.i.i) #8
  br label %cleanup

if.end30.i:                                       ; preds = %if.end20.i
  %35 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %palmas.i, align 4
  %37 = lshr i32 %thres.0.i, 8
  %and32.i = and i32 %37, 15
  %or33.i = or i32 %and32.i, %polarity.0.i
  %arrayidx.i176.i = getelementptr %struct.palmas, ptr %36, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx.i176.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i176.i, align 4
  %call.i177.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 209, i32 noundef %or33.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177.i)
  %cmp35.i = icmp slt i32 %call.i177.i, 0
  br i1 %cmp35.i, label %do.end40.i, label %if.end30.i.if.end43.i_crit_edge

if.end30.i.if.end43.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

do.end40.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.92, i32 noundef %call.i177.i) #8
  br label %cleanup

if.end43.i:                                       ; preds = %if.end30.i.if.end43.i_crit_edge, %if.end11.i.if.end43.i_crit_edge
  %conv.0.i = phi i32 [ 0, %if.end11.i.if.end43.i_crit_edge ], [ 16, %if.end30.i.if.end43.i_crit_edge ]
  %ch0.0.i = phi i32 [ 0, %if.end11.i.if.end43.i_crit_edge ], [ %24, %if.end30.i.if.end43.i_crit_edge ]
  %wakeup2_enable.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 13
  %42 = ptrtoint ptr %wakeup2_enable.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wakeup2_enable.i, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool44.not.i = icmp eq i8 %43, 0
  br i1 %tobool44.not.i, label %if.end43.i.if.end87.i_crit_edge, label %if.then45.i

if.end43.i.if.end87.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then45.i:                                      ; preds = %if.end43.i
  %wakeup2_data.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 11
  %44 = ptrtoint ptr %wakeup2_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wakeup2_data.i, align 4
  %or48.i = or i32 %conv.0.i, 32
  %adc_high_threshold50.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %adc_high_threshold50.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adc_high_threshold50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp51.i = icmp sgt i32 %47, 0
  br i1 %cmp51.i, label %if.then45.i.if.end59.i_crit_edge, label %if.else56.i

if.then45.i.if.end59.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.else56.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  %adc_low_threshold58.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %adc_low_threshold58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %adc_low_threshold58.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else56.i, %if.then45.i.if.end59.i_crit_edge
  %thres.1.i = phi i32 [ %49, %if.else56.i ], [ %47, %if.then45.i.if.end59.i_crit_edge ]
  %polarity46.0.i = phi i32 [ 128, %if.else56.i ], [ 0, %if.then45.i.if.end59.i_crit_edge ]
  %50 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %palmas.i, align 4
  %and61.i = and i32 %thres.1.i, 255
  %arrayidx.i178.i = getelementptr %struct.palmas, ptr %51, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx.i178.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i178.i, align 4
  %call.i179.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 210, i32 noundef %and61.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179.i)
  %cmp63.i = icmp slt i32 %call.i179.i, 0
  br i1 %cmp63.i, label %do.end68.i, label %if.end70.i

do.end68.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.95, i32 noundef %call.i179.i) #8
  br label %cleanup

if.end70.i:                                       ; preds = %if.end59.i
  %56 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %palmas.i, align 4
  %58 = lshr i32 %thres.1.i, 8
  %and73.i = and i32 %58, 15
  %or74.i = or i32 %and73.i, %polarity46.0.i
  %arrayidx.i180.i = getelementptr %struct.palmas, ptr %57, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %arrayidx.i180.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i180.i, align 4
  %call.i181.i = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 211, i32 noundef %or74.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %cmp76.i = icmp slt i32 %call.i181.i, 0
  br i1 %cmp76.i, label %do.end81.i, label %if.end70.i.if.end87.i_crit_edge

if.end70.i.if.end87.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

do.end81.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.98, i32 noundef %call.i181.i) #8
  br label %cleanup

if.end87.i:                                       ; preds = %if.end70.i.if.end87.i_crit_edge, %if.end43.i.if.end87.i_crit_edge
  %conv.1.i = phi i32 [ %conv.0.i, %if.end43.i.if.end87.i_crit_edge ], [ %or48.i, %if.end70.i.if.end87.i_crit_edge ]
  %ch1.0.i = phi i32 [ 0, %if.end43.i.if.end87.i_crit_edge ], [ %45, %if.end70.i.if.end87.i_crit_edge ]
  %63 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %palmas.i, align 4
  %shl89.i = shl i32 %ch1.0.i, 4
  %or90.i = or i32 %shl89.i, %ch0.0.i
  %arrayidx.i182.i = getelementptr %struct.palmas, ptr %64, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %arrayidx.i182.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i182.i, align 4
  %call.i183.i = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 200, i32 noundef %or90.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183.i)
  %cmp92.i = icmp slt i32 %call.i183.i, 0
  br i1 %cmp92.i, label %do.end97.i, label %if.end99.i

do.end97.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.101, i32 noundef %call.i183.i) #8
  br label %cleanup

if.end99.i:                                       ; preds = %if.end87.i
  %69 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %palmas.i, align 4
  %arrayidx.i184.i = getelementptr %struct.palmas, ptr %70, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %arrayidx.i184.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i184.i, align 4
  %call.i.i185.i = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 195, i32 noundef 48, i32 noundef %conv.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i185.i)
  %cmp102.i = icmp slt i32 %call.i.i185.i, 0
  br i1 %cmp102.i, label %do.end107.i, label %if.end7

do.end107.i:                                      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.86, i32 noundef %call.i.i185.i) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end99.i
  %75 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %wakeup1_enable, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool9.not = icmp eq i8 %76, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_0 = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 6
  %77 = ptrtoint ptr %irq_auto_0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq_auto_0, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %78, i32 noundef 1) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %79 = ptrtoint ptr %wakeup2_enable.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %wakeup2_enable.i, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool14.not = icmp eq i8 %80, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_1 = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 7
  %81 = ptrtoint ptr %irq_auto_1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq_auto_1, align 4
  %call.i30 = tail call i32 @irq_set_irq_wake(i32 noundef %82, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %do.end107.i, %do.end97.i, %do.end81.i, %do.end68.i, %do.end40.i, %do.end28.i, %do.end.i, %device_may_wakeup.exit.cleanup_crit_edge, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %lor.end.cleanup_crit_edge ], [ %call.i179.i, %do.end68.i ], [ %call.i181.i, %do.end81.i ], [ %call.i.i, %do.end28.i ], [ %call.i177.i, %do.end40.i ], [ %call.i.i185.i, %do.end107.i ], [ %call.i183.i, %do.end97.i ], [ %call.i.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpadc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %wakeup1_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup1_enable, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup2_enable = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %wakeup2_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wakeup2_enable, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2 = icmp eq i8 %7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i1 [ false, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.end.cleanup_crit_edge, label %device_may_wakeup.exit

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %lor.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %11, null
  %brmerge = select i1 %tobool2.i.not, i1 true, i1 %8
  br i1 %brmerge, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.end

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %palmas.i = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %palmas.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %palmas.i, align 4
  %arrayidx.i.i = getelementptr %struct.palmas, ptr %13, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 200, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.101, i32 noundef %call.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call fastcc i32 @palmas_disable_auto_conversion(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %if.end7

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.107, i32 noundef %call1.i) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %20 = ptrtoint ptr %wakeup1_enable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wakeup1_enable, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not = icmp eq i8 %21, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_0 = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %irq_auto_0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_auto_0, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %wakeup2_enable13 = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %wakeup2_enable13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wakeup2_enable13, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool14.not = icmp eq i8 %25, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %irq_auto_1 = getelementptr inbounds %struct.palmas_gpadc, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %irq_auto_1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_auto_1, align 4
  %call.i29 = tail call i32 @irq_set_irq_wake(i32 noundef %27, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %do.end6.i, %do.end.i, %device_may_wakeup.exit.cleanup_crit_edge, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %lor.end.cleanup_crit_edge ], [ %call1.i, %do.end6.i ], [ %call.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !169, !171, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__initcall__kmod_palmas_gpadc__294_847_palmas_gpadc_driver_init6, !1, !"__initcall__kmod_palmas_gpadc__294_847_palmas_gpadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 847, i32 1}
!2 = !{ptr @__exitcall_palmas_gpadc_driver_exit, !1, !"__exitcall_palmas_gpadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 849, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 850, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias297, !8, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 851, i32 1}
!9 = !{ptr @__UNIQUE_ID_file298, !10, !"__UNIQUE_ID_file298", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 852, i32 1}
!11 = !{ptr @__UNIQUE_ID_license299, !10, !"__UNIQUE_ID_license299", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 842, i32 11}
!14 = !{ptr @palmas_gpadc_driver, !15, !"palmas_gpadc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 838, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 518, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @palmas_gpadc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @palmas_gpadc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @palmas_gpadc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 527, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 535, i32 3}
!29 = !{ptr @palmas_gpadc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @palmas_gpadc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 545, i32 3}
!33 = !{ptr @palmas_gpadc_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @palmas_gpadc_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 558, i32 5}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 560, i32 4}
!39 = !{ptr @palmas_gpadc_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @palmas_gpadc_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 574, i32 5}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 576, i32 4}
!45 = !{ptr @palmas_gpadc_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @palmas_gpadc_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 612, i32 3}
!49 = !{ptr @palmas_gpadc_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @palmas_gpadc_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 479, i32 33}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 483, i32 33}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 488, i32 6}
!57 = !{ptr @palmas_gpadc_info, !58, !"palmas_gpadc_info", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 60, i32 33}
!59 = !{ptr @init_completion.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/completion.h", i32 87, i32 2}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 193, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @palmas_gpadc_irq_auto.__UNIQUE_ID_ddebug293, !63, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 155, i32 3}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @palmas_disable_auto_conversion._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @palmas_disable_auto_conversion._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 165, i32 3}
!74 = !{ptr @palmas_disable_auto_conversion._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @palmas_disable_auto_conversion._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @palmas_disable_auto_conversion._entry.36, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 175, i32 3}
!78 = !{ptr @palmas_disable_auto_conversion._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @palmas_gpadc_iio_info, !80, !"palmas_gpadc_iio_info", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 434, i32 30}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 409, i32 4}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @palmas_gpadc_read_raw._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @palmas_gpadc_read_raw._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 232, i32 4}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @palmas_gpadc_enable._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @palmas_gpadc_enable._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 247, i32 4}
!93 = !{ptr @palmas_gpadc_enable._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @palmas_gpadc_enable._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 258, i32 4}
!97 = !{ptr @palmas_gpadc_enable._entry.45, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @palmas_gpadc_enable._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 265, i32 4}
!101 = !{ptr @palmas_gpadc_enable._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @palmas_gpadc_enable._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 271, i32 4}
!105 = !{ptr @palmas_gpadc_enable._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @palmas_gpadc_enable._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 214, i32 3}
!109 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @palmas_gpadc_start_mask_interrupt._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @palmas_gpadc_start_mask_interrupt._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 348, i32 3}
!114 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @palmas_gpadc_start_conversion._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @palmas_gpadc_start_conversion._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 355, i32 3}
!119 = !{ptr @palmas_gpadc_start_conversion._entry.58, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @palmas_gpadc_start_conversion._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 362, i32 3}
!123 = !{ptr @palmas_gpadc_start_conversion._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @palmas_gpadc_start_conversion._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 379, i32 3}
!127 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @palmas_gpadc_get_calibrated_code._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @palmas_gpadc_get_calibrated_code._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 449, i32 2}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 450, i32 2}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 451, i32 2}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 452, i32 2}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 453, i32 2}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 454, i32 2}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 455, i32 2}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 456, i32 2}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 457, i32 2}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 458, i32 2}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 459, i32 2}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 460, i32 2}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 461, i32 2}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 462, i32 2}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 463, i32 2}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 464, i32 2}
!162 = !{ptr @palmas_gpadc_iio_channel, !163, !"palmas_gpadc_iio_channel", i1 false, i1 false}
!163 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 448, i32 35}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 311, i32 3}
!166 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @palmas_gpadc_calibrate._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @palmas_gpadc_calibrate._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @palmas_gpadc_calibrate._entry.84, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 318, i32 3}
!171 = !{ptr @palmas_gpadc_calibrate._entry_ptr.85, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @of_palmas_gpadc_match_tbl, !173, !"of_palmas_gpadc_match_tbl", i1 false, i1 false}
!173 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 832, i32 34}
!174 = !{ptr @palmas_pm_ops, !175, !"palmas_pm_ops", i1 false, i1 false}
!175 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 827, i32 32}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 678, i32 3}
!178 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @palmas_adc_wakeup_configure._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @palmas_adc_wakeup_configure._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 699, i32 4}
!183 = !{ptr @palmas_adc_wakeup_configure._entry.88, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @palmas_adc_wakeup_configure._entry_ptr.90, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 708, i32 4}
!187 = !{ptr @palmas_adc_wakeup_configure._entry.91, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @palmas_adc_wakeup_configure._entry_ptr.93, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 730, i32 4}
!191 = !{ptr @palmas_adc_wakeup_configure._entry.94, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @palmas_adc_wakeup_configure._entry_ptr.96, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.98, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 739, i32 4}
!195 = !{ptr @palmas_adc_wakeup_configure._entry.97, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @palmas_adc_wakeup_configure._entry_ptr.99, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 748, i32 3}
!199 = !{ptr @palmas_adc_wakeup_configure._entry.100, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @palmas_adc_wakeup_configure._entry_ptr.102, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @palmas_adc_wakeup_configure._entry.103, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 757, i32 3}
!203 = !{ptr @palmas_adc_wakeup_configure._entry_ptr.104, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 769, i32 3}
!206 = !{ptr @palmas_adc_wakeup_reset._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @palmas_adc_wakeup_reset._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/iio/adc/palmas_gpadc.c", i32 775, i32 3}
!210 = !{ptr @palmas_adc_wakeup_reset._entry.106, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @palmas_adc_wakeup_reset._entry_ptr.108, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"auto-init"}
!222 = !{i8 0, i8 2}
!223 = !{i64 2148975049, i64 2148975054, i64 2148975067, i64 2148975111, i64 2148975145, i64 2148975166}
