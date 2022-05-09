; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/sun4i-gpadc-iio.c_pt.bc'
source_filename = "../drivers/iio/adc/sun4i-gpadc-iio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_map = type { ptr, ptr, ptr, ptr }
%struct.gpadc_data = type { i32, i32, i32, i32, ptr, i32 }
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
%struct.sun4i_gpadc_iio = type { ptr, %struct.completion, i32, i32, ptr, i32, %struct.atomic_t, i32, %struct.atomic_t, ptr, i8, %struct.mutex, ptr, ptr }
%struct.sun4i_gpadc_dev = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_sun4i_gpadc_iio__188_712_sun4i_gpadc_driver_init6 = internal global ptr @sun4i_gpadc_driver_init, section ".initcall6.init", align 4
@sun4i_gpadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_gpadc_probe, ptr @sun4i_gpadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_gpadc_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_gpadc_pm_ops, ptr null, ptr null }, ptr @sun4i_gpadc_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_gpadc_driver_exit = internal global ptr @sun4i_gpadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [59 x i8] c"sun4i_gpadc_iio.description=ADC driver for sunxi platforms\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [74 x i8] c"sun4i_gpadc_iio.author=Quentin Schulz <quentin.schulz@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [53 x i8] c"sun4i_gpadc_iio.file=drivers/iio/adc/sun4i-gpadc-iio\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [31 x i8] c"sun4i_gpadc_iio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i-gpadc-iio\00", [16 x i8] zeroinitializer }, align 32
@sun4i_gpadc_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_gpadc_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun4i_gpadc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_gpadc_runtime_suspend, ptr @sun4i_gpadc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_gpadc_id = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sun4i-a10-gpadc-iio\00", i32 ptrtoint (ptr @sun4i_gpadc_data to i32) }, %struct.platform_device_id { [20 x i8] c"sun5i-a13-gpadc-iio\00", i32 ptrtoint (ptr @sun5i_gpadc_data to i32) }, %struct.platform_device_id { [20 x i8] c"sun6i-a31-gpadc-iio\00", i32 ptrtoint (ptr @sun6i_gpadc_data to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@sun4i_gpadc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @sun4i_gpadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sun4i_ts_tz_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @sun4i_gpadc_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not register thermal sensor: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun4i_gpadc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/adc/sun4i-gpadc-iio.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe._entry_ptr = internal global ptr @sun4i_gpadc_probe._entry, section ".printk_index", align 4
@sun4i_gpadc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 657, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register the device\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe._entry_ptr.9 = internal global ptr @sun4i_gpadc_probe._entry.7, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun8i_a33_gpadc_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 0 }], [40 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe_dt._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun4i_gpadc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sun4i_gpadc_iio:515:(&sun4i_gpadc_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun4i_gpadc_probe_dt\00", [43 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe_dt._entry_ptr = internal global ptr @sun4i_gpadc_probe_dt._entry, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"temp_adc\00", [23 x i8] zeroinitializer }, align 32
@sun4i_gpadc_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEMP_DATA_PENDING\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp_data\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FIFO_DATA_PENDING\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fifo_data\00", [22 x i8] zeroinitializer }, align 32
@sun4i_gpadc_hwmon_maps = internal global { [2 x %struct.iio_map], [32 x i8] } { [2 x %struct.iio_map] [%struct.iio_map { ptr @.str.14, ptr @.str.30, ptr null, ptr null }, %struct.iio_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe_mfd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register iio map array\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun4i_gpadc_probe_mfd\00", [42 x i8] zeroinitializer }, align 32
@sun4i_gpadc_probe_mfd._entry_ptr = internal global ptr @sun4i_gpadc_probe_mfd._entry, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adc_chan0\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adc_chan1\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adc_chan2\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adc_chan3\00", [22 x i8] zeroinitializer }, align 32
@sun4i_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get virq for irq %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun4i_irq_init\00", [17 x i8] zeroinitializer }, align 32
@sun4i_irq_init._entry_ptr = internal global ptr @sun4i_irq_init._entry, section ".printk_index", align 4
@sun4i_irq_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not request %s interrupt: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_irq_init._entry_ptr.29 = internal global ptr @sun4i_irq_init._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iio_hwmon.0\00", [20 x i8] zeroinitializer }, align 32
@sun8i_a33_gpadc_data = internal constant { %struct.gpadc_data, [40 x i8] } { %struct.gpadc_data { i32 -1662, i32 162, i32 256, i32 0, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sun4i_gpadc_data = internal constant { %struct.gpadc_data, [40 x i8] } { %struct.gpadc_data { i32 -1932, i32 133, i32 16, i32 8, ptr @sun4i_gpadc_chan_select, i32 7 }, [40 x i8] zeroinitializer }, align 32
@sun5i_gpadc_data = internal constant { %struct.gpadc_data, [40 x i8] } { %struct.gpadc_data { i32 -1447, i32 100, i32 16, i32 8, ptr @sun4i_gpadc_chan_select, i32 7 }, [40 x i8] zeroinitializer }, align 32
@sun6i_gpadc_data = internal constant { %struct.gpadc_data, [40 x i8] } { %struct.gpadc_data { i32 -1623, i32 167, i32 32, i32 16, ptr @sun6i_gpadc_chan_select, i32 15 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"sun4i_gpadc_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 700, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 702, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"sun4i_gpadc_of_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 487, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"sun4i_gpadc_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 435, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"sun4i_gpadc_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 692, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 618, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"sun4i_gpadc_iio_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 350, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"sun4i_ts_tz_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 431, i32 48 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 648, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 657, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 87, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"sun8i_a33_gpadc_channels\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 147, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"sun4i_gpadc_regmap_config\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 157, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 514, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 518, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 153, i32 21 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"sun4i_gpadc_channels\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 126, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 579, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 581, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 587, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 588, i32 44 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"sun4i_gpadc_hwmon_maps\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 118, i32 23 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 596, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 127, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 128, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 129, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 130, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 468, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 477, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 121, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant [21 x i8] c"sun8i_a33_gpadc_data\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 85, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"sun4i_gpadc_data\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 58, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"sun5i_gpadc_data\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 67, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"sun6i_gpadc_data\00", align 1
@___asan_gen_.179 = private constant [37 x i8] c"../drivers/iio/adc/sun4i-gpadc-iio.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 76, i32 32 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_sun4i_gpadc_driver_exit, ptr @__initcall__kmod_sun4i_gpadc_iio__188_712_sun4i_gpadc_driver_init6, ptr @sun4i_gpadc_driver_exit, ptr @sun4i_gpadc_probe._entry, ptr @sun4i_gpadc_probe._entry.7, ptr @sun4i_gpadc_probe._entry_ptr, ptr @sun4i_gpadc_probe._entry_ptr.9, ptr @sun4i_gpadc_probe_dt._entry, ptr @sun4i_gpadc_probe_dt._entry_ptr, ptr @sun4i_gpadc_probe_mfd._entry, ptr @sun4i_gpadc_probe_mfd._entry_ptr, ptr @sun4i_irq_init._entry, ptr @sun4i_irq_init._entry.27, ptr @sun4i_irq_init._entry_ptr, ptr @sun4i_irq_init._entry_ptr.29, ptr @sun4i_gpadc_driver, ptr @.str, ptr @sun4i_gpadc_of_id, ptr @sun4i_gpadc_pm_ops, ptr @sun4i_gpadc_id, ptr @sun4i_gpadc_probe.__key, ptr @.str.1, ptr @sun4i_gpadc_iio_info, ptr @sun4i_ts_tz_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @init_completion.__key, ptr @.str.10, ptr @sun8i_a33_gpadc_channels, ptr @sun4i_gpadc_probe_dt._key, ptr @sun4i_gpadc_regmap_config, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sun4i_gpadc_channels, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @sun4i_gpadc_hwmon_maps, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @sun8i_a33_gpadc_data, ptr @sun4i_gpadc_data, ptr @sun5i_gpadc_data, ptr @sun6i_gpadc_data], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ts_tz_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_gpadc_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_probe_dt._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_hwmon_maps to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_probe_mfd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_irq_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_gpadc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_gpadc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_gpadc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_gpadc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_gpadc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_gpadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_gpadc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 196) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @sun4i_gpadc_probe.__key) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %1, align 4
  %completion = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #6
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %name, align 8
  %info5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %info5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sun4i_gpadc_iio_info, ptr %info5, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool7.not = icmp eq ptr %13, null
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 8
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %dev_name.exit
  %call1.i = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i, ptr %data.i, align 4
  %tobool.not.i90 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i90, label %if.then8.cleanup_crit_edge, label %if.end.i91

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i91:                                       ; preds = %if.then8
  %no_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 10
  %17 = ptrtoint ptr %no_irq.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %no_irq.i, align 4
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_channels.i, align 4
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sun8i_a33_gpadc_channels, ptr %channels.i, align 8
  %call3.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call3.i to i32
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i91
  %call9.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call3.i, ptr noundef nonnull @sun4i_gpadc_regmap_config, ptr noundef nonnull @sun4i_gpadc_probe_dt._key, ptr noundef nonnull @.str.11) #6
  %regmap.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 4
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i, ptr %regmap.i, align 4
  %cmp.i35.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i, label %if.then12.i, label %if.end16.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call9.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %22) #9
  br label %cleanup

if.end16.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sensor_device.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 13
  %23 = ptrtoint ptr %sensor_device.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %sensor_device.i, align 4
  br label %if.end14

if.else:                                          ; preds = %dev_name.exit
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i95 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i95, align 4
  %no_irq.i96 = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 10
  %28 = ptrtoint ptr %no_irq.i96 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %no_irq.i96, align 4
  %regmap.i97 = getelementptr inbounds %struct.sun4i_gpadc_dev, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %regmap.i97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i97, align 4
  %regmap2.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 4
  %31 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %regmap2.i, align 4
  %num_channels.i98 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %32 = ptrtoint ptr %num_channels.i98 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %num_channels.i98, align 4
  %channels.i99 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %33 = ptrtoint ptr %channels.i99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sun4i_gpadc_channels, ptr %channels.i99, align 8
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %34 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %driver_data.i, align 4
  %38 = inttoptr i32 %37 to ptr
  %data.i100 = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 9
  %39 = ptrtoint ptr %data.i100 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %data.i100, align 4
  %40 = load ptr, ptr %parent.i, align 8
  %sensor_device.i101 = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 13
  %41 = ptrtoint ptr %sensor_device.i101 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %sensor_device.i101, align 4
  %temp_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 7
  %ignore_temp_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 8
  %call5.i = tail call fastcc i32 @sun4i_irq_init(ptr noundef %pdev, ptr noundef nonnull @.str.15, ptr noundef nonnull @sun4i_gpadc_temp_data_irq_handler, ptr noundef nonnull @.str.16, ptr noundef %temp_data_irq.i, ptr noundef %ignore_temp_data_irq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i102

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i102:                                      ; preds = %if.else
  %fifo_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 5
  %ignore_fifo_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 6
  %call6.i = tail call fastcc i32 @sun4i_irq_init(ptr noundef %pdev, ptr noundef nonnull @.str.17, ptr noundef nonnull @sun4i_gpadc_fifo_data_irq_handler, ptr noundef nonnull @.str.18, ptr noundef %fifo_data_irq.i, ptr noundef %ignore_fifo_data_irq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i102.cleanup_crit_edge, label %if.end9.i

if.end.i102.cleanup_crit_edge:                    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i102
  %call10.i = tail call i32 @iio_map_array_register(ptr noundef nonnull %call, ptr noundef nonnull @sun4i_gpadc_hwmon_maps) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end.i, label %if.end9.i.if.end14_crit_edge

if.end9.i.if.end14_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9.i.if.end14_crit_edge, %if.end16.i
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 10000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %sensor_device = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 13
  %42 = ptrtoint ptr %sensor_device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sensor_device, align 4
  %call20 = tail call ptr @thermal_zone_of_sensor_register(ptr noundef %43, i32 noundef 0, ptr noundef %1, ptr noundef nonnull @sun4i_ts_tz_ops) #6
  %tzd = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %tzd to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call20, ptr %tzd, align 4
  %cmp.i104 = icmp ule ptr %call20, inttoptr (i32 -4096 to ptr)
  %cmp.not = icmp eq ptr %call20, inttoptr (i32 -19 to ptr)
  %or.cond = or i1 %cmp.i104, %cmp.not
  br i1 %or.cond, label %if.end34, label %do.end28

do.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %45) #9
  %46 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tzd, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end14
  %call36 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %if.end34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %no_irq = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 10
  %49 = ptrtoint ptr %no_irq to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %no_irq, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool44.not = icmp eq i8 %50, 0
  br i1 %tobool44.not, label %if.then45, label %do.end41.if.end47_crit_edge

do.end41.if.end47_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then45:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 @iio_map_array_unregister(ptr noundef nonnull %call) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %do.end41.if.end47_crit_edge
  %call.i105 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end34.cleanup_crit_edge, %do.end28, %do.end.i, %if.end.i102.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then12.i, %if.then5.i, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %do.end28 ], [ %call36, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ %call6.i, %if.end.i102.cleanup_crit_edge ], [ %call5.i, %if.else.cleanup_crit_edge ], [ %call10.i, %do.end.i ], [ -19, %if.then8.cleanup_crit_edge ], [ %20, %if.then5.i ], [ %22, %if.then12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_remove(ptr noundef %pdev) #2 align 64 {
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
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %sensor_device = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sensor_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor_device, align 4
  %tzd = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzd, align 4
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %5, ptr noundef %7) #6
  %no_irq = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %no_irq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %no_irq, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @iio_map_array_unregister(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_map_array_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  %data.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %priv.i.i32 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %12 = ptrtoint ptr %priv.i.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i32, align 8
  %fifo_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %13, i32 0, i32 5
  br label %if.end5

if.else:                                          ; preds = %sw.bb1
  %priv.i.i33 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i33, align 8
  %no_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %no_irq.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %no_irq.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #6
  %regmap.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_read(ptr noundef %21, i32 noundef 32, ptr noundef %val) #6
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %call.i16.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i16.i, ptr %last_busy.i.i, align 8
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %call.i17.i = tail call i32 @__pm_runtime_suspend(ptr noundef %26, i32 noundef 13) #6
  br label %29

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %temp_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %15, i32 0, i32 7
  br label %if.end5

if.end5:                                          ; preds = %if.end.i, %if.then2
  %temp_data_irq.i.sink = phi ptr [ %temp_data_irq.i, %if.end.i ], [ %fifo_data_irq.i, %if.then2 ]
  %.sink = phi i32 [ 0, %if.end.i ], [ %11, %if.then2 ]
  %27 = ptrtoint ptr %temp_data_irq.i.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %temp_data_irq.i.sink, align 4
  %call8.i = tail call fastcc i32 @sun4i_gpadc_read(ptr noundef %indio_dev, i32 noundef %.sink, ptr noundef %val, i32 noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool6.not = icmp eq i32 %call8.i, 0
  br i1 %tobool6.not, label %if.end5._crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5._crit_edge:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %29

29:                                               ; preds = %if.end5._crit_edge, %if.end5.thread
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp11 = icmp eq i32 %31, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val, align 4
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 732421875, ptr %val2, align 4
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i.i34 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %34 = ptrtoint ptr %priv.i.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.i.i34, align 8
  %data.i35 = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %data.i35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i35, align 4
  %temp_scale.i = getelementptr inbounds %struct.gpadc_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %temp_scale.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %temp_scale.i, align 4
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %29, %if.end5.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then12 ], [ 1, %if.end13 ], [ 1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ 1, %29 ], [ %call8.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_gpadc_read(ptr nocapture noundef readonly %indio_dev, i32 noundef %channel, ptr nocapture noundef writeonly %val, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg.i, align 4, !annotation !110
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %completion.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %completion.i, align 4
  %regmap.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 16, i32 noundef 272) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sun4i_prepare_for_irq.exit.thread_crit_edge

entry.sun4i_prepare_for_irq.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_prepare_for_irq.exit.thread

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.sun4i_prepare_for_irq.exit.thread_crit_edge

if.end.i.sun4i_prepare_for_irq.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_prepare_for_irq.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %fifo_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %fifo_data_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_data_irq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %irq)
  %cmp.i = icmp eq i32 %13, %irq
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %data.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %tp_mode_en.i = getelementptr inbounds %struct.gpadc_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %tp_mode_en.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tp_mode_en.i, align 4
  br i1 %cmp.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end7.i
  %tp_adc_select.i = getelementptr inbounds %struct.gpadc_data, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %tp_adc_select.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tp_adc_select.i, align 4
  %or.i = or i32 %21, %19
  %adc_chan_select.i = getelementptr inbounds %struct.gpadc_data, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %adc_chan_select.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adc_chan_select.i, align 4
  %call12.i = call i32 %23(i32 noundef %channel) #6
  %or13.i = or i32 %or.i, %call12.i
  %call14.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 4, i32 noundef %or13.i) #6
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg.i, align 4
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %adc_chan_mask.i = getelementptr inbounds %struct.gpadc_data, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %adc_chan_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adc_chan_mask.i, align 4
  %and.i = and i32 %29, %25
  %adc_chan_select17.i = getelementptr inbounds %struct.gpadc_data, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %adc_chan_select17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adc_chan_select17.i, align 4
  %call18.i = call i32 %31(i32 noundef %channel) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %and.i, %call18.i
  br i1 %cmp19.not.i, label %if.then8.i.if.end27.i_crit_edge, label %while.body.preheader.i

if.then8.i.if.end27.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

while.body.preheader.i:                           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #6
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 4, i32 noundef %19) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %while.body.preheader.i, %if.then8.i.if.end27.i_crit_edge
  %ret.0.i = phi i32 [ %call14.i, %if.then8.i.if.end27.i_crit_edge ], [ %call26.i, %if.else.i ], [ %call14.i, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool28.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end27.i.sun4i_prepare_for_irq.exit.thread_crit_edge

if.end27.i.sun4i_prepare_for_irq.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_prepare_for_irq.exit.thread

if.end30.i:                                       ; preds = %if.end27.i
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg.i, align 4
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %tp_adc_select32.i = getelementptr inbounds %struct.gpadc_data, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %tp_adc_select32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tp_adc_select32.i, align 4
  %and33.i = and i32 %47, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %and33.i, i32 %47)
  %cmp36.not.i = icmp eq i32 %and33.i, %47
  br i1 %cmp36.not.i, label %if.end30.i.if.end_crit_edge, label %if.end30.i.while.body42.i_crit_edge

if.end30.i.while.body42.i_crit_edge:              ; preds = %if.end30.i
  br label %while.body42.i

if.end30.i.if.end_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body42.i:                                   ; preds = %while.body42.i.while.body42.i_crit_edge, %if.end30.i.while.body42.i_crit_edge
  %__ms38.068.i = phi i32 [ %dec40.i, %while.body42.i.while.body42.i_crit_edge ], [ 100, %if.end30.i.while.body42.i_crit_edge ]
  %dec40.i = add nsw i32 %__ms38.068.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #6
  %tobool41.not.i = icmp eq i32 %dec40.i, 0
  br i1 %tobool41.not.i, label %while.body42.i.if.end_crit_edge, label %while.body42.i.while.body42.i_crit_edge

while.body42.i.while.body42.i_crit_edge:          ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body42.i

while.body42.i.if.end_crit_edge:                  ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sun4i_prepare_for_irq.exit.thread:                ; preds = %if.end27.i.sun4i_prepare_for_irq.exit.thread_crit_edge, %if.end.i.sun4i_prepare_for_irq.exit.thread_crit_edge, %entry.sun4i_prepare_for_irq.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %ret.0.i, %if.end27.i.sun4i_prepare_for_irq.exit.thread_crit_edge ], [ %call4.i, %if.end.i.sun4i_prepare_for_irq.exit.thread_crit_edge ], [ %call2.i, %entry.sun4i_prepare_for_irq.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %err

if.end:                                           ; preds = %while.body42.i.if.end_crit_edge, %if.end30.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  call void @enable_irq(i32 noundef %irq) #6
  %completion = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 1
  %call3 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fifo_data_irq = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %fifo_data_irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fifo_data_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %irq)
  %cmp = icmp eq i32 %50, %irq
  %temp_data = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 2
  %adc_data = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %1, i32 0, i32 3
  %storemerge.in = select i1 %cmp, ptr %adc_data, ptr %temp_data
  %51 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %51)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge, ptr %val, align 4
  %53 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i, align 8
  %call.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 12, i32 22
  %55 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %err

err:                                              ; preds = %if.end6, %if.end.err_crit_edge, %sun4i_prepare_for_irq.exit.thread
  %ret.0 = phi i32 [ 0, %if.end6 ], [ -110, %if.end.err_crit_edge ], [ %retval.0.i.ph, %sun4i_prepare_for_irq.exit.thread ]
  %56 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i, align 8
  %call.i26 = call i32 @__pm_runtime_suspend(ptr noundef %57, i32 noundef 13) #6
  call void @disable_irq(i32 noundef %irq) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_irq_init(ptr noundef %pdev, ptr noundef %name, ptr noundef %handler, ptr noundef %devname, ptr nocapture noundef writeonly %irq, ptr noundef %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i39 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i39 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i39, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atomic, i32 noundef 4) #6
  %8 = ptrtoint ptr %atomic to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %atomic, align 4
  %call4 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap_irqc = getelementptr inbounds %struct.sun4i_gpadc_dev, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %regmap_irqc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_irqc, align 4
  %call5 = tail call i32 @regmap_irq_get_virq(ptr noundef %10, i32 noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %name) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call5, ptr %irq, align 4
  %call11 = tail call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %call5, ptr noundef %handler, i32 noundef 524288, ptr noundef %devname, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %call11) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %atomic, i32 noundef 4) #6
  %12 = ptrtoint ptr %atomic to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %atomic, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call11, %do.end16 ], [ 0, %if.end18 ], [ %call4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_temp_data_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_temp_data_irq = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ignore_temp_data_irq, i32 noundef 4) #6
  %0 = ptrtoint ptr %ignore_temp_data_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ignore_temp_data_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %temp_data = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 2
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 32, ptr noundef %temp_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %completion = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #6
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_fifo_data_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_fifo_data_irq = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ignore_fifo_data_irq, i32 noundef 4) #6
  %0 = ptrtoint ptr %ignore_fifo_data_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ignore_fifo_data_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %adc_data = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 3
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 36, ptr noundef %adc_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %completion = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %dev_id, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #6
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_map_array_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !110
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  %no_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %no_irq.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %no_irq.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %sun4i_gpadc_temp_read.exit, label %sun4i_gpadc_temp_read.exit.thread

sun4i_gpadc_temp_read.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %2, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #6
  %regmap.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %val) #6
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %call.i16.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i16.i, ptr %last_busy.i.i, align 8
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %call.i17.i = call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #6
  br label %if.end

sun4i_gpadc_temp_read.exit:                       ; preds = %entry
  %temp_data_irq.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %4, i32 0, i32 7
  %16 = ptrtoint ptr %temp_data_irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp_data_irq.i, align 4
  %call8.i = call fastcc i32 @sun4i_gpadc_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not = icmp eq i32 %call8.i, 0
  br i1 %tobool.not, label %sun4i_gpadc_temp_read.exit.if.end_crit_edge, label %sun4i_gpadc_temp_read.exit.cleanup_crit_edge

sun4i_gpadc_temp_read.exit.cleanup_crit_edge:     ; preds = %sun4i_gpadc_temp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sun4i_gpadc_temp_read.exit.if.end_crit_edge:      ; preds = %sun4i_gpadc_temp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sun4i_gpadc_temp_read.exit.if.end_crit_edge, %sun4i_gpadc_temp_read.exit.thread
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %priv.i.i10 = getelementptr inbounds %struct.iio_dev, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %priv.i.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i.i10, align 8
  %data.i = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %temp_scale.i = getelementptr inbounds %struct.gpadc_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %temp_scale.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %temp_scale.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %add = add i32 %29, %27
  %mul = mul i32 %add, %25
  %30 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sun4i_gpadc_temp_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %sun4i_gpadc_temp_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_of_sensor_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 4, i32 noundef 0) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 24, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_gpadc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 2555967) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.sun4i_gpadc_iio, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %tp_mode_en = getelementptr inbounds %struct.gpadc_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %tp_mode_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tp_mode_en, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef %11) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 12, i32 noundef 5) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 24, i32 noundef 66336) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_gpadc_chan_select(i32 noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %chan, 7
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_gpadc_chan_select(i32 noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %chan
  %and = and i32 %shl, 15
  ret i32 %and
}

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_sun4i_gpadc_iio__188_712_sun4i_gpadc_driver_init6, !1, !"__initcall__kmod_sun4i_gpadc_iio__188_712_sun4i_gpadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 712, i32 1}
!2 = !{ptr @__exitcall_sun4i_gpadc_driver_exit, !1, !"__exitcall_sun4i_gpadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description189, !4, !"__UNIQUE_ID_description189", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 714, i32 1}
!5 = !{ptr @__UNIQUE_ID_author190, !6, !"__UNIQUE_ID_author190", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 715, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 716, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 702, i32 11}
!12 = !{ptr @sun4i_gpadc_driver, !13, !"sun4i_gpadc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 700, i32 31}
!14 = !{ptr @sun4i_gpadc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 618, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 648, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sun4i_gpadc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sun4i_gpadc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 657, i32 3}
!27 = !{ptr @sun4i_gpadc_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sun4i_gpadc_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @init_completion.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/completion.h", i32 87, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sun4i_gpadc_iio_info, !33, !"sun4i_gpadc_iio_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 350, i32 30}
!34 = !{ptr @sun4i_gpadc_probe_dt._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 514, i32 17}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 518, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sun4i_gpadc_probe_dt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sun4i_gpadc_probe_dt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 153, i32 21}
!44 = !{ptr @sun8i_a33_gpadc_channels, !45, !"sun8i_a33_gpadc_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 147, i32 35}
!46 = !{ptr @sun4i_gpadc_regmap_config, !47, !"sun4i_gpadc_regmap_config", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 157, i32 35}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 579, i32 30}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 581, i32 10}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 587, i32 29}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 588, i32 44}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 596, i32 4}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sun4i_gpadc_probe_mfd._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @sun4i_gpadc_probe_mfd._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 127, i32 2}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 128, i32 2}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 129, i32 2}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 130, i32 2}
!69 = !{ptr @sun4i_gpadc_channels, !70, !"sun4i_gpadc_channels", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 126, i32 35}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 468, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sun4i_irq_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sun4i_irq_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 477, i32 3}
!78 = !{ptr @sun4i_irq_init._entry.27, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sun4i_irq_init._entry_ptr.29, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 121, i32 24}
!82 = !{ptr @sun4i_gpadc_hwmon_maps, !83, !"sun4i_gpadc_hwmon_maps", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 118, i32 23}
!84 = !{ptr @sun4i_ts_tz_ops, !85, !"sun4i_ts_tz_ops", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 431, i32 48}
!86 = !{ptr @sun4i_gpadc_of_id, !87, !"sun4i_gpadc_of_id", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 487, i32 34}
!88 = !{ptr @sun8i_a33_gpadc_data, !89, !"sun8i_a33_gpadc_data", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 85, i32 32}
!90 = !{ptr @sun4i_gpadc_pm_ops, !91, !"sun4i_gpadc_pm_ops", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 435, i32 32}
!92 = !{ptr @sun4i_gpadc_id, !93, !"sun4i_gpadc_id", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 692, i32 40}
!94 = !{ptr @sun4i_gpadc_data, !95, !"sun4i_gpadc_data", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 58, i32 32}
!96 = !{ptr @sun5i_gpadc_data, !97, !"sun5i_gpadc_data", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 67, i32 32}
!98 = !{ptr @sun6i_gpadc_data, !99, !"sun6i_gpadc_data", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/sun4i-gpadc-iio.c", i32 76, i32 32}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i8 0, i8 2}
!110 = !{!"auto-init"}
