; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/exynos_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/exynos_adc.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.exynos_adc_data = type { i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.exynos_adc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.completion, i32, i32, i8, i8, i32, i32, %struct.mutex }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_exynos_adc__291_1020_exynos_adc_driver_init6 = internal global ptr @exynos_adc_driver_init, section ".initcall6.init", align 4
@exynos_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_adc_probe, ptr @exynos_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_adc_driver_exit = internal global ptr @exynos_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [67 x i8] c"exynos_adc.author=Naveen Krishna Chatradhi <ch.naveen@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [50 x i8] c"exynos_adc.description=Samsung EXYNOS5 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"exynos_adc.file=drivers/iio/adc/exynos_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"exynos_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-adc\00", [21 x i8] zeroinitializer }, align 32
@exynos_adc_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c24xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2416-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c2416_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c24xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2443-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c2443_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c64xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s5pv210_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4212_adc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-adc-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_v1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-adc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_v2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_adc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_adc_data }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@exynos_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_adc_suspend, ptr @exynos_adc_resume, ptr @exynos_adc_suspend, ptr @exynos_adc_resume, ptr @exynos_adc_suspend, ptr @exynos_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocating iio device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_adc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/exynos_adc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry_ptr = internal global ptr @exynos_adc_probe._entry, section ".printk_index", align 4
@exynos_adc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed getting exynos_adc_data\0A\00", [32 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry_ptr.8 = internal global ptr @exynos_adc_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,syscon-phandle\00", [41 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"syscon regmap lookup failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry_ptr.12 = internal global ptr @exynos_adc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed getting clock, err = %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry_ptr.16 = internal global ptr @exynos_adc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 856, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed getting sclk clock, err = %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry_ptr.20 = internal global ptr @exynos_adc_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed getting regulator\00", [39 x i8] zeroinitializer }, align 32
@exynos_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @exynos_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_adc_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@exynos_adc_iio_channels = internal constant { [10 x %struct.iio_chan_spec], [208 x i8] } { [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.45, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.46, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.48, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.49, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.50, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.51, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.52, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.53, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 0, %struct.anon.85 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.54, i8 64 }], [208 x i8] zeroinitializer }, align 32
@exynos_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed requesting irq, irq = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry_ptr.26 = internal global ptr @exynos_adc_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"has-touchscreen\00", [16 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 921, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed adding child nodes\0A\00", [37 x i8] zeroinitializer }, align 32
@exynos_adc_probe._entry_ptr.30 = internal global ptr @exynos_adc_probe._entry.28, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@exynos_adc_prepare_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed preparing adc clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_adc_prepare_clk\00", [41 x i8] zeroinitializer }, align 32
@exynos_adc_prepare_clk._entry_ptr = internal global ptr @exynos_adc_prepare_clk._entry, section ".printk_index", align 4
@exynos_adc_prepare_clk._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed preparing sclk_adc clock: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@exynos_adc_prepare_clk._entry_ptr.36 = internal global ptr @exynos_adc_prepare_clk._entry.34, section ".printk_index", align 4
@exynos_adc_enable_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed enabling adc clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_adc_enable_clk\00", [42 x i8] zeroinitializer }, align 32
@exynos_adc_enable_clk._entry_ptr = internal global ptr @exynos_adc_enable_clk._entry, section ".printk_index", align 4
@exynos_adc_enable_clk._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed enabling sclk_adc clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos_adc_enable_clk._entry_ptr.41 = internal global ptr @exynos_adc_enable_clk._entry.39, section ".printk_index", align 4
@exynos_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 568, ptr @.str.44, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Conversion timed out! Resetting\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos_read_raw\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos_read_raw._entry_ptr = internal global ptr @exynos_read_raw._entry, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc0\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc1\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc2\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc3\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc4\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc5\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc6\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc7\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc8\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc9\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S3C24xx TouchScreen\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"touchscreen\00", [20 x i8] zeroinitializer }, align 32
@exynos_read_s3c64xx_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.57, ptr @.str.3, i32 603, ptr @.str.44, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_read_s3c64xx_ts\00", [41 x i8] zeroinitializer }, align 32
@exynos_read_s3c64xx_ts._entry_ptr = internal global ptr @exynos_read_s3c64xx_ts._entry, section ".printk_index", align 4
@exynos_adc_s3c24xx_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 1023, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr null, ptr @exynos_adc_s3c64xx_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos_adc_s3c2416_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr null, ptr @exynos_adc_s3c2416_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos_adc_s3c2443_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 1023, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr null, ptr @exynos_adc_s3c2443_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos_adc_s3c64xx_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_s3c64xx_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos_adc_s5pv210_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 10, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_v1_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos4212_adc_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 4, i8 0, i8 1, i32 1816, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_v1_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos_adc_v1_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 8, i8 0, i8 1, i32 1816, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_v1_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos_adc_v2_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 10, i8 0, i8 1, i32 1824, i32 4095, ptr @exynos_adc_v2_init_hw, ptr @exynos_adc_v2_exit_hw, ptr @exynos_adc_v2_clear_irq, ptr @exynos_adc_v2_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos3250_adc_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 2, i8 1, i8 1, i32 1816, i32 4095, ptr @exynos_adc_v2_init_hw, ptr @exynos_adc_v2_exit_hw, ptr @exynos_adc_v2_clear_irq, ptr @exynos_adc_v2_start_conv }, [32 x i8] zeroinitializer }, align 32
@exynos7_adc_data = internal constant { %struct.exynos_adc_data, [32 x i8] } { %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_exynos7_init_hw, ptr @exynos_adc_v2_exit_hw, ptr @exynos_adc_v2_clear_irq, ptr @exynos_adc_v2_start_conv }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"exynos_adc_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1010, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1014, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"exynos_adc_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 487, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"exynos_adc_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1006, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 802, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 810, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 822, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 824, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 844, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 846, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 852, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 854, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 861, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 864, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"exynos_adc_iio_info\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 696, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"exynos_adc_iio_channels\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 711, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 886, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 891, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 906, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 921, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 87, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 182, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 190, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 212, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 220, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 568, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 712, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 713, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 714, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 715, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 716, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 717, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 718, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 719, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 720, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 721, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 768, i32 22 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 783, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 603, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [24 x i8] c"exynos_adc_s3c24xx_data\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 368, i32 37 }
@___asan_gen_.247 = private unnamed_addr constant [24 x i8] c"exynos_adc_s3c2416_data\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 327, i32 37 }
@___asan_gen_.250 = private unnamed_addr constant [24 x i8] c"exynos_adc_s3c2443_data\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 348, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"exynos_adc_s3c64xx_data\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 377, i32 37 }
@___asan_gen_.256 = private unnamed_addr constant [24 x i8] c"exynos_adc_s5pv210_data\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 300, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c"exynos4212_adc_data\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 276, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant [19 x i8] c"exynos_adc_v1_data\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 288, i32 37 }
@___asan_gen_.265 = private unnamed_addr constant [19 x i8] c"exynos_adc_v2_data\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 436, i32 37 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"exynos3250_adc_data\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 448, i32 37 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"exynos7_adc_data\00", align 1
@___asan_gen_.272 = private constant [32 x i8] c"../drivers/iio/adc/exynos_adc.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 477, i32 37 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_exynos_adc_driver_exit, ptr @__initcall__kmod_exynos_adc__291_1020_exynos_adc_driver_init6, ptr @exynos_adc_driver_exit, ptr @exynos_adc_enable_clk._entry, ptr @exynos_adc_enable_clk._entry.39, ptr @exynos_adc_enable_clk._entry_ptr, ptr @exynos_adc_enable_clk._entry_ptr.41, ptr @exynos_adc_prepare_clk._entry, ptr @exynos_adc_prepare_clk._entry.34, ptr @exynos_adc_prepare_clk._entry_ptr, ptr @exynos_adc_prepare_clk._entry_ptr.36, ptr @exynos_adc_probe._entry, ptr @exynos_adc_probe._entry.10, ptr @exynos_adc_probe._entry.14, ptr @exynos_adc_probe._entry.18, ptr @exynos_adc_probe._entry.24, ptr @exynos_adc_probe._entry.28, ptr @exynos_adc_probe._entry.6, ptr @exynos_adc_probe._entry_ptr, ptr @exynos_adc_probe._entry_ptr.12, ptr @exynos_adc_probe._entry_ptr.16, ptr @exynos_adc_probe._entry_ptr.20, ptr @exynos_adc_probe._entry_ptr.26, ptr @exynos_adc_probe._entry_ptr.30, ptr @exynos_adc_probe._entry_ptr.8, ptr @exynos_read_raw._entry, ptr @exynos_read_raw._entry_ptr, ptr @exynos_read_s3c64xx_ts._entry, ptr @exynos_read_s3c64xx_ts._entry_ptr, ptr @exynos_adc_driver, ptr @.str, ptr @exynos_adc_match, ptr @exynos_adc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @exynos_adc_iio_info, ptr @exynos_adc_iio_channels, ptr @exynos_adc_probe.__key, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @exynos_adc_s3c24xx_data, ptr @exynos_adc_s3c2416_data, ptr @exynos_adc_s3c2443_data, ptr @exynos_adc_s3c64xx_data, ptr @exynos_adc_s5pv210_data, ptr @exynos4212_adc_data, ptr @exynos_adc_v1_data, ptr @exynos_adc_v2_data, ptr @exynos3250_adc_data, ptr @exynos7_adc_data], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_iio_channels to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_prepare_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_prepare_clk._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_enable_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_enable_clk._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_read_s3c64xx_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_s3c24xx_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_s3c2416_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_s3c2443_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_s3c64xx_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_s5pv210_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4212_adc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_v1_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_adc_v2_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_adc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_adc_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_adc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 212) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @exynos_adc_match, ptr noundef %7) #5
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %5, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %needs_adc_phy = getelementptr inbounds %struct.exynos_adc_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %needs_adc_phy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_adc_phy, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %if.end21.if.end38_crit_edge, label %if.then24

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then24:                                        ; preds = %if.end21
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call27 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %18, ptr noundef nonnull @.str.9) #5
  %pmu_map = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %pmu_map to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call27, ptr %pmu_map, align 4
  %cmp.i282 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %do.end33, label %if.then24.if.end38_crit_edge

if.then24.if.end38_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end33:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %20 = ptrtoint ptr %pmu_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmu_map, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.then24.if.end38_crit_edge, %if.end21.if.end38_crit_edge
  %call39 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end38.cleanup_crit_edge, label %if.end41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end38
  %irq42 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %irq42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call39, ptr %irq42, align 4
  %call43 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call43)
  %cmp44 = icmp eq i32 %call43, -517
  br i1 %cmp44, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %tsirq = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %tsirq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call43, ptr %tsirq, align 4
  %dev48 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev48, align 4
  %completion = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 11
  %26 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #5
  %call50 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #5
  %clk = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call50, ptr %clk, align 4
  %cmp.i283 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %do.end56, label %if.end62

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %28) #8
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end46
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %needs_sclk = getelementptr inbounds %struct.exynos_adc_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %needs_sclk to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %needs_sclk, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool64.not = icmp eq i8 %35, 0
  br i1 %tobool64.not, label %if.end62.if.end80_crit_edge, label %if.then65

if.end62.if.end80_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then65:                                        ; preds = %if.end62
  %call67 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #5
  %sclk = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 6
  %36 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call67, ptr %sclk, align 4
  %cmp.i284 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %do.end73, label %if.then65.if.end80_crit_edge

if.then65.if.end80_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end73:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %call67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %37) #8
  %38 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sclk, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end80:                                         ; preds = %if.then65.if.end80_crit_edge, %if.end62.if.end80_crit_edge
  %call82 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #5
  %vdd = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call82, ptr %vdd, align 4
  %cmp.i285 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %if.then85, label %if.end90

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %call82 to i32
  %call89 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %42, ptr noundef nonnull @.str.22) #5
  br label %cleanup

if.end90:                                         ; preds = %if.end80
  %call92 = tail call i32 @regulator_enable(ptr noundef %call82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 4
  %call.i286 = tail call i32 @clk_prepare(ptr noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool.not.i = icmp eq i32 %call.i286, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.32, i32 noundef %call.i286) #8
  br label %err_disable_reg

if.end.i:                                         ; preds = %if.end95
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %needs_sclk.i = getelementptr inbounds %struct.exynos_adc_data, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %needs_sclk.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %needs_sclk.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool1.not.i = icmp eq i8 %50, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end99_crit_edge, label %if.then2.i

if.end.i.if.end99_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then2.i:                                       ; preds = %if.end.i
  %sclk.i = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 6
  %51 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sclk.i, align 4
  %call3.i = tail call i32 @clk_prepare(ptr noundef %52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end99_crit_edge, label %if.then5.i

if.then2.i.if.end99_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %54) #5
  %55 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.35, i32 noundef %call3.i) #8
  br label %err_disable_reg

if.end99:                                         ; preds = %if.then2.i.if.end99_crit_edge, %if.end.i.if.end99_crit_edge
  %call100 = tail call fastcc i32 @exynos_adc_enable_clk(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.err_unprepare_clk_crit_edge

if.end99.err_unprepare_clk_crit_edge:             ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unprepare_clk

if.end103:                                        ; preds = %if.end99
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i287 = icmp eq ptr %59, null
  br i1 %tobool.not.i287, label %if.end.i288, label %if.end103.dev_name.exit_crit_edge

if.end103.dev_name.exit_crit_edge:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i288:                                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i288, %if.end103.dev_name.exit_crit_edge
  %retval.0.i289 = phi ptr [ %61, %if.end.i288 ], [ %59, %if.end103.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %62 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %retval.0.i289, ptr %name, align 8
  %info106 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %63 = ptrtoint ptr %info106 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @exynos_adc_iio_info, ptr %info106, align 8
  %64 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %call3, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %65 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @exynos_adc_iio_channels, ptr %channels, align 8
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %num_channels108 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %70 = ptrtoint ptr %num_channels108 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %num_channels108, align 4
  %lock = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @exynos_adc_probe.__key) #5
  %71 = ptrtoint ptr %irq42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq42, align 4
  %73 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i291 = icmp eq ptr %74, null
  br i1 %tobool.not.i291, label %if.end.i292, label %dev_name.exit.dev_name.exit294_crit_edge

dev_name.exit.dev_name.exit294_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit294

if.end.i292:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  br label %dev_name.exit294

dev_name.exit294:                                 ; preds = %if.end.i292, %dev_name.exit.dev_name.exit294_crit_edge
  %retval.0.i293 = phi ptr [ %76, %if.end.i292 ], [ %74, %dev_name.exit.dev_name.exit294_crit_edge ]
  %call.i295 = tail call i32 @request_threaded_irq(i32 noundef %72, ptr noundef nonnull @exynos_adc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i293, ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %cmp116 = icmp slt i32 %call.i295, 0
  br i1 %cmp116, label %do.end120, label %if.end123

do.end120:                                        ; preds = %dev_name.exit294
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %irq42 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %78) #8
  br label %err_disable_clk

if.end123:                                        ; preds = %dev_name.exit294
  %call124 = tail call i32 @__iio_device_register(ptr noundef nonnull %call3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.err_irq_crit_edge

if.end123.err_irq_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.end127:                                        ; preds = %if.end123
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 4
  %init_hw = getelementptr inbounds %struct.exynos_adc_data, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %init_hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_hw, align 4
  %tobool129.not = icmp eq ptr %82, null
  br i1 %tobool129.not, label %if.end127.if.end133_crit_edge, label %if.then130

if.end127.if.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %82(ptr noundef %5) #5
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end127.if.end133_crit_edge
  %83 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %of_node, align 8
  %call.i296 = tail call ptr @of_find_property(ptr noundef %84, ptr noundef nonnull @.str.27, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i296, null
  %tobool137 = icmp ne ptr %3, null
  %spec.select = select i1 %tobool.i, i1 true, i1 %tobool137
  %tobool138.not = icmp eq ptr %3, null
  br i1 %tobool138.not, label %if.end133.if.end142_crit_edge, label %if.then139

if.end133.if.end142_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then139:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %3, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end133.if.end142_crit_edge
  %.sink = phi i32 [ %86, %if.then139 ], [ 10000, %if.end133.if.end142_crit_edge ]
  %87 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 9
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.sink, ptr %87, align 4
  br i1 %spec.select, label %if.end146, label %if.end142.if.end149_crit_edge

if.end142.if.end149_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149

if.end146:                                        ; preds = %if.end142
  %call145 = tail call fastcc i32 @exynos_adc_ts_init(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool147.not = icmp eq i32 %call145, 0
  br i1 %tobool147.not, label %if.end146.if.end149_crit_edge, label %if.end146.err_iio_crit_edge

if.end146.err_iio_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_iio

if.end146.if.end149_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149

if.end149:                                        ; preds = %if.end146.if.end149_crit_edge, %if.end142.if.end149_crit_edge
  %dev150 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 2
  %call151 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef nonnull @exynos_adc_match, ptr noundef null, ptr noundef %dev150) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %do.end156, label %if.end149.cleanup_crit_edge

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end156:                                        ; preds = %if.end149
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  %call160 = tail call i32 @device_for_each_child(ptr noundef %dev150, ptr noundef null, ptr noundef nonnull @exynos_adc_remove_devices) #5
  br i1 %spec.select, label %if.then162, label %do.end156.err_iio_crit_edge

do.end156.err_iio_crit_edge:                      ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_iio

if.then162:                                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #7
  %input = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 2
  %89 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %90) #5
  %91 = ptrtoint ptr %tsirq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tsirq, align 4
  %call164 = tail call ptr @free_irq(i32 noundef %92, ptr noundef %5) #5
  br label %err_iio

err_iio:                                          ; preds = %if.then162, %do.end156.err_iio_crit_edge, %if.end146.err_iio_crit_edge
  %ret.1 = phi i32 [ %call145, %if.end146.err_iio_crit_edge ], [ %call151, %if.then162 ], [ %call151, %do.end156.err_iio_crit_edge ]
  tail call void @iio_device_unregister(ptr noundef nonnull %call3) #5
  br label %err_irq

err_irq:                                          ; preds = %err_iio, %if.end123.err_irq_crit_edge
  %ret.2 = phi i32 [ %call124, %if.end123.err_irq_crit_edge ], [ %ret.1, %err_iio ]
  %93 = ptrtoint ptr %irq42 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %irq42, align 4
  %call167 = tail call ptr @free_irq(i32 noundef %94, ptr noundef %5) #5
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_irq, %do.end120
  %ret.3 = phi i32 [ %call.i295, %do.end120 ], [ %ret.2, %err_irq ]
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %5, align 4
  %exit_hw = getelementptr inbounds %struct.exynos_adc_data, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %exit_hw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %exit_hw, align 4
  %tobool169.not = icmp eq ptr %98, null
  br i1 %tobool169.not, label %err_disable_clk.if.end173_crit_edge, label %if.then170

err_disable_clk.if.end173_crit_edge:              ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end173

if.then170:                                       ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %98(ptr noundef %5) #5
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %err_disable_clk.if.end173_crit_edge
  tail call fastcc void @exynos_adc_disable_clk(ptr noundef %5)
  br label %err_unprepare_clk

err_unprepare_clk:                                ; preds = %if.end173, %if.end99.err_unprepare_clk_crit_edge
  %ret.4 = phi i32 [ %call100, %if.end99.err_unprepare_clk_crit_edge ], [ %ret.3, %if.end173 ]
  tail call fastcc void @exynos_adc_unprepare_clk(ptr noundef %5)
  br label %err_disable_reg

err_disable_reg:                                  ; preds = %err_unprepare_clk, %if.then5.i, %do.end.i
  %ret.5 = phi i32 [ %ret.4, %err_unprepare_clk ], [ %call.i286, %do.end.i ], [ %call3.i, %if.then5.i ]
  %99 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vdd, align 4
  %call175 = tail call i32 @regulator_disable(ptr noundef %100) #5
  br label %cleanup

cleanup:                                          ; preds = %err_disable_reg, %if.end149.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.then85, %do.end73, %do.end56, %if.end41.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.end33, %if.then18, %do.end12, %do.end
  %retval.0 = phi i32 [ %12, %if.then18 ], [ %22, %do.end33 ], [ %31, %do.end56 ], [ %40, %do.end73 ], [ %call89, %if.then85 ], [ %ret.5, %err_disable_reg ], [ -22, %do.end12 ], [ -12, %do.end ], [ %call39, %if.end38.cleanup_crit_edge ], [ -517, %if.end41.cleanup_crit_edge ], [ %call92, %if.end90.cleanup_crit_edge ], [ 0, %if.end149.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %input = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tsirq = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %tsirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tsirq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %3) #5
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @exynos_adc_remove_devices) #5
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %irq = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %3) #5
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %exit_hw = getelementptr inbounds %struct.exynos_adc_data, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %exit_hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %exit_hw, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %15(ptr noundef %3) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %needs_sclk.i = getelementptr inbounds %struct.exynos_adc_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %needs_sclk.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %needs_sclk.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end10.exynos_adc_disable_clk.exit_crit_edge, label %if.then.i

if.end10.exynos_adc_disable_clk.exit_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_adc_disable_clk.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %sclk.i = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sclk.i, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  br label %exynos_adc_disable_clk.exit

exynos_adc_disable_clk.exit:                      ; preds = %if.then.i, %if.end10.exynos_adc_disable_clk.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %needs_sclk.i25 = getelementptr inbounds %struct.exynos_adc_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %needs_sclk.i25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %needs_sclk.i25, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i26 = icmp eq i8 %27, 0
  br i1 %tobool.not.i26, label %exynos_adc_disable_clk.exit.exynos_adc_unprepare_clk.exit_crit_edge, label %if.then.i28

exynos_adc_disable_clk.exit.exynos_adc_unprepare_clk.exit_crit_edge: ; preds = %exynos_adc_disable_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_adc_unprepare_clk.exit

if.then.i28:                                      ; preds = %exynos_adc_disable_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sclk.i27 = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %sclk.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sclk.i27, align 4
  tail call void @clk_unprepare(ptr noundef %29) #5
  br label %exynos_adc_unprepare_clk.exit

exynos_adc_unprepare_clk.exit:                    ; preds = %if.then.i28, %exynos_adc_disable_clk.exit.exynos_adc_unprepare_clk.exit_crit_edge
  %30 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i, align 4
  tail call void @clk_unprepare(ptr noundef %31) #5
  %vdd = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 10
  %32 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdd, align 4
  %call11 = tail call i32 @regulator_disable(ptr noundef %33) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_adc_enable_clk(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %needs_sclk = getelementptr inbounds %struct.exynos_adc_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %needs_sclk to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %needs_sclk, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %sclk = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sclk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.then5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  %dev10 = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.40, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %if.then5 ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_ts = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 15
  %0 = ptrtoint ptr %read_ts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_ts, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !154
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  %ts_x = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 16
  %6 = ptrtoint ptr %ts_x to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ts_x, align 4
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !154
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  %ts_y = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 17
  %11 = ptrtoint ptr %ts_y to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ts_y, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -754909184) #5, !srcloc !158
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %mask1 = getelementptr inbounds %struct.exynos_adc_data, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask1, align 4
  %regs14 = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 3
  %18 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs14, align 4
  %add.ptr15 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !154
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  %and = and i32 %21, %17
  %value = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 12
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %clear_irq = getelementptr inbounds %struct.exynos_adc_data, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %clear_irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clear_irq, align 4
  %tobool20.not = icmp eq ptr %26, null
  br i1 %tobool20.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %26(ptr noundef %dev_id) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  %completion = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %completion) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_adc_ts_init(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tsirq = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %tsirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tsirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @input_allocate_device() #5
  %input = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %input, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %evbit, align 8
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %arrayidx6 = getelementptr %struct.input_dev, ptr %5, i32 0, i32 6, i32 10
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %arrayidx6, align 4
  %7 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #5
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %9, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #5
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.55, ptr %11, align 8
  %13 = load ptr, ptr %input, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 25, ptr %id, align 4
  %15 = load ptr, ptr %input, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 31
  %16 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @exynos_adc_ts_open, ptr %open, align 8
  %17 = load ptr, ptr %input, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @exynos_adc_ts_close, ptr %close, align 4
  %19 = load ptr, ptr %input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 40, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %info, ptr %driver_data.i.i, align 4
  %21 = load ptr, ptr %input, align 4
  %call15 = tail call i32 @input_register_device(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input, align 4
  tail call void @input_free_device(ptr noundef %23) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end3
  %24 = ptrtoint ptr %tsirq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tsirq, align 4
  %call21 = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef null, ptr noundef nonnull @exynos_ts_isr, i32 noundef 532480, ptr noundef nonnull @.str.56, ptr noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.then23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %27) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end19.cleanup_crit_edge, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call21, %if.then23 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_remove_devices(ptr noundef %dev, ptr nocapture noundef readnone %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_adc_disable_clk(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %needs_sclk = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %needs_sclk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_sclk, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sclk = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sclk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_adc_unprepare_clk(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %needs_sclk = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %needs_sclk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_sclk, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sclk = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sclk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %if.then
    i32 0, label %if.end8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %vdd = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_get_voltage(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %div50 = udiv i32 %call1, 1000
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div50, ptr %val, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %mask4 = getelementptr inbounds %struct.exynos_adc_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask4, align 4
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val2, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %completion = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completion, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %start_conv = getelementptr inbounds %struct.exynos_adc_data, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %start_conv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %start_conv, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  tail call void %15(ptr noundef %1, i32 noundef %17) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %call16 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %do.end, label %if.else25

do.end:                                           ; preds = %if.end13
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %init_hw = getelementptr inbounds %struct.exynos_adc_data, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %init_hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_hw, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %do.end.if.end26_crit_edge, label %if.then21

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %21(ptr noundef %1) #5
  br label %if.end26

if.else25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %value = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val2, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then21, %do.end.if.end26_crit_edge
  %ret.0 = phi i32 [ 1, %if.else25 ], [ -110, %if.then21 ], [ -110, %do.end.if.end26_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.end ], [ %ret.0, %if.end26 ], [ %call1, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %readval, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !154
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %6 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %readval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_ts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ts_enabled = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ts_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 1, ptr %ts_enabled, align 4
  %tsirq = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %tsirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tsirq, align 4
  tail call void @enable_irq(i32 noundef %4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_ts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ts_enabled = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ts_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 0, ptr %ts_enabled, align 4
  %tsirq = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %tsirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tsirq, align 4
  tail call void @disable_irq(i32 noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_ts_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ts_enabled = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 14
  %4 = ptrtoint ptr %ts_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %ts_enabled, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not36 = icmp eq i8 %5, 0
  br i1 %tobool.not36, label %entry.do.body17_crit_edge, label %while.body.lr.ph

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

while.body.lr.ph:                                 ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %input11 = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %read_ts.i = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %read_ts.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %read_ts.i, align 1
  %completion.i = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 11
  %9 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completion.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %regs.i = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -603979776) #5, !srcloc !158
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %start_conv.i = getelementptr inbounds %struct.exynos_adc_data, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %start_conv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %start_conv.i, align 4
  tail call void %15(ptr noundef %7, i32 noundef 0) #5
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %do.end6.i, label %if.end

do.end6.i:                                        ; preds = %while.body
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.42) #8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %init_hw.i = getelementptr inbounds %struct.exynos_adc_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %init_hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_hw.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.end6.i.exynos_read_s3c64xx_ts.exit.thread_crit_edge, label %if.then8.i

do.end6.i.exynos_read_s3c64xx_ts.exit.thread_crit_edge: ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_read_s3c64xx_ts.exit.thread

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %19(ptr noundef %7) #5
  br label %exynos_read_s3c64xx_ts.exit.thread

exynos_read_s3c64xx_ts.exit.thread:               ; preds = %if.then8.i, %do.end6.i.exynos_read_s3c64xx_ts.exit.thread_crit_edge
  %20 = ptrtoint ptr %read_ts.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %read_ts.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %do.body17

if.end:                                           ; preds = %while.body
  %ts_x.i = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 16
  %21 = ptrtoint ptr %ts_x.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ts_x.i, align 4
  %ts_y.i = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 17
  %23 = ptrtoint ptr %ts_y.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts_y.i, align 4
  %25 = ptrtoint ptr %read_ts.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %read_ts.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  %and = and i32 %22, 32768
  %and4 = and i32 %and, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %26 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input11, align 4
  br i1 %tobool5.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %28 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input11, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %do.body17

if.end10:                                         ; preds = %if.end
  %and12 = and i32 %22, 4095
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 0, i32 noundef %and12) #5
  %30 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input11, align 4
  %and14 = and i32 %24, 4095
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 1, i32 noundef %and14) #5
  %32 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input11, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %34 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input11, align 4
  tail call void @input_event(ptr noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %36 = ptrtoint ptr %ts_enabled to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %ts_enabled, align 4, !range !153
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %if.end10.do.body17_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end10.do.body17_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

do.body17:                                        ; preds = %if.end10.do.body17_crit_edge, %if.then8, %exynos_read_s3c64xx_ts.exit.thread, %entry.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %dev_id, i32 0, i32 3
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !158
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v1_init_hw(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %needs_adc_phy = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %needs_adc_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_adc_phy, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pmu_map = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %pmu_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu_map, align 4
  %phy_offset = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %phy_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_offset, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1078722816) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %delay = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 9
  %10 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v1_exit_hw(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %needs_adc_phy = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %needs_adc_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_adc_phy, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pmu_map = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %pmu_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu_map, align 4
  %phy_offset = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %phy_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_offset, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  %11 = or i32 %10, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_s3c64xx_start_conv(ptr nocapture noundef readonly %info, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  %3 = and i32 %2, -939524097
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and2 = shl i32 %addr, 3
  %shl = and i32 %and2, 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %or = or i32 %shl, %4
  %or3 = or i32 %or, 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !158
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_s3c2416_start_conv(ptr nocapture noundef readonly %info, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  %3 = or i32 %2, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #5, !srcloc !158
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %12 = or i32 %11, 16777216
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_s3c2443_start_conv(ptr nocapture noundef readonly %info, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !158
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %6 = or i32 %5, 16777216
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v1_clear_irq(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v1_start_conv(ptr nocapture noundef readonly %info, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !158
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %6 = or i32 %5, 16777216
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v2_init_hw(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %needs_adc_phy = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %needs_adc_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_adc_phy, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pmu_map = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %pmu_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu_map, align 4
  %phy_offset = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %phy_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_offset, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 67108864) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 458752) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v2_exit_hw(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %needs_adc_phy = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %needs_adc_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_adc_phy, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pmu_map = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %pmu_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu_map, align 4
  %phy_offset = getelementptr inbounds %struct.exynos_adc_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %phy_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_offset, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v2_clear_irq(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_v2_start_conv(ptr nocapture noundef readonly %info, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  %3 = and i32 %2, -251658241
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and2 = and i32 %addr, 15
  %or = or i32 %4, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #5, !srcloc !158
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_adc_exynos7_init_hw(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.exynos_adc, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 67108864) #5, !srcloc !158
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  %5 = and i32 %4, -1879048193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 16777216) #5, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %exit_hw = getelementptr inbounds %struct.exynos_adc_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %exit_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exit_hw, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %needs_sclk.i = getelementptr inbounds %struct.exynos_adc_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %needs_sclk.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %needs_sclk.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.exynos_adc_disable_clk.exit_crit_edge, label %if.then.i

if.end.exynos_adc_disable_clk.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exynos_adc_disable_clk.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sclk.i = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sclk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  br label %exynos_adc_disable_clk.exit

exynos_adc_disable_clk.exit:                      ; preds = %if.then.i, %if.end.exynos_adc_disable_clk.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  %vdd = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdd, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %17) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_adc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %vdd = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @exynos_adc_enable_clk(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %init_hw = getelementptr inbounds %struct.exynos_adc_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %init_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_hw, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_exynos_adc__291_1020_exynos_adc_driver_init6, !1, !"__initcall__kmod_exynos_adc__291_1020_exynos_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/exynos_adc.c", i32 1020, i32 1}
!2 = !{ptr @__exitcall_exynos_adc_driver_exit, !1, !"__exitcall_exynos_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/exynos_adc.c", i32 1022, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/exynos_adc.c", i32 1023, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/exynos_adc.c", i32 1024, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/exynos_adc.c", i32 1014, i32 11}
!12 = !{ptr @exynos_adc_driver, !13, !"exynos_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/exynos_adc.c", i32 1010, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/exynos_adc.c", i32 802, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @exynos_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/exynos_adc.c", i32 810, i32 3}
!24 = !{ptr @exynos_adc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @exynos_adc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/exynos_adc.c", i32 822, i32 6}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/exynos_adc.c", i32 824, i32 4}
!30 = !{ptr @exynos_adc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @exynos_adc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/exynos_adc.c", i32 844, i32 39}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/exynos_adc.c", i32 846, i32 3}
!36 = !{ptr @exynos_adc_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @exynos_adc_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/exynos_adc.c", i32 852, i32 41}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/exynos_adc.c", i32 854, i32 4}
!42 = !{ptr @exynos_adc_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @exynos_adc_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/exynos_adc.c", i32 861, i32 45}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/exynos_adc.c", i32 864, i32 10}
!48 = !{ptr @exynos_adc_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/exynos_adc.c", i32 886, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/exynos_adc.c", i32 891, i32 3}
!53 = !{ptr @exynos_adc_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @exynos_adc_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/exynos_adc.c", i32 906, i32 13}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/exynos_adc.c", i32 921, i32 3}
!59 = !{ptr @exynos_adc_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @exynos_adc_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @init_completion.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/completion.h", i32 87, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/exynos_adc.c", i32 182, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @exynos_adc_prepare_clk._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @exynos_adc_prepare_clk._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/exynos_adc.c", i32 190, i32 4}
!71 = !{ptr @exynos_adc_prepare_clk._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @exynos_adc_prepare_clk._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/exynos_adc.c", i32 212, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @exynos_adc_enable_clk._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @exynos_adc_enable_clk._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/exynos_adc.c", i32 220, i32 4}
!80 = !{ptr @exynos_adc_enable_clk._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @exynos_adc_enable_clk._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @exynos_adc_iio_info, !83, !"exynos_adc_iio_info", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/exynos_adc.c", i32 696, i32 30}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/exynos_adc.c", i32 568, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @exynos_read_raw._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @exynos_read_raw._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/exynos_adc.c", i32 712, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/exynos_adc.c", i32 713, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/exynos_adc.c", i32 714, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/exynos_adc.c", i32 715, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/exynos_adc.c", i32 716, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/exynos_adc.c", i32 717, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/exynos_adc.c", i32 718, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/exynos_adc.c", i32 719, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/adc/exynos_adc.c", i32 720, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/exynos_adc.c", i32 721, i32 2}
!110 = !{ptr @exynos_adc_iio_channels, !111, !"exynos_adc_iio_channels", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/exynos_adc.c", i32 711, i32 35}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/exynos_adc.c", i32 768, i32 22}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/exynos_adc.c", i32 783, i32 8}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/adc/exynos_adc.c", i32 603, i32 3}
!118 = !{ptr @exynos_read_s3c64xx_ts._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @exynos_read_s3c64xx_ts._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @exynos_adc_match, !121, !"exynos_adc_match", i1 false, i1 false}
!121 = !{!"../drivers/iio/adc/exynos_adc.c", i32 487, i32 34}
!122 = !{ptr @exynos_adc_s3c24xx_data, !123, !"exynos_adc_s3c24xx_data", i1 false, i1 false}
!123 = !{!"../drivers/iio/adc/exynos_adc.c", i32 368, i32 37}
!124 = !{ptr @exynos_adc_s3c2416_data, !125, !"exynos_adc_s3c2416_data", i1 false, i1 false}
!125 = !{!"../drivers/iio/adc/exynos_adc.c", i32 327, i32 37}
!126 = !{ptr @exynos_adc_s3c2443_data, !127, !"exynos_adc_s3c2443_data", i1 false, i1 false}
!127 = !{!"../drivers/iio/adc/exynos_adc.c", i32 348, i32 37}
!128 = !{ptr @exynos_adc_s3c64xx_data, !129, !"exynos_adc_s3c64xx_data", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/exynos_adc.c", i32 377, i32 37}
!130 = !{ptr @exynos_adc_s5pv210_data, !131, !"exynos_adc_s5pv210_data", i1 false, i1 false}
!131 = !{!"../drivers/iio/adc/exynos_adc.c", i32 300, i32 37}
!132 = !{ptr @exynos4212_adc_data, !133, !"exynos4212_adc_data", i1 false, i1 false}
!133 = !{!"../drivers/iio/adc/exynos_adc.c", i32 276, i32 37}
!134 = !{ptr @exynos_adc_v1_data, !135, !"exynos_adc_v1_data", i1 false, i1 false}
!135 = !{!"../drivers/iio/adc/exynos_adc.c", i32 288, i32 37}
!136 = !{ptr @exynos_adc_v2_data, !137, !"exynos_adc_v2_data", i1 false, i1 false}
!137 = !{!"../drivers/iio/adc/exynos_adc.c", i32 436, i32 37}
!138 = !{ptr @exynos3250_adc_data, !139, !"exynos3250_adc_data", i1 false, i1 false}
!139 = !{!"../drivers/iio/adc/exynos_adc.c", i32 448, i32 37}
!140 = !{ptr @exynos7_adc_data, !141, !"exynos7_adc_data", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/exynos_adc.c", i32 477, i32 37}
!142 = !{ptr @exynos_adc_pm_ops, !143, !"exynos_adc_pm_ops", i1 false, i1 false}
!143 = !{!"../drivers/iio/adc/exynos_adc.c", i32 1006, i32 8}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i8 0, i8 2}
!154 = !{i64 4896159}
!155 = !{i64 2155313719}
!156 = !{i64 2155314253}
!157 = !{i64 2155314748}
!158 = !{i64 4895741}
!159 = !{i64 2155315670}
!160 = !{i64 2155319563}
!161 = !{i64 2155311038}
!162 = !{i64 2155318891}
!163 = !{i64 2155293567}
!164 = !{i64 2155294003}
!165 = !{i64 2155294742}
!166 = !{i64 2155294996}
!167 = !{i64 2155301506}
!168 = !{i64 2155301816}
!169 = !{i64 2155297617}
!170 = !{i64 2155297872}
!171 = !{i64 2155298301}
!172 = !{i64 2155299019}
!173 = !{i64 2155299286}
!174 = !{i64 2155299759}
!175 = !{i64 2155300477}
!176 = !{i64 2155300744}
!177 = !{i64 2155295419}
!178 = !{i64 2155295839}
!179 = !{i64 2155296557}
!180 = !{i64 2155296824}
!181 = !{i64 2155302307}
!182 = !{i64 2155302786}
!183 = !{i64 2155303212}
!184 = !{i64 2155303921}
!185 = !{i64 2155304175}
!186 = !{i64 2155304598}
!187 = !{i64 2155305307}
!188 = !{i64 2155305580}
!189 = !{i64 2155306298}
!190 = !{i64 2155306565}
!191 = !{i64 2155307071}
!192 = !{i64 2155307789}
!193 = !{i64 2155308072}
!194 = !{i64 2155308498}
