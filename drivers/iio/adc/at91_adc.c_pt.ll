; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/at91_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/at91_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.at91_adc_caps = type { i8, i8, i8, i8, ptr, i8, i8, i8, i32, ptr, %struct.at91_adc_reg_desc }
%struct.at91_adc_reg_desc = type { i8, i32, i8, i8, i32, i32 }
%struct.at91_adc_trigger = type { ptr, i8, i8 }
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
%struct.at91_adc_state = type { ptr, ptr, i32, ptr, i8, i32, i16, i32, %struct.mutex, i8, ptr, ptr, i32, i8, i8, ptr, i8, i32, i32, %struct.wait_queue_head, ptr, i32, ptr, i16, i32, i16, i8, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.68, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.68 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_at91_adc__232_1393_at91_adc_driver_init6 = internal global ptr @at91_adc_driver_init, section ".initcall6.init", align 4
@at91_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_adc_probe, ptr @at91_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_adc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_adc_driver_exit = internal global ptr @at91_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [39 x i8] c"at91_adc.file=drivers/iio/adc/at91_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [21 x i8] c"at91_adc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [43 x i8] c"at91_adc.description=Atmel AT91 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [65 x i8] c"at91_adc.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at91_adc\00", [23 x i8] zeroinitializer }, align 32
@at91_adc_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_caps }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@at91_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel,adc-use-external-triggers\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel,adc-channels-used\00", [40 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1016, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Missing adc-channels-used property in the DT.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_adc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/adc/at91_adc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr = internal global ptr @at91_adc_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel,adc-sleep-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,adc-startup-time\00", [41 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 1024, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Missing adc-startup-time property in the DT.\0A\00", [50 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.12 = internal global ptr @at91_adc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel,adc-sample-hold-time\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel,adc-vref\00", [17 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1034, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Missing adc-vref property in the DT.\0A\00", [58 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.17 = internal global ptr @at91_adc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,adc-use-res\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lowres\00", [25 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1045, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Resolution used: %u bits\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.23 = internal global ptr @at91_adc_probe._entry.20, section ".printk_index", align 4
@at91_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @at91_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1085, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate IRQ.\0A\00", [39 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.26 = internal global ptr @at91_adc_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc_clk\00", [24 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 1091, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get the clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.30 = internal global ptr @at91_adc_probe._entry.28, section ".printk_index", align 4
@at91_adc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 1099, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not prepare or enable the clock.\0A\00", [56 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.33 = internal global ptr @at91_adc_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc_op_clk\00", [21 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 1105, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get the ADC clock.\0A\00", [34 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.37 = internal global ptr @at91_adc_probe._entry.35, section ".printk_index", align 4
@at91_adc_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.5, i32 1113, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not prepare or enable the ADC clock.\0A\00", [52 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.40 = internal global ptr @at91_adc_probe._entry.38, section ".printk_index", align 4
@at91_adc_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.41, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Master clock is set as: %d Hz, adc_clk should set as: %d Hz\0A\00", [35 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 1132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No startup time available.\0A\00", [36 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.44 = internal global ptr @at91_adc_probe._entry.42, section ".printk_index", align 4
@at91_adc_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.4, ptr @.str.5, i32 1161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't initialize the channels.\0A\00", [61 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.47 = internal global ptr @at91_adc_probe._entry.45, section ".printk_index", align 4
@at91_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&st->wq_data_avail\00", [45 x i8] zeroinitializer }, align 32
@at91_adc_probe.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.5, i32 1176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't initialize the buffer.\0A\00", [63 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.53 = internal global ptr @at91_adc_probe._entry.51, section ".printk_index", align 4
@at91_adc_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.4, ptr @.str.5, i32 1182, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't setup the triggers.\0A\00", [34 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.56 = internal global ptr @at91_adc_probe._entry.54, section ".printk_index", align 4
@at91_adc_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.4, ptr @.str.5, i32 1196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't register the device.\0A\00", [33 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.59 = internal global ptr @at91_adc_probe._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel,adc-ts-wires\00", [45 x i8] zeroinitializer }, align 32
@at91_adc_probe_dt_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 806, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADC Touch screen is disabled.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at91_adc_probe_dt_ts\00", [43 x i8] zeroinitializer }, align 32
@at91_adc_probe_dt_ts._entry_ptr = internal global ptr @at91_adc_probe_dt_ts._entry, section ".printk_index", align 4
@at91_adc_probe_dt_ts._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 816, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Unsupported number of touchscreen wires (%d). Should be 4 or 5.\0A\00", [63 x i8] zeroinitializer }, align 32
@at91_adc_probe_dt_ts._entry_ptr.65 = internal global ptr @at91_adc_probe_dt_ts._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel,adc-ts-pressure-threshold\00", [32 x i8] zeroinitializer }, align 32
@at91_adc_probe_dt_ts._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.62, ptr @.str.5, i32 828, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid pressure threshold for the touchscreen\0A\00", [48 x i8] zeroinitializer }, align 32
@at91_adc_probe_dt_ts._entry_ptr.69 = internal global ptr @at91_adc_probe_dt_ts._entry.67, section ".printk_index", align 4
@at91_adc_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 741, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC Channel %d timeout.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_adc_read_raw\00", [46 x i8] zeroinitializer }, align 32
@at91_adc_read_raw._entry_ptr = internal global ptr @at91_adc_read_raw._entry, section ".printk_index", align 4
@at91_ts_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 327, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error: xscale == 0!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_ts_sample\00", [17 x i8] zeroinitializer }, align 32
@at91_ts_sample._entry_ptr = internal global ptr @at91_ts_sample._entry, section ".printk_index", align 4
@at91_ts_sample._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.5, i32 338, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error: yscale == 0!\0A\00", [43 x i8] zeroinitializer }, align 32
@at91_ts_sample._entry_ptr.76 = internal global ptr @at91_ts_sample._entry.74, section ".printk_index", align 4
@at91_ts_sample.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.5, ptr @.str.77, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"xpos = %d, xscale = %d, ypos = %d, yscale = %d, z1 = %d, z2 = %d, press = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@at91_ts_sample.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.5, ptr @.str.78, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"x = %d, y = %d, pressure = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@at91_ts_sample.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.5, ptr @.str.79, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pressure too low: not reporting\0A\00", [63 x i8] zeroinitializer }, align 32
@at91_adc_trigger_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.5, i32 665, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not allocate trigger %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at91_adc_trigger_init\00", [42 x i8] zeroinitializer }, align 32
@at91_adc_trigger_init._entry_ptr = internal global ptr @at91_adc_trigger_init._entry, section ".printk_index", align 4
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s-dev%d-%s\00", [20 x i8] zeroinitializer }, align 32
@at91_adc_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @at91_adc_configure_trigger, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@at91_ts_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 943, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate TS device!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_ts_register\00", [47 x i8] zeroinitializer }, align 32
@at91_ts_register._entry_ptr = internal global ptr @at91_ts_register._entry, section ".printk_index", align 4
@at91_ts_register._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.5, i32 965, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"This touchscreen controller only support 4 wires\0A\00", [46 x i8] zeroinitializer }, align 32
@at91_ts_register._entry_ptr.87 = internal global ptr @at91_ts_register._entry.85, section ".printk_index", align 4
@at91_ts_hw_init.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.5, ptr @.str.89, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at91_ts_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adc_clk at: %d KHz, tssctim at: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@at91sam9260_caps = internal global { %struct.at91_adc_caps, [56 x i8] } { %struct.at91_adc_caps { i8 0, i8 0, i8 0, i8 0, ptr @calc_startup_ticks_9260, i8 4, i8 8, i8 10, i32 4, ptr @at91sam9260_triggers, %struct.at91_adc_reg_desc { i8 48, i32 65536, i8 28, i8 4, i32 16128, i32 2031616 } }, [56 x i8] zeroinitializer }, align 32
@at91sam9rl_caps = internal global { %struct.at91_adc_caps, [56 x i8] } { %struct.at91_adc_caps { i8 1, i8 0, i8 0, i8 0, ptr @calc_startup_ticks_9260, i8 6, i8 8, i8 10, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 48, i32 65536, i8 28, i8 8, i32 16128, i32 8323072 } }, [56 x i8] zeroinitializer }, align 32
@at91sam9g45_caps = internal global { %struct.at91_adc_caps, [56 x i8] } { %struct.at91_adc_caps { i8 1, i8 0, i8 0, i8 0, ptr @calc_startup_ticks_9260, i8 8, i8 8, i8 10, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 48, i32 65536, i8 28, i8 8, i32 65280, i32 8323072 } }, [56 x i8] zeroinitializer }, align 32
@at91sam9x5_caps = internal global { %struct.at91_adc_caps, [56 x i8] } { %struct.at91_adc_caps { i8 1, i8 1, i8 3, i8 2, ptr @calc_startup_ticks_9x5, i8 12, i8 8, i8 10, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 80, i32 16777216, i8 48, i8 -64, i32 65280, i32 983040 } }, [56 x i8] zeroinitializer }, align 32
@sama5d3_caps = internal global { %struct.at91_adc_caps, [56 x i8] } { %struct.at91_adc_caps { i8 1, i8 1, i8 3, i8 2, ptr @calc_startup_ticks_9x5, i8 12, i8 0, i8 12, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 80, i32 16777216, i8 48, i8 -64, i32 65280, i32 983040 } }, [56 x i8] zeroinitializer }, align 32
@at91sam9260_triggers = internal constant { [4 x %struct.at91_adc_trigger], [32 x i8] } { [4 x %struct.at91_adc_trigger] [%struct.at91_adc_trigger { ptr @.str.90, i8 1, i8 0 }, %struct.at91_adc_trigger { ptr @.str.91, i8 3, i8 0 }, %struct.at91_adc_trigger { ptr @.str.92, i8 5, i8 0 }, %struct.at91_adc_trigger { ptr @.str.93, i8 13, i8 1 }], [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timer-counter-0\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timer-counter-1\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timer-counter-2\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@at91sam9x5_triggers = internal constant { [4 x %struct.at91_adc_trigger], [32 x i8] } { [4 x %struct.at91_adc_trigger] [%struct.at91_adc_trigger { ptr @.str.94, i8 1, i8 1 }, %struct.at91_adc_trigger { ptr @.str.95, i8 2, i8 1 }, %struct.at91_adc_trigger { ptr @.str.96, i8 3, i8 1 }, %struct.at91_adc_trigger { ptr @.str.97, i8 6, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"external-rising\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"external-falling\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"external-any\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"continuous\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"at91_adc_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1383, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1387, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"at91_adc_dt_ids\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1373, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"at91_adc_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1261, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1013, i32 49 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1015, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1016, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1021, i32 47 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1023, i32 33 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1024, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1030, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1033, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1034, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1041, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1042, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1045, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"at91_adc_info\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 833, i32 30 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1085, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1089, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1091, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1098, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1103, i32 41 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1105, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1112, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1126, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1132, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1161, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1165, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1166, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1176, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1182, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1196, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 804, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 806, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 816, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 823, i32 29 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 828, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 740, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 327, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 338, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 354, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 358, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 366, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 664, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 628, i32 45 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"at91_adc_trigger_ops\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 618, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 943, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 964, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 901, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"at91sam9260_caps\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1270, i32 29 }
@___asan_gen_.356 = private unnamed_addr constant [16 x i8] c"at91sam9rl_caps\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1294, i32 29 }
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"at91sam9g45_caps\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1312, i32 29 }
@___asan_gen_.362 = private unnamed_addr constant [16 x i8] c"at91sam9x5_caps\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1330, i32 29 }
@___asan_gen_.365 = private unnamed_addr constant [13 x i8] c"sama5d3_caps\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1352, i32 29 }
@___asan_gen_.368 = private unnamed_addr constant [21 x i8] c"at91sam9260_triggers\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1263, i32 38 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1264, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1265, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1266, i32 12 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1267, i32 12 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c"at91sam9x5_triggers\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1287, i32 38 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1288, i32 12 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1289, i32 12 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1290, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.396 = private constant [30 x i8] c"../drivers/iio/adc/at91_adc.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1291, i32 12 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_at91_adc_driver_exit, ptr @__initcall__kmod_at91_adc__232_1393_at91_adc_driver_init6, ptr @at91_adc_driver_exit, ptr @at91_adc_probe._entry, ptr @at91_adc_probe._entry.10, ptr @at91_adc_probe._entry.15, ptr @at91_adc_probe._entry.20, ptr @at91_adc_probe._entry.24, ptr @at91_adc_probe._entry.28, ptr @at91_adc_probe._entry.31, ptr @at91_adc_probe._entry.35, ptr @at91_adc_probe._entry.38, ptr @at91_adc_probe._entry.42, ptr @at91_adc_probe._entry.45, ptr @at91_adc_probe._entry.51, ptr @at91_adc_probe._entry.54, ptr @at91_adc_probe._entry.57, ptr @at91_adc_probe._entry_ptr, ptr @at91_adc_probe._entry_ptr.12, ptr @at91_adc_probe._entry_ptr.17, ptr @at91_adc_probe._entry_ptr.23, ptr @at91_adc_probe._entry_ptr.26, ptr @at91_adc_probe._entry_ptr.30, ptr @at91_adc_probe._entry_ptr.33, ptr @at91_adc_probe._entry_ptr.37, ptr @at91_adc_probe._entry_ptr.40, ptr @at91_adc_probe._entry_ptr.44, ptr @at91_adc_probe._entry_ptr.47, ptr @at91_adc_probe._entry_ptr.53, ptr @at91_adc_probe._entry_ptr.56, ptr @at91_adc_probe._entry_ptr.59, ptr @at91_adc_probe_dt_ts._entry, ptr @at91_adc_probe_dt_ts._entry.63, ptr @at91_adc_probe_dt_ts._entry.67, ptr @at91_adc_probe_dt_ts._entry_ptr, ptr @at91_adc_probe_dt_ts._entry_ptr.65, ptr @at91_adc_probe_dt_ts._entry_ptr.69, ptr @at91_adc_read_raw._entry, ptr @at91_adc_read_raw._entry_ptr, ptr @at91_adc_trigger_init._entry, ptr @at91_adc_trigger_init._entry_ptr, ptr @at91_ts_register._entry, ptr @at91_ts_register._entry.85, ptr @at91_ts_register._entry_ptr, ptr @at91_ts_register._entry_ptr.87, ptr @at91_ts_sample._entry, ptr @at91_ts_sample._entry.74, ptr @at91_ts_sample._entry_ptr, ptr @at91_ts_sample._entry_ptr.76, ptr @at91_adc_driver, ptr @.str, ptr @at91_adc_dt_ids, ptr @at91_adc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @at91_adc_info, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @at91_adc_probe.__key, ptr @.str.48, ptr @at91_adc_probe.__key.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @at91_adc_trigger_ops, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @at91sam9260_caps, ptr @at91sam9rl_caps, ptr @at91sam9g45_caps, ptr @at91sam9x5_caps, ptr @sama5d3_caps, ptr @at91sam9260_triggers, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @at91sam9x5_triggers, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe_dt_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe_dt_ts._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe_dt_ts._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ts_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ts_sample._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_trigger_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ts_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ts_register._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9260_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9rl_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d3_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9260_triggers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_triggers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_adc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_adc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop = alloca i32, align 4
  %s = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #11
  %2 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %prop, align 4, !annotation !213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #11
  %3 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %s, align 4, !annotation !213
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 244) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %caps, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i, null
  %use_external = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 16
  %frombool = zext i1 %tobool.i to i8
  %7 = ptrtoint ptr %use_external to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %use_external, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prop, align 4
  %channels_mask = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %channels_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %channels_mask, align 4
  %call.i409 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #11
  %tobool.i410 = icmp ne ptr %call.i409, null
  %sleep_mode = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 14
  %frombool12 = zext i1 %tobool.i410 to i8
  %11 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool12, ptr %sleep_mode, align 1
  %call.i.i411 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i411)
  %tobool14.not = icmp sgt i32 %call.i.i411, -1
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.11) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop, align 4
  %startup_time = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %startup_time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %startup_time, align 4
  store i32 0, ptr %prop, align 4
  %call.i.i412 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #11
  %15 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prop, align 4
  %conv = trunc i32 %16 to i8
  %sample_hold_time = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 13
  %17 = ptrtoint ptr %sample_hold_time to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %sample_hold_time, align 4
  %call.i.i413 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i413)
  %tobool23.not = icmp sgt i32 %call.i.i413, -1
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %dev28 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prop, align 4
  %vref_mv = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 17
  %20 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %vref_mv, align 4
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %caps, align 4
  %high_res_bits = getelementptr inbounds %struct.at91_adc_caps, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %high_res_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %high_res_bits, align 2
  %conv31 = zext i8 %24 to i32
  %res = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 18
  %25 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv31, ptr %res, align 4
  %low_res_bits = getelementptr inbounds %struct.at91_adc_caps, ptr %22, i32 0, i32 6
  %26 = ptrtoint ptr %low_res_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %low_res_bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not = icmp eq i8 %27, 0
  br i1 %tobool34.not, label %if.end29.do.end48_crit_edge, label %land.lhs.true

if.end29.do.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

land.lhs.true:                                    ; preds = %if.end29
  %call35 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %s) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true.do.end48_crit_edge

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

land.lhs.true37:                                  ; preds = %land.lhs.true
  %28 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s, align 4
  %call38 = call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(7) @.str.19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true37.do.end48_crit_edge

land.lhs.true37.do.end48_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 4
  %low_res_bits42 = getelementptr inbounds %struct.at91_adc_caps, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %low_res_bits42 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %low_res_bits42, align 1
  %conv43 = zext i8 %33 to i32
  %34 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv43, ptr %res, align 4
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %land.lhs.true37.do.end48_crit_edge, %land.lhs.true.do.end48_crit_edge, %if.end29.do.end48_crit_edge
  %dev49 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %35 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %res, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.21, i32 noundef %36) #14
  %37 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %caps, align 4
  %registers = getelementptr inbounds %struct.at91_adc_caps, ptr %38, i32 0, i32 10
  %registers52 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 11
  %39 = ptrtoint ptr %registers52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %registers, ptr %registers52, align 4
  %num_channels = getelementptr inbounds %struct.at91_adc_caps, ptr %38, i32 0, i32 5
  %40 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_channels, align 4
  %num_channels54 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 9
  %42 = ptrtoint ptr %num_channels54 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %num_channels54, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %38, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool56.not = icmp eq i8 %44, 0
  br i1 %tobool56.not, label %do.end48.if.end63_crit_edge, label %if.then57

do.end48.if.end63_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then57:                                        ; preds = %do.end48
  %call59 = call fastcc i32 @at91_adc_probe_dt_ts(ptr noundef %1, ptr noundef %5, ptr noundef %dev49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then57.if.end63_crit_edge, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63:                                         ; preds = %if.then57.if.end63_crit_edge, %do.end48.if.end63_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end63.dev_name.exit_crit_edge

if.end63.dev_name.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end63.dev_name.exit_crit_edge
  %retval.0.i414 = phi ptr [ %49, %if.end.i ], [ %47, %if.end63.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %50 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %retval.0.i414, ptr %name, align 8
  %51 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %52 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @at91_adc_info, ptr %info, align 8
  %call66 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 5
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call66, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp = icmp slt i32 %call66, 0
  br i1 %cmp, label %dev_name.exit.cleanup_crit_edge, label %if.end70

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end70:                                         ; preds = %dev_name.exit
  %call71 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 10
  %54 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call71, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %call71 to i32
  br label %cleanup

if.end77:                                         ; preds = %if.end70
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call71, i32 16777216) #11, !srcloc !215
  %56 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base, align 4
  %add.ptr80 = getelementptr i8, ptr %57, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 -1) #11, !srcloc !215
  %58 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %caps, align 4
  %has_tsmr = getelementptr inbounds %struct.at91_adc_caps, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %has_tsmr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_tsmr, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool82.not = icmp eq i8 %61, 0
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  %driver90 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %64 = ptrtoint ptr %driver90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver90, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %at91_adc_rl_interrupt.at91_adc_9x5_interrupt = select i1 %tobool82.not, ptr @at91_adc_rl_interrupt, ptr @at91_adc_9x5_interrupt
  %call.i416 = call i32 @request_threaded_irq(i32 noundef %63, ptr noundef nonnull %at91_adc_rl_interrupt.at91_adc_9x5_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %67, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416)
  %tobool94.not = icmp eq i32 %call.i416, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end100:                                        ; preds = %if.end77
  %call102 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  %clk = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 3
  %68 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call102, ptr %clk, align 4
  %cmp.i417 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i417, label %do.end108, label %if.end112

do.end108:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #14
  %69 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk, align 4
  %71 = ptrtoint ptr %70 to i32
  br label %error_free_irq

if.end112:                                        ; preds = %if.end100
  %call114 = call fastcc i32 @clk_prepare_enable(ptr noundef %call102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end121, label %do.end119

do.end119:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #14
  br label %error_free_irq

if.end121:                                        ; preds = %if.end112
  %call123 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call123, ptr %5, align 4
  %cmp.i418 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i418, label %do.end130, label %if.end134

do.end130:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #14
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %error_disable_clk

if.end134:                                        ; preds = %if.end121
  %call136 = call fastcc i32 @clk_prepare_enable(ptr noundef %call123)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #14
  br label %error_disable_clk

if.end143:                                        ; preds = %if.end134
  %76 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk, align 4
  %call145 = call i32 @clk_get_rate(ptr noundef %77) #11
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %5, align 4
  %call147 = call i32 @clk_get_rate(ptr noundef %79) #11
  %div = udiv i32 %call147, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_probe, %if.then154)) #11
          to label %do.end158 [label %if.then154], !srcloc !216

if.then154:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call145, i32 noundef %call147) #11
  br label %do.end158

do.end158:                                        ; preds = %if.then154, %if.end143
  %80 = ptrtoint ptr %startup_time to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %startup_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool161.not = icmp eq i32 %81, 0
  br i1 %tobool161.not, label %do.end165, label %if.end167

do.end165:                                        ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #14
  br label %error_disable_adc_clk

if.end167:                                        ; preds = %do.end158
  %mul = shl i32 %call147, 1
  %div159 = udiv i32 %call145, %mul
  %82 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %caps, align 4
  %calc_startup_ticks = getelementptr inbounds %struct.at91_adc_caps, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %calc_startup_ticks to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %calc_startup_ticks, align 4
  %call170 = call i32 %85(i32 noundef %81, i32 noundef %div) #11
  %86 = ptrtoint ptr %sample_hold_time to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sample_hold_time, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp173.not = icmp eq i8 %87, 0
  %conv172 = zext i8 %87 to i32
  %mul178 = mul nuw nsw i32 %div, %conv172
  %div179 = udiv i32 %mul178, 1000
  %sub180 = shl i32 %div179, 24
  %phi.bo = add i32 %sub180, 251658240
  %phi.bo408 = and i32 %phi.bo, 251658240
  %shtim.0 = select i1 %cmp173.not, i32 0, i32 %phi.bo408
  %sub = shl i32 %div159, 8
  %shl = add i32 %sub, -256
  %88 = ptrtoint ptr %registers52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %registers52, align 4
  %mr_prescal_mask = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %mr_prescal_mask to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mr_prescal_mask, align 4
  %and = and i32 %91, %shl
  %shl185 = shl i32 %call170, 16
  %mr_startup_mask = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %89, i32 0, i32 5
  %92 = ptrtoint ptr %mr_startup_mask to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mr_startup_mask, align 4
  %and187 = and i32 %93, %shl185
  %or188 = or i32 %and187, %and
  %94 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %res, align 4
  %96 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %caps, align 4
  %low_res_bits191 = getelementptr inbounds %struct.at91_adc_caps, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %low_res_bits191 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %low_res_bits191, align 1
  %conv192 = zext i8 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %conv192)
  %cmp193 = icmp eq i32 %95, %conv192
  %or196 = or i32 %or188, 16
  %reg.0 = select i1 %cmp193, i32 %or196, i32 %or188
  %100 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %sleep_mode, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool199.not = icmp eq i8 %101, 0
  %or201 = or i32 %reg.0, 32
  %reg.1 = select i1 %tobool199.not, i32 %reg.0, i32 %or201
  %or205 = or i32 %reg.1, %shtim.0
  %102 = call i32 @llvm.bswap.i32(i32 %or205)
  %103 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_base, align 4
  %add.ptr207 = getelementptr i8, ptr %104, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 %102) #11, !srcloc !215
  %call208 = call fastcc i32 @at91_adc_channel_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %do.end214, label %do.body217

do.end214:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #14
  br label %error_disable_adc_clk

do.body217:                                       ; preds = %if.end167
  %wq_data_avail = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %wq_data_avail, ptr noundef nonnull @.str.48, ptr noundef nonnull @at91_adc_probe.__key) #11
  %lock = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 8
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.50, ptr noundef nonnull @at91_adc_probe.__key.49) #11
  %touchscreen_type = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 21
  %105 = ptrtoint ptr %touchscreen_type to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %touchscreen_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool223.not = icmp eq i32 %106, 0
  br i1 %tobool223.not, label %if.then224, label %if.else243

if.then224:                                       ; preds = %do.body217
  %call.i419 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @at91_adc_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419)
  %cmp226 = icmp slt i32 %call.i419, 0
  br i1 %cmp226, label %do.end231, label %if.end233

do.end231:                                        ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #14
  br label %error_disable_adc_clk

if.end233:                                        ; preds = %if.then224
  %call234 = call fastcc i32 @at91_adc_trigger_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %do.end240, label %if.end233.if.end249_crit_edge

if.end233.if.end249_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end249

do.end240:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #14
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #11
  br label %error_disable_adc_clk

if.else243:                                       ; preds = %do.body217
  %call244 = call fastcc i32 @at91_ts_register(ptr noundef nonnull %call, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.else243.error_disable_adc_clk_crit_edge

if.else243.error_disable_adc_clk_crit_edge:       ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_disable_adc_clk

if.end247:                                        ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @at91_ts_hw_init(ptr noundef nonnull %call, i32 noundef %div)
  br label %if.end249

if.end249:                                        ; preds = %if.end247, %if.end233.if.end249_crit_edge
  %call250 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %do.end256, label %if.end249.cleanup_crit_edge

if.end249.cleanup_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end256:                                        ; preds = %if.end249
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #14
  %107 = ptrtoint ptr %touchscreen_type to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %touchscreen_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool260.not = icmp eq i32 %108, 0
  br i1 %tobool260.not, label %if.then261, label %if.else262

if.then261:                                       ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @at91_adc_trigger_remove(ptr noundef nonnull %call)
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #11
  br label %error_disable_adc_clk

if.else262:                                       ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #13
  %ts_input.i = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 22
  %109 = ptrtoint ptr %ts_input.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ts_input.i, align 4
  call void @input_unregister_device(ptr noundef %110) #11
  br label %error_disable_adc_clk

error_disable_adc_clk:                            ; preds = %if.else262, %if.then261, %if.else243.error_disable_adc_clk_crit_edge, %do.end240, %do.end231, %do.end214, %do.end165
  %ret.1 = phi i32 [ %call208, %do.end214 ], [ %call244, %if.else243.error_disable_adc_clk_crit_edge ], [ %call250, %if.else262 ], [ %call250, %if.then261 ], [ %call.i419, %do.end231 ], [ %call234, %do.end240 ], [ -22, %do.end165 ]
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %5, align 4
  call void @clk_disable(ptr noundef %112) #11
  call void @clk_unprepare(ptr noundef %112) #11
  br label %error_disable_clk

error_disable_clk:                                ; preds = %error_disable_adc_clk, %do.end141, %do.end130
  %ret.2 = phi i32 [ %75, %do.end130 ], [ %call136, %do.end141 ], [ %ret.1, %error_disable_adc_clk ]
  %113 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %114) #11
  call void @clk_unprepare(ptr noundef %114) #11
  br label %error_free_irq

error_free_irq:                                   ; preds = %error_disable_clk, %do.end119, %do.end108
  %ret.3 = phi i32 [ %71, %do.end108 ], [ %call114, %do.end119 ], [ %ret.2, %error_disable_clk ]
  %115 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq, align 4
  %call267 = call ptr @free_irq(i32 noundef %116, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %error_free_irq, %if.end249.cleanup_crit_edge, %do.end98, %if.then74, %dev_name.exit.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %do.end27, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ -22, %do.end27 ], [ %55, %if.then74 ], [ %call.i416, %do.end98 ], [ %ret.3, %error_free_irq ], [ -12, %entry.cleanup_crit_edge ], [ %call59, %if.then57.cleanup_crit_edge ], [ -19, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end249.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #11
  %touchscreen_type = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %touchscreen_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %touchscreen_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %caps.i = getelementptr inbounds %struct.at91_adc_state, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps.i, align 4
  %trigger_number8.i = getelementptr inbounds %struct.at91_adc_caps, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %trigger_number8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trigger_number8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not.i = icmp eq i32 %11, 0
  br i1 %cmp9.not.i, label %if.then.at91_adc_trigger_remove.exit_crit_edge, label %for.body.lr.ph.i

if.then.at91_adc_trigger_remove.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_adc_trigger_remove.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %trig.i = getelementptr inbounds %struct.at91_adc_state, ptr %7, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trig.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.010.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @iio_trigger_unregister(ptr noundef %15) #11
  %16 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trig.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %17, i32 %i.010.i
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @iio_trigger_free(ptr noundef %19) #11
  %inc.i = add nuw i32 %i.010.i, 1
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i, align 4
  %trigger_number.i = getelementptr inbounds %struct.at91_adc_caps, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %trigger_number.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trigger_number.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.at91_adc_trigger_remove.exit_crit_edge

for.body.i.at91_adc_trigger_remove.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_adc_trigger_remove.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

at91_adc_trigger_remove.exit:                     ; preds = %for.body.i.at91_adc_trigger_remove.exit_crit_edge, %if.then.at91_adc_trigger_remove.exit_crit_edge
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ts_input.i = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 22
  %24 = ptrtoint ptr %ts_input.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts_input.i, align 4
  tail call void @input_unregister_device(ptr noundef %25) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %at91_adc_trigger_remove.exit
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %27) #11
  tail call void @clk_unprepare(ptr noundef %27) #11
  %clk = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #11
  tail call void @clk_unprepare(ptr noundef %29) #11
  %irq = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %31, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_probe_dt_ts(ptr noundef %node, ptr nocapture noundef %st, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %prop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #11
  %0 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prop, align 4, !annotation !213
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.60, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.61) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prop, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp eq i32 %3, 4
  br i1 %switch, label %sw.bb, label %do.end3

sw.bb:                                            ; preds = %if.end
  %touchscreen_type = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 21
  %4 = ptrtoint ptr %touchscreen_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %touchscreen_type, align 4
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 20
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 4
  %has_tsmr = getelementptr inbounds %struct.at91_adc_caps, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %has_tsmr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_tsmr, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %if.end6

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %2) #14
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %9 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %prop, align 4
  %call.i.i21 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.66, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #11
  %10 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prop, align 4
  %ts_pressure_threshold = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 24
  %12 = ptrtoint ptr %ts_pressure_threshold to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ts_pressure_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %do.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end6.cleanup_crit_edge, %do.end3, %sw.bb.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.end3 ], [ -22, %do.end13 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_9x5_interrupt(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %registers = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers, align 4
  %status_register = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %status_register to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status_register, align 4
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !217
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %num_channels = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_channels, align 4
  %conv2 = zext i8 %11 to i32
  %sub3 = sub nsw i32 32, %conv2
  %shr = lshr i32 -1, %sub3
  %and4 = and i32 %shr, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %currentmode.i.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 1
  %12 = ptrtoint ptr %currentmode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %currentmode.i.i, align 4
  %and.i.i = and i32 %13, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @disable_irq_nosync(i32 noundef %irq) #11
  %trig.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 10
  %14 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trig.i, align 4
  tail call void @iio_trigger_poll(ptr noundef %15) #11
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  %reg_base.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %registers.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 11
  %20 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %registers.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv.i = zext i8 %23 to i32
  %chnb.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 7
  %24 = ptrtoint ptr %chnb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chnb.i, align 4
  %mul.i = shl i32 %25, 2
  %add.i = add i32 %mul.i, %conv.i
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !217
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %conv3.i = trunc i32 %27 to i16
  %last_value.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 6
  %28 = ptrtoint ptr %last_value.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv3.i, ptr %last_value.i, align 4
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !217
  %done.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 4
  %32 = ptrtoint ptr %done.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %done.i, align 4
  %wq_data_avail.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %wq_data_avail.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  %and5 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base, align 4
  %add.ptr9 = getelementptr i8, ptr %34, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 32) #11, !srcloc !215
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 4
  %add.ptr11 = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 28736) #11, !srcloc !215
  %ts_sample_period_val = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 23
  %37 = ptrtoint ptr %ts_sample_period_val to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ts_sample_period_val, align 4
  %conv12 = zext i16 %38 to i32
  %shl = shl nuw i32 %conv12, 16
  %or = or i32 %shl, 5
  %39 = tail call i32 @llvm.bswap.i32(i32 %or)
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base, align 4
  %42 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %registers, align 4
  %trigger_register = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %trigger_register to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %trigger_register, align 1
  %conv15 = zext i8 %45 to i32
  %add.ptr16 = getelementptr i8, ptr %41, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %39) #11, !srcloc !215
  br label %if.end57

if.else:                                          ; preds = %if.end
  %and17 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else30, label %if.then19

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base, align 4
  %48 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %registers, align 4
  %trigger_register22 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %trigger_register22 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %trigger_register22, align 1
  %conv23 = zext i8 %51 to i32
  %add.ptr24 = getelementptr i8, ptr %47, i32 %conv23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #11, !srcloc !215
  %52 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base, align 4
  %add.ptr26 = getelementptr i8, ptr %53, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 28736) #11, !srcloc !215
  %54 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base, align 4
  %add.ptr28 = getelementptr i8, ptr %55, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 32) #11, !srcloc !215
  %ts_input = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 22
  %56 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %57, i32 noundef 1, i32 noundef 330, i32 noundef 0) #11
  %58 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %59, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end57

if.else30:                                        ; preds = %if.else
  %and31 = and i32 %9, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %and31)
  %cmp = icmp eq i32 %and31, 7340032
  br i1 %cmp, label %if.then33, label %if.else30.if.end57_crit_edge

if.else30.if.end57_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool35.not = icmp sgt i32 %9, -1
  br i1 %tobool35.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @at91_ts_sample(ptr noundef %private)
  br label %if.end57

if.else38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base, align 4
  %add.ptr41 = getelementptr i8, ptr %61, i32 180
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #11, !srcloc !217
  %63 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base, align 4
  %add.ptr46 = getelementptr i8, ptr %64, i32 184
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #11, !srcloc !217
  %66 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base, align 4
  %add.ptr51 = getelementptr i8, ptr %67, i32 188
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #11, !srcloc !217
  br label %if.end57

if.end57:                                         ; preds = %if.else38, %if.then36, %if.else30.if.end57_crit_edge, %if.then19, %if.then7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_rl_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %registers = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers, align 4
  %status_register = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %status_register to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status_register, align 4
  %conv = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !217
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !217
  %12 = and i32 %11, %8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %num_channels = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_channels, align 4
  %conv7 = zext i8 %15 to i32
  %sub8 = sub nsw i32 32, %conv7
  %shr = lshr i32 -1, %sub8
  %and10 = and i32 %shr, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %currentmode.i.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 1
  %16 = ptrtoint ptr %currentmode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %currentmode.i.i, align 4
  %and.i.i = and i32 %17, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @disable_irq_nosync(i32 noundef %irq) #11
  %trig.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 10
  %18 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trig.i, align 4
  tail call void @iio_trigger_poll(ptr noundef %19) #11
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %reg_base.i = getelementptr inbounds %struct.at91_adc_state, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  %registers.i = getelementptr inbounds %struct.at91_adc_state, ptr %21, i32 0, i32 11
  %24 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %registers.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  %conv.i = zext i8 %27 to i32
  %chnb.i = getelementptr inbounds %struct.at91_adc_state, ptr %21, i32 0, i32 7
  %28 = ptrtoint ptr %chnb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chnb.i, align 4
  %mul.i = shl i32 %29, 2
  %add.i = add i32 %mul.i, %conv.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !217
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %conv3.i = trunc i32 %31 to i16
  %last_value.i = getelementptr inbounds %struct.at91_adc_state, ptr %21, i32 0, i32 6
  %32 = ptrtoint ptr %last_value.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv3.i, ptr %last_value.i, align 4
  %33 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %34, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !217
  %done.i = getelementptr inbounds %struct.at91_adc_state, ptr %21, i32 0, i32 4
  %36 = ptrtoint ptr %done.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %done.i, align 4
  %wq_data_avail.i = getelementptr inbounds %struct.at91_adc_state, ptr %21, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %wq_data_avail.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  %and11 = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base, align 4
  %add.ptr16 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #11, !srcloc !217
  %40 = and i32 %39, -241
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %add.ptr21 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %40) #11, !srcloc !215
  %43 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base, align 4
  %add.ptr23 = getelementptr i8, ptr %44, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 4096) #11, !srcloc !215
  %45 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base, align 4
  %add.ptr25 = getelementptr i8, ptr %46, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 134225920) #11, !srcloc !215
  %ts_sample_period_val = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 23
  %47 = ptrtoint ptr %ts_sample_period_val to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ts_sample_period_val, align 4
  %conv26 = zext i16 %48 to i32
  %shl = shl nuw i32 %conv26, 16
  %or = or i32 %shl, 5
  %49 = tail call i32 @llvm.bswap.i32(i32 %or)
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 4
  %52 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %registers, align 4
  %trigger_register = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %trigger_register to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %trigger_register, align 1
  %conv29 = zext i8 %55 to i32
  %add.ptr30 = getelementptr i8, ptr %51, i32 %conv29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %49) #11, !srcloc !215
  br label %if.end115

if.else:                                          ; preds = %if.end
  %and31 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else55, label %if.then33

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base, align 4
  %add.ptr36 = getelementptr i8, ptr %57, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #11, !srcloc !217
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %ts_pendbc = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 25
  %60 = ptrtoint ptr %ts_pendbc to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ts_pendbc, align 4
  %conv39 = zext i16 %61 to i32
  %shl40 = shl i32 %conv39, 28
  %or42 = or i32 %shl40, %59
  %62 = tail call i32 @llvm.bswap.i32(i32 %or42)
  %63 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base, align 4
  %add.ptr44 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %62) #11, !srcloc !215
  %65 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base, align 4
  %67 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %registers, align 4
  %trigger_register47 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %trigger_register47 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %trigger_register47, align 1
  %conv48 = zext i8 %70 to i32
  %add.ptr49 = getelementptr i8, ptr %66, i32 %conv48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #11, !srcloc !215
  %71 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base, align 4
  %add.ptr51 = getelementptr i8, ptr %72, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 134225920) #11, !srcloc !215
  %73 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_base, align 4
  %add.ptr53 = getelementptr i8, ptr %74, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 4096) #11, !srcloc !215
  %ts_bufferedmeasure = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 26
  %75 = ptrtoint ptr %ts_bufferedmeasure to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %ts_bufferedmeasure, align 2
  %ts_input = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 22
  %76 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %77, i32 noundef 1, i32 noundef 330, i32 noundef 0) #11
  %78 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %79, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end115

if.else55:                                        ; preds = %if.else
  %and56 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else55.if.end115_crit_edge, label %land.lhs.true

if.else55.if.end115_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

land.lhs.true:                                    ; preds = %if.else55
  %ts_input58 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 22
  %80 = ptrtoint ptr %ts_input58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ts_input58, align 4
  %tobool59.not = icmp eq ptr %81, null
  br i1 %tobool59.not, label %land.lhs.true.if.end115_crit_edge, label %if.then60

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then60:                                        ; preds = %land.lhs.true
  %ts_bufferedmeasure61 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 26
  %82 = ptrtoint ptr %ts_bufferedmeasure61 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ts_bufferedmeasure61, align 2, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool62.not = icmp eq i8 %83, 0
  br i1 %tobool62.not, label %if.else68, label %if.then63

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %ts_prev_absx = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 27
  %84 = ptrtoint ptr %ts_prev_absx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ts_prev_absx, align 4
  tail call void @input_event(ptr noundef nonnull %81, i32 noundef 3, i32 noundef 0, i32 noundef %85) #11
  %86 = ptrtoint ptr %ts_input58 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ts_input58, align 4
  %ts_prev_absy = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 28
  %88 = ptrtoint ptr %ts_prev_absy to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ts_prev_absy, align 4
  tail call void @input_event(ptr noundef %87, i32 noundef 3, i32 noundef 1, i32 noundef %89) #11
  %90 = ptrtoint ptr %ts_input58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ts_input58, align 4
  tail call void @input_event(ptr noundef %91, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  %92 = ptrtoint ptr %ts_input58 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ts_input58, align 4
  tail call void @input_event(ptr noundef %93, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end70

if.else68:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %ts_bufferedmeasure61 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %ts_bufferedmeasure61, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then63
  %95 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_base, align 4
  %97 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %registers, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4
  %conv74 = zext i8 %100 to i32
  %add75 = add nuw nsw i32 %conv74, 12
  %add.ptr76 = getelementptr i8, ptr %96, i32 %add75
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #11, !srcloc !217
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %shl79 = shl i32 %102, 10
  %ts_prev_absx80 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 27
  %103 = ptrtoint ptr %ts_prev_absx80 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %shl79, ptr %ts_prev_absx80, align 4
  %104 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_base, align 4
  %106 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %registers, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 4
  %conv85 = zext i8 %109 to i32
  %add86 = add nuw nsw i32 %conv85, 8
  %add.ptr87 = getelementptr i8, ptr %105, i32 %add86
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #11, !srcloc !217
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %ts_prev_absx80 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ts_prev_absx80, align 4
  %div = udiv i32 %113, %111
  store i32 %div, ptr %ts_prev_absx80, align 4
  %114 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_base, align 4
  %116 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %registers, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 4
  %conv95 = zext i8 %119 to i32
  %add96 = add nuw nsw i32 %conv95, 4
  %add.ptr97 = getelementptr i8, ptr %115, i32 %add96
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #11, !srcloc !217
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %shl100 = shl i32 %121, 10
  %ts_prev_absy101 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 28
  %122 = ptrtoint ptr %ts_prev_absy101 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %shl100, ptr %ts_prev_absy101, align 4
  %123 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_base, align 4
  %125 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %registers, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 4
  %conv106 = zext i8 %128 to i32
  %add.ptr108 = getelementptr i8, ptr %124, i32 %conv106
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #11, !srcloc !217
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %131 = ptrtoint ptr %ts_prev_absy101 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ts_prev_absy101, align 4
  %div112 = udiv i32 %132, %130
  store i32 %div112, ptr %ts_prev_absy101, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.end70, %land.lhs.true.if.end115_crit_edge, %if.else55.if.end115_crit_edge, %if.then33, %if.then13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %clk) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_channel_init(ptr noundef %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %touchscreen_type = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %touchscreen_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %touchscreen_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i32 -32, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch.selectcmp82 = icmp eq i32 %3, 4
  %switch.select83 = select i1 %switch.selectcmp82, i32 -16, i32 %switch.select
  %channels_mask = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels_mask, align 4
  %and = and i32 %switch.select83, %5
  store i32 %and, ptr %channels_mask, align 4
  %num_channels = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %7 to i32
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %channels_mask, i32 noundef %conv) #11
  %add = add i32 %call4.i, 1
  %num_channels7 = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %num_channels7, align 4
  %dev = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  %9 = mul i32 %call4.i, 88
  %mul = add i32 %9, 176
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %entry
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_channels, align 4
  %conv15 = zext i8 %11 to i32
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef %conv15, i32 noundef 0) #11
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_channels, align 4
  %conv1884 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %conv1884)
  %cmp1985 = icmp slt i32 %call16, %conv1884
  br i1 %cmp1985, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %res = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %bit.086 = phi i32 [ %call16, %for.body.lr.ph ], [ %call28, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %add.ptr, align 4
  %indexed = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 19
  %15 = ptrtoint ptr %indexed to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %indexed, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %indexed, align 4
  %channel = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 1
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bit.086, ptr %channel, align 4
  %scan_index = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 4
  %17 = ptrtoint ptr %scan_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %idx.087, ptr %scan_index, align 4
  %scan_type = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 5
  %18 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 117, ptr %scan_type, align 4
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res, align 4
  %conv21 = trunc i32 %20 to i8
  %realbits = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 5, i32 1
  %21 = ptrtoint ptr %realbits to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv21, ptr %realbits, align 1
  %storagebits = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 5, i32 2
  %22 = ptrtoint ptr %storagebits to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %storagebits, align 2
  %info_mask_shared_by_type = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 8
  %23 = ptrtoint ptr %info_mask_shared_by_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %info_mask_shared_by_type, align 4
  %info_mask_separate = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.087, i32 6
  %24 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %info_mask_separate, align 4
  %inc = add i32 %idx.087, 1
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_channels, align 4
  %conv26 = zext i8 %26 to i32
  %add27 = add nsw i32 %bit.086, 1
  %call28 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef %conv26, i32 noundef %add27) #11
  %27 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_channels, align 4
  %conv18 = zext i8 %28 to i32
  %cmp19 = icmp slt i32 %call28, %conv18
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %add.ptr29 = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.0.lcssa
  %29 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 13, ptr %add.ptr29, align 4
  %channel31 = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.0.lcssa, i32 1
  %30 = ptrtoint ptr %channel31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %channel31, align 4
  %scan_index32 = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.0.lcssa, i32 4
  %31 = ptrtoint ptr %scan_index32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %idx.0.lcssa, ptr %scan_index32, align 4
  %scan_type33 = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.0.lcssa, i32 5
  %32 = ptrtoint ptr %scan_type33 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 115, ptr %scan_type33, align 4
  %realbits36 = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.0.lcssa, i32 5, i32 1
  %33 = ptrtoint ptr %realbits36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 64, ptr %realbits36, align 1
  %storagebits38 = getelementptr %struct.iio_chan_spec, ptr %call.i, i32 %idx.0.lcssa, i32 5, i32 2
  %34 = ptrtoint ptr %storagebits38 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 64, ptr %storagebits38, align 2
  %channels = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 13
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %channels, align 8
  %36 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_channels7, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_trigger_init(ptr noundef %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %trigger_number = getelementptr inbounds %struct.at91_adc_caps, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %trigger_number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trigger_number, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #11
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !218

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %trig58 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %trig58 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %trig58, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %9, i32 noundef 3520) #11
  %trig = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %trig, align 4
  %cmp = icmp eq ptr %call5.i.i, null
  br i1 %cmp, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps, align 4
  %trigger_number462 = getelementptr inbounds %struct.at91_adc_caps, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %trigger_number462 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %trigger_number462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp563.not = icmp eq i32 %14, 0
  br i1 %cmp563.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %use_external = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2, i32 1
  %name.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %15 = phi ptr [ %12, %for.body.lr.ph ], [ %37, %for.inc.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %triggers = getelementptr inbounds %struct.at91_adc_caps, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %triggers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %triggers, align 4
  %is_external = getelementptr %struct.at91_adc_trigger, ptr %17, i32 %i.064, i32 2
  %18 = ptrtoint ptr %is_external to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_external, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %for.body.if.end9_crit_edge, label %land.lhs.true

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %20 = ptrtoint ptr %use_external to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_external, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not = icmp eq i8 %21, 0
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %for.body.if.end9_crit_edge
  %add.ptr = getelementptr %struct.at91_adc_trigger, ptr %17, i32 %i.064
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %24 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i, align 8
  %call.i = tail call i32 @iio_device_id(ptr noundef %idev) #11
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %call2.i = tail call ptr (ptr, ptr, ...) @iio_trigger_alloc(ptr noundef %23, ptr noundef nonnull @.str.82, ptr noundef %25, i32 noundef %call.i, ptr noundef %27) #11
  %cmp.i = icmp eq ptr %call2.i, null
  br i1 %cmp.i, label %if.end9.at91_adc_allocate_trigger.exit_crit_edge, label %if.end.i

if.end9.at91_adc_allocate_trigger.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %at91_adc_allocate_trigger.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call2.i, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %idev, ptr %driver_data.i.i.i, align 4
  %29 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @at91_adc_trigger_ops, ptr %call2.i, align 8
  %call3.i = tail call i32 @__iio_trigger_register(ptr noundef nonnull %call2.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %call2..i = select i1 %tobool.not.i, ptr %call2.i, ptr null
  br label %at91_adc_allocate_trigger.exit

at91_adc_allocate_trigger.exit:                   ; preds = %if.end.i, %if.end9.at91_adc_allocate_trigger.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end9.at91_adc_allocate_trigger.exit_crit_edge ], [ %call2..i, %if.end.i ]
  %30 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trig, align 4
  %arrayidx14 = getelementptr ptr, ptr %31, i32 %i.064
  %32 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i, ptr %arrayidx14, align 4
  %33 = load ptr, ptr %trig, align 4
  %arrayidx16 = getelementptr ptr, ptr %33, i32 %i.064
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx16, align 4
  %cmp17 = icmp eq ptr %35, null
  br i1 %cmp17, label %do.end, label %at91_adc_allocate_trigger.exit.for.inc_crit_edge

at91_adc_allocate_trigger.exit.for.inc_crit_edge: ; preds = %at91_adc_allocate_trigger.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %at91_adc_allocate_trigger.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %i.064) #14
  %i.166 = add i32 %i.064, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.166)
  %cmp2267 = icmp sgt i32 %i.166, -1
  br i1 %cmp2267, label %do.end.for.body23_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.for.body23_crit_edge:                      ; preds = %do.end
  br label %for.body23

for.inc:                                          ; preds = %at91_adc_allocate_trigger.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw i32 %i.064, 1
  %36 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %caps, align 4
  %trigger_number4 = getelementptr inbounds %struct.at91_adc_caps, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %trigger_number4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %trigger_number4, align 4
  %cmp5 = icmp ult i32 %inc, %39
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %do.end.for.body23_crit_edge
  %i.168 = phi i32 [ %i.1, %for.body23.for.body23_crit_edge ], [ %i.166, %do.end.for.body23_crit_edge ]
  %40 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trig, align 4
  %arrayidx25 = getelementptr ptr, ptr %41, i32 %i.168
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25, align 4
  tail call void @iio_trigger_unregister(ptr noundef %43) #11
  %44 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trig, align 4
  %arrayidx27 = getelementptr ptr, ptr %45, i32 %i.168
  %46 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx27, align 4
  tail call void @iio_trigger_free(ptr noundef %47) #11
  %i.1 = add nsw i32 %i.168, -1
  %cmp22 = icmp sgt i32 %i.168, 0
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.cleanup_crit_edge

for.body23.cleanup_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

cleanup:                                          ; preds = %for.body23.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -12, %for.body23.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_ts_register(ptr noundef %idev, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call ptr @input_allocate_device() #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %call1, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 25, ptr %id, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev2, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %5 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atmel_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @atmel_ts_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %7 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %evbit, align 4
  %or.i47 = or i32 %8, 10
  store i32 %or.i47, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %or.i48 = or i32 %10, 1024
  store i32 %or.i48, ptr %add.ptr.i, align 4
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps, align 4
  %has_tsmr = getelementptr inbounds %struct.at91_adc_caps, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %has_tsmr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_tsmr, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 24, i32 noundef 0, i32 noundef 16777215, i32 noundef 0, i32 noundef 0) #11
  br label %if.end15

if.else:                                          ; preds = %if.end
  %touchscreen_type = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %touchscreen_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %touchscreen_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not = icmp eq i32 %16, 4
  br i1 %cmp.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.86) #14
  br label %err

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then8
  %ts_input = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %ts_input to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1, ptr %ts_input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @input_register_device(ptr noundef nonnull %call1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end15.err_crit_edge

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %if.end15.err_crit_edge, %do.end12
  %ret.0 = phi i32 [ %call16, %if.end15.err_crit_edge ], [ -22, %do.end12 ]
  %ts_input20 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %ts_input20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ts_input20, align 4
  tail call void @input_free_device(ptr noundef %20) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %do.end ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_ts_hw_init(ptr noundef %idev, i32 noundef %adc_clk_khz) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mul = mul i32 %adc_clk_khz, 200
  %div = udiv i32 %mul, 1000
  %ts_pendbc = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 25
  %conv2 = and i32 %div, 65535
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %inc = add i32 %i.0, 1
  %shr = lshr i32 %conv2, %inc
  %tobool.not = icmp eq i32 %shr, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %shl.neg = shl nsw i32 -1, %inc
  %sub5 = add nsw i32 %shl.neg, %conv2
  %2 = tail call i32 @llvm.abs.i32(i32 %sub5, i1 false)
  %shl12.neg = shl nsw i32 -1, %i.0
  %sub13 = add nsw i32 %shl12.neg, %conv2
  %3 = tail call i32 @llvm.abs.i32(i32 %sub13, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp22 = icmp slt i32 %2, %3
  %storemerge.in = select i1 %cmp22, i32 %inc, i32 %i.0
  %storemerge = trunc i32 %storemerge.in to i16
  %4 = ptrtoint ptr %ts_pendbc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %storemerge, ptr %ts_pendbc, align 4
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 4
  %has_tsmr = getelementptr inbounds %struct.at91_adc_caps, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %has_tsmr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_tsmr, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool29.not = icmp eq i8 %8, 0
  br i1 %tobool29.not, label %if.then30, label %if.end49

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !217
  %12 = or i32 %11, 1090519040
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %ts_pendbc to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ts_pendbc, align 4
  %conv35 = zext i16 %15 to i32
  %shl36 = shl i32 %conv35, 28
  %or37 = or i32 %shl36, %13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 4
  %add.ptr39 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %16) #11, !srcloc !215
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base, align 4
  %add.ptr41 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 10) #11, !srcloc !215
  br label %cleanup

if.end49:                                         ; preds = %while.end
  %mul50 = mul i32 %adc_clk_khz, 10
  %div51 = udiv i32 %mul50, 1000
  %sub53 = add nuw nsw i32 %div51, 3
  %div541 = lshr i32 %sub53, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ts_hw_init.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_ts_hw_init, %if.then60)) #11
          to label %do.end [label %if.then60], !srcloc !216

if.then60:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_ts_hw_init.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %adc_clk_khz, i32 noundef %div541) #11
  br label %do.end

do.end:                                           ; preds = %if.then60, %if.end49
  %touchscreen_type = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 21
  %21 = ptrtoint ptr %touchscreen_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %touchscreen_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp62 = icmp eq i32 %22, 4
  %. = select i1 %cmp62, i32 2, i32 3
  %shl67 = shl i32 %div541, 16
  %and68 = and i32 %shl67, 983040
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %caps, align 4
  %ts_filter_average = getelementptr inbounds %struct.at91_adc_caps, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ts_filter_average to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ts_filter_average, align 2
  %conv71 = zext i8 %26 to i32
  %shl72 = shl nuw nsw i32 %conv71, 4
  %and73 = and i32 %shl72, 48
  %27 = ptrtoint ptr %ts_pendbc to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ts_pendbc, align 4
  %conv76 = zext i16 %28 to i32
  %shl77 = shl i32 %conv76, 28
  %or69 = or i32 %and68, %.
  %or74 = or i32 %or69, %and73
  %or79 = or i32 %or74, %shl77
  %or82 = or i32 %or79, 20972288
  %29 = tail call i32 @llvm.bswap.i32(i32 %or82)
  %reg_base83 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %reg_base83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base83, align 4
  %add.ptr84 = getelementptr i8, ptr %31, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %29) #11, !srcloc !215
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %caps, align 4
  %ts_pen_detect_sensitivity = getelementptr inbounds %struct.at91_adc_caps, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ts_pen_detect_sensitivity to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ts_pen_detect_sensitivity, align 1
  %36 = and i8 %35, 3
  %and87 = zext i8 %36 to i32
  %37 = shl nuw nsw i32 %and87, 24
  %38 = ptrtoint ptr %reg_base83 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base83, align 4
  %add.ptr89 = getelementptr i8, ptr %39, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %37) #11, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then30
  %.sink = phi i32 [ 2000, %do.end ], [ 10000, %if.then30 ]
  %mul90 = mul i32 %.sink, %adc_clk_khz
  %div91 = udiv i32 %mul90, 1000
  %40 = trunc i32 %div91 to i16
  %conv96 = add i16 %40, -1
  %ts_sample_period_val97 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 23
  %41 = ptrtoint ptr %ts_sample_period_val97 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv96, ptr %ts_sample_period_val97, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_adc_trigger_remove(ptr nocapture noundef readonly %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %trigger_number8 = getelementptr inbounds %struct.at91_adc_caps, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %trigger_number8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trigger_number8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not = icmp eq i32 %5, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %trig = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trig, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.010
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @iio_trigger_unregister(ptr noundef %9) #11
  %10 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trig, align 4
  %arrayidx2 = getelementptr ptr, ptr %11, i32 %i.010
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  tail call void @iio_trigger_free(ptr noundef %13) #11
  %inc = add nuw i32 %i.010, 1
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps, align 4
  %trigger_number = getelementptr inbounds %struct.at91_adc_caps, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %trigger_number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trigger_number, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_read_raw(ptr noundef %idev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup71_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb69
  ]

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %chnb = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chnb to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %chnb, align 4
  %6 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %6
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #11, !srcloc !215
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %shl3 = shl nuw i32 1, %11
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl3)
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %12) #11, !srcloc !215
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 33554432) #11, !srcloc !215
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 723) #11
  %done = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %done, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.then17, label %sw.bb.if.end46_crit_edge

sw.bb.if.end46_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then17:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wq_data_avail = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 19
  %call20117 = call i32 @prepare_to_wait_event(ptr noundef %wq_data_avail, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %20 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %done, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not118.not = icmp eq i8 %21, 0
  br i1 %tobool23.not118.not, label %if.then17.if.end39_crit_edge, label %if.then17.for.end_crit_edge

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then17.if.end39_crit_edge:                     ; preds = %if.then17
  br label %if.end39

if.end39:                                         ; preds = %cleanup.if.end39_crit_edge, %if.then17.if.end39_crit_edge
  %__ret18.1121 = phi i32 [ %__ret18.1, %cleanup.if.end39_crit_edge ], [ 100, %if.then17.if.end39_crit_edge ]
  %call20120 = phi i32 [ %call20, %cleanup.if.end39_crit_edge ], [ %call20117, %if.then17.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20120)
  %tobool40.not = icmp eq i32 %call20120, 0
  br i1 %tobool40.not, label %cleanup, label %if.end39.__out_crit_edge

if.end39.__out_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end39
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret18.1121) #11
  %call20 = call i32 @prepare_to_wait_event(ptr noundef %wq_data_avail, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %22 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %done, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool27.not = icmp eq i32 %call43, 0
  %spec.store.select73 = select i1 %tobool27.not, i32 1, i32 %call43
  %__ret18.1 = select i1 %tobool23.not, i32 %call43, i32 %spec.store.select73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %tobool33.not = icmp eq i32 %__ret18.1, 0
  %not.tobool23.not = xor i1 %tobool23.not, true
  %24 = select i1 %not.tobool23.not, i1 true, i1 %tobool33.not
  br i1 %24, label %cleanup.for.end_crit_edge, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then17.for.end_crit_edge
  %__ret18.1.lcssa = phi i32 [ 100, %if.then17.for.end_crit_edge ], [ %__ret18.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wq_data_avail, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end39.__out_crit_edge
  %__ret18.2109 = phi i32 [ %__ret18.1.lcssa, %for.end ], [ %call20120, %if.end39.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end46

if.end46:                                         ; preds = %__out, %sw.bb.if.end46_crit_edge
  %__ret.1 = phi i32 [ 100, %sw.bb.if.end46_crit_edge ], [ %__ret18.2109, %__out ]
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel, align 4
  %shl49 = shl nuw i32 1, %26
  %27 = call i32 @llvm.bswap.i32(i32 %shl49)
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 4
  %add.ptr51 = getelementptr i8, ptr %29, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %27) #11, !srcloc !215
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel, align 4
  %shl53 = shl nuw i32 1, %31
  %32 = call i32 @llvm.bswap.i32(i32 %shl53)
  %33 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base, align 4
  %add.ptr55 = getelementptr i8, ptr %34, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %32) #11, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp = icmp sgt i32 %__ret.1, 0
  br i1 %cmp, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %last_value = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %last_value to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %last_value, align 4
  %conv = zext i16 %36 to i32
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %val, align 4
  store i16 0, ptr %last_value, align 4
  %38 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %done, align 4
  br label %if.end67

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp59 = icmp eq i32 %__ret.1, 0
  br i1 %cmp59, label %do.end64, label %if.else.if.end67_crit_edge

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  %39 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %40) #14
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.else.if.end67_crit_edge, %if.then56
  %ret.0 = phi i32 [ 1, %if.then56 ], [ -110, %do.end64 ], [ %__ret.1, %if.else.if.end67_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup71

sw.bb69:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vref_mv = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vref_mv, align 4
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %realbits, align 1
  %conv70 = zext i8 %45 to i32
  %46 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv70, ptr %val2, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %sw.bb69, %if.end67, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb69 ], [ %ret.0, %if.end67 ], [ -22, %entry.cleanup71_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_ts_sample(ptr noundef %idev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %res = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 180
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !217
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, %sub
  %shr = lshr i32 %7, 16
  %and4 = and i32 %shr, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub3 = mul i32 %and, 4095
  %div = udiv i32 %sub3, %and4
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 184
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !217
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and10 = and i32 %11, %sub
  %shr13 = lshr i32 %11, 16
  %and14 = and i32 %shr13, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev20 = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.75) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %sub12 = mul i32 %and10, 4095
  %div22 = udiv i32 %sub12, %and14
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 188
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #11, !srcloc !217
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and28 = and i32 %15, %sub
  %shr29 = lshr i32 %15, 16
  %and30 = and i32 %shr29, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp31.not = icmp eq i32 %and28, 0
  br i1 %cmp31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %div, 1000
  %div331 = lshr i32 %mul, 10
  %mul35 = mul nuw nsw i32 %and30, 1000
  %div36 = udiv i32 %mul35, %and28
  %sub37 = add nsw i32 %div36, -1000
  %mul38 = mul i32 %sub37, %div331
  %div39 = udiv i32 %mul38, 1000
  br label %do.body41

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %ts_pressure_threshold = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %ts_pressure_threshold to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ts_pressure_threshold, align 4
  br label %do.body41

do.body41:                                        ; preds = %if.else, %if.then32
  %pres.0 = phi i32 [ %div39, %if.then32 ], [ %17, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ts_sample.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_ts_sample, %if.then46)) #11
          to label %do.end50 [label %if.then46], !srcloc !216

if.then46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %dev47 = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_ts_sample.__UNIQUE_ID_ddebug227, ptr noundef %dev47, ptr noundef nonnull @.str.77, i32 noundef %and, i32 noundef %and4, i32 noundef %and10, i32 noundef %and14, i32 noundef %and28, i32 noundef %and30, i32 noundef %pres.0) #11
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body41
  %ts_pressure_threshold51 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %ts_pressure_threshold51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ts_pressure_threshold51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pres.0, i32 %19)
  %cmp52 = icmp ult i32 %pres.0, %19
  br i1 %cmp52, label %do.body54, label %do.body77

do.body54:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ts_sample.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_ts_sample, %if.then66)) #11
          to label %do.end71 [label %if.then66], !srcloc !216

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %dev67 = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  %div68 = udiv i32 %pres.0, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_ts_sample.__UNIQUE_ID_ddebug228, ptr noundef %dev67, ptr noundef nonnull @.str.78, i32 noundef %div, i32 noundef %div22, i32 noundef %div68) #11
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body54
  %ts_input = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 0, i32 noundef %div) #11
  %22 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 1, i32 noundef %div22) #11
  %24 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef 24, i32 noundef %pres.0) #11
  %26 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  %28 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

do.body77:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ts_sample.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_ts_sample, %if.then89)) #11
          to label %cleanup [label %if.then89], !srcloc !216

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %dev90 = getelementptr inbounds %struct.iio_dev, ptr %idev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_ts_sample.__UNIQUE_ID_ddebug229, ptr noundef %dev90, ptr noundef nonnull @.str.79) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body77, %do.end71, %do.end19, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp30.not = icmp eq i32 %5, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 10
  %registers = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 11
  %buffer = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.033 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc5, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask, align 4
  %div3.i = lshr i32 %i.031, 5
  %arrayidx.i = getelementptr i32, ptr %7, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.031, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels, align 8
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 4
  %16 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv = zext i8 %19 to i32
  %channel = getelementptr %struct.iio_chan_spec, ptr %13, i32 %i.031, i32 1
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  %mul = shl i32 %21, 2
  %add = add i32 %mul, %conv
  %add.ptr2 = getelementptr i8, ptr %15, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !217
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %conv4 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i16, ptr %25, i32 %j.033
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv4, ptr %arrayidx, align 2
  %inc = add i32 %j.033, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end ], [ %j.033, %for.body.for.inc_crit_edge ]
  %inc5 = add nuw i32 %i.031, 1
  %27 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %inc5, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer6 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %buffer6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer6, align 4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %scan_timestamp.i, align 8, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %33 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %36, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i29 = getelementptr i64, ptr %30, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %34, ptr %arrayidx.i29, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %30) #11
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %39) #11
  %reg_base9 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 10
  %40 = ptrtoint ptr %reg_base9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base9, align 4
  %add.ptr10 = getelementptr i8, ptr %41, i32 32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #11, !srcloc !217
  %irq13 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 5
  %43 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq13, align 4
  tail call void @enable_irq(i32 noundef %44) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_configure_trigger(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %registers = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers, align 4
  %reg_base = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %trigger_register = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %trigger_register to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %trigger_register, align 1
  %conv = zext i8 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !217
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps, align 4
  %triggers = getelementptr inbounds %struct.at91_adc_caps, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %triggers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %triggers, align 4
  %trig3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %trig3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trig3, align 4
  %name = getelementptr inbounds %struct.iio_trigger, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %caps.i = getelementptr inbounds %struct.at91_adc_state, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %caps.i, align 4
  %trigger_number33.i = getelementptr inbounds %struct.at91_adc_caps, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %trigger_number33.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trigger_number33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp34.not.i = icmp eq i32 %25, 0
  br i1 %cmp34.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %name1.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name1.i, align 8
  %call2.i = tail call i32 @iio_device_id(ptr noundef %1) #11
  %arrayidx.i = getelementptr %struct.at91_adc_trigger, ptr %15, i32 %i.035.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.82, ptr noundef %27, i32 noundef %call2.i, ptr noundef %29) #11
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i119

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i119:                                      ; preds = %for.body.i
  %call5.i = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull %call4.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  tail call void @kfree(ptr noundef nonnull %call4.i) #11
  br i1 %cmp6.i, label %if.then7.i, label %for.inc.i

if.then7.i:                                       ; preds = %if.end.i119
  %value.i = getelementptr %struct.at91_adc_trigger, ptr %15, i32 %i.035.i, i32 1
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp9.i = icmp eq i8 %31, 0
  %conv.i = zext i8 %31 to i32
  br i1 %cmp9.i, label %if.then7.i.cleanup_crit_edge, label %if.end

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i119
  %inc.i = add nuw i32 %i.035.i, 1
  %32 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %caps.i, align 4
  %trigger_number.i = getelementptr inbounds %struct.at91_adc_caps, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %trigger_number.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %trigger_number.i, align 4
  %cmp.i120 = icmp ult i32 %inc.i, %35
  br i1 %cmp.i120, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end:                                           ; preds = %if.then7.i
  br i1 %state, label %if.end8.i, label %if.else

if.end8.i:                                        ; preds = %if.end
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_bytes, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #17
  %buffer = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i, ptr %buffer, align 4
  %cmp9 = icmp eq ptr %call9.i, null
  br i1 %cmp9, label %if.end8.i.cleanup_crit_edge, label %if.end12

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i
  %or = or i32 %11, %conv.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %or)
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base, align 4
  %42 = ptrtoint ptr %trigger_register to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %trigger_register, align 1
  %conv15 = zext i8 %43 to i32
  %add.ptr16 = getelementptr i8, ptr %41, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %39) #11, !srcloc !215
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %active_scan_mask, align 4
  %num_channels = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 9
  %46 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_channels, align 4
  %conv17 = zext i8 %47 to i32
  %call18 = tail call i32 @_find_next_bit_be(ptr noundef %45, i32 noundef %conv17, i32 noundef 0) #11
  %conv20132 = and i32 %call18, 255
  %48 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_channels, align 4
  %conv22133 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20132, i32 %conv22133)
  %cmp23134 = icmp ult i32 %conv20132, %conv22133
  br i1 %cmp23134, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv20135 = phi i32 [ %conv20132, %for.body.lr.ph ], [ %conv20, %for.body.for.body_crit_edge ]
  %50 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %channels, align 8
  %channel = getelementptr %struct.iio_chan_spec, ptr %51, i32 %conv20135, i32 1
  %52 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %53
  %54 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %55 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_base, align 4
  %add.ptr28 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %54) #11, !srcloc !215
  %57 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %active_scan_mask, align 4
  %59 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_channels, align 4
  %conv31 = zext i8 %60 to i32
  %add = add nuw nsw i32 %conv20135, 1
  %call33 = tail call i32 @_find_next_bit_be(ptr noundef %58, i32 noundef %conv31, i32 noundef %add) #11
  %conv20 = and i32 %call33, 255
  %61 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_channels, align 4
  %conv22 = zext i8 %62 to i32
  %cmp23 = icmp ult i32 %conv20, %conv22
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %drdy_mask = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %5, i32 0, i32 1
  %63 = ptrtoint ptr %drdy_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %drdy_mask, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base, align 4
  %add.ptr36 = getelementptr i8, ptr %67, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %65) #11, !srcloc !215
  br label %cleanup

if.else:                                          ; preds = %if.end
  %drdy_mask37 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %5, i32 0, i32 1
  %68 = ptrtoint ptr %drdy_mask37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %drdy_mask37, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base, align 4
  %add.ptr39 = getelementptr i8, ptr %72, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %70) #11, !srcloc !215
  %neg = xor i32 %conv.i, -1
  %and = and i32 %11, %neg
  %73 = tail call i32 @llvm.bswap.i32(i32 %and)
  %74 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_base, align 4
  %76 = ptrtoint ptr %trigger_register to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %trigger_register, align 1
  %conv42 = zext i8 %77 to i32
  %add.ptr43 = getelementptr i8, ptr %75, i32 %conv42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %73) #11, !srcloc !215
  %active_scan_mask44 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %78 = ptrtoint ptr %active_scan_mask44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %active_scan_mask44, align 4
  %num_channels45 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 9
  %80 = ptrtoint ptr %num_channels45 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_channels45, align 4
  %conv46 = zext i8 %81 to i32
  %call47 = tail call i32 @_find_next_bit_be(ptr noundef %79, i32 noundef %conv46, i32 noundef 0) #11
  %conv50128 = and i32 %call47, 255
  %82 = ptrtoint ptr %num_channels45 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_channels45, align 4
  %conv52129 = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv50128, i32 %conv52129)
  %cmp53130 = icmp ult i32 %conv50128, %conv52129
  br i1 %cmp53130, label %for.body55.lr.ph, label %if.else.for.end72_crit_edge

if.else.for.end72_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72

for.body55.lr.ph:                                 ; preds = %if.else
  %channels57 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.body55.lr.ph
  %conv50131 = phi i32 [ %conv50128, %for.body55.lr.ph ], [ %conv50, %for.body55.for.body55_crit_edge ]
  %84 = ptrtoint ptr %channels57 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %channels57, align 8
  %channel60 = getelementptr %struct.iio_chan_spec, ptr %85, i32 %conv50131, i32 1
  %86 = ptrtoint ptr %channel60 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %channel60, align 4
  %shl61 = shl nuw i32 1, %87
  %88 = tail call i32 @llvm.bswap.i32(i32 %shl61)
  %89 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_base, align 4
  %add.ptr63 = getelementptr i8, ptr %90, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %88) #11, !srcloc !215
  %91 = ptrtoint ptr %active_scan_mask44 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %active_scan_mask44, align 4
  %93 = ptrtoint ptr %num_channels45 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_channels45, align 4
  %conv67 = zext i8 %94 to i32
  %add69 = add nuw nsw i32 %conv50131, 1
  %call70 = tail call i32 @_find_next_bit_be(ptr noundef %92, i32 noundef %conv67, i32 noundef %add69) #11
  %conv50 = and i32 %call70, 255
  %95 = ptrtoint ptr %num_channels45 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_channels45, align 4
  %conv52 = zext i8 %96 to i32
  %cmp53 = icmp ult i32 %conv50, %conv52
  br i1 %cmp53, label %for.body55.for.body55_crit_edge, label %for.body55.for.end72_crit_edge

for.body55.for.end72_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55

for.end72:                                        ; preds = %for.body55.for.end72_crit_edge, %if.else.for.end72_crit_edge
  %buffer73 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 1
  %97 = ptrtoint ptr %buffer73 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %buffer73, align 4
  tail call void @kfree(ptr noundef %98) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %for.end, %if.end8.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.cleanup_crit_edge ], [ 0, %for.end72 ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then7.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %has_tsmr = getelementptr inbounds %struct.at91_adc_caps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %has_tsmr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_tsmr, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %reg_base1 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %reg_base1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base1, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 36
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 32) #11, !srcloc !215
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 4096) #11, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_ts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %has_tsmr = getelementptr inbounds %struct.at91_adc_caps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %has_tsmr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_tsmr, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %reg_base1 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %reg_base1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base1, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 40
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 32) #11, !srcloc !215
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 4096) #11, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @calc_startup_ticks_9260(i32 noundef %startup_time, i32 noundef %adc_clk_khz) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %adc_clk_khz, %startup_time
  %div = udiv i32 %mul, 1000
  %sub1 = add nsw i32 %div, -2
  %or = or i32 %sub1, 7
  %add = add nsw i32 %or, 1
  %div23 = lshr exact i32 %add, 3
  ret i32 %div23
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @calc_startup_ticks_9x5(i32 noundef %startup_time, i32 noundef %adc_clk_khz) #10 align 64 {
for.inc:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %adc_clk_khz, %startup_time
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %mul)
  %cmp1.1 = icmp ult i32 %mul, 8000
  br i1 %cmp1.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %mul)
  %cmp1.2 = icmp ult i32 %mul, 16000
  br i1 %cmp1.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %mul)
  %cmp1.3 = icmp ult i32 %mul, 24000
  br i1 %cmp1.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %mul)
  %cmp1.4 = icmp ult i32 %mul, 64000
  br i1 %cmp1.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %mul)
  %cmp1.5 = icmp ult i32 %mul, 80000
  br i1 %cmp1.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %mul)
  %cmp1.6 = icmp ult i32 %mul, 96000
  br i1 %cmp1.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 112000, i32 %mul)
  %cmp1.7 = icmp ult i32 %mul, 112000
  br i1 %cmp1.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 512000, i32 %mul)
  %cmp1.8 = icmp ult i32 %mul, 512000
  br i1 %cmp1.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 576000, i32 %mul)
  %cmp1.9 = icmp ult i32 %mul, 576000
  br i1 %cmp1.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640000, i32 %mul)
  %cmp1.10 = icmp ult i32 %mul, 640000
  br i1 %cmp1.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 704000, i32 %mul)
  %cmp1.11 = icmp ult i32 %mul, 704000
  br i1 %cmp1.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %mul)
  %cmp1.12 = icmp ult i32 %mul, 768000
  br i1 %cmp1.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 832000, i32 %mul)
  %cmp1.13 = icmp ult i32 %mul, 832000
  br i1 %cmp1.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 896000, i32 %mul)
  %cmp1.14 = icmp ult i32 %mul, 896000
  %spec.select = select i1 %cmp1.14, i32 14, i32 15
  br label %for.end

for.end:                                          ; preds = %for.inc.13, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %cmp2 = phi i32 [ 13, %for.inc.12.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ %spec.select, %for.inc.13 ]
  ret i32 %cmp2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #11
  %clk = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %clk = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %call3 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @__initcall__kmod_at91_adc__232_1393_at91_adc_driver_init6, !1, !"__initcall__kmod_at91_adc__232_1393_at91_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/at91_adc.c", i32 1393, i32 1}
!2 = !{ptr @__exitcall_at91_adc_driver_exit, !1, !"__exitcall_at91_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/at91_adc.c", i32 1395, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description235, !7, !"__UNIQUE_ID_description235", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/at91_adc.c", i32 1396, i32 1}
!8 = !{ptr @__UNIQUE_ID_author236, !9, !"__UNIQUE_ID_author236", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/at91_adc.c", i32 1397, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/at91_adc.c", i32 1387, i32 14}
!12 = !{ptr @at91_adc_driver, !13, !"at91_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/at91_adc.c", i32 1383, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/at91_adc.c", i32 1013, i32 49}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/at91_adc.c", i32 1015, i32 33}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/at91_adc.c", i32 1016, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @at91_adc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @at91_adc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/at91_adc.c", i32 1021, i32 47}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/at91_adc.c", i32 1023, i32 33}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/at91_adc.c", i32 1024, i32 3}
!32 = !{ptr @at91_adc_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @at91_adc_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/at91_adc.c", i32 1030, i32 29}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/at91_adc.c", i32 1033, i32 33}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/at91_adc.c", i32 1034, i32 3}
!40 = !{ptr @at91_adc_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @at91_adc_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/at91_adc.c", i32 1041, i32 37}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/at91_adc.c", i32 1042, i32 20}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/at91_adc.c", i32 1045, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @at91_adc_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @at91_adc_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/at91_adc.c", i32 1085, i32 3}
!53 = !{ptr @at91_adc_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @at91_adc_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/at91_adc.c", i32 1089, i32 37}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/at91_adc.c", i32 1091, i32 3}
!59 = !{ptr @at91_adc_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @at91_adc_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/at91_adc.c", i32 1098, i32 3}
!63 = !{ptr @at91_adc_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @at91_adc_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/at91_adc.c", i32 1103, i32 41}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/at91_adc.c", i32 1105, i32 3}
!69 = !{ptr @at91_adc_probe._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @at91_adc_probe._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/at91_adc.c", i32 1112, i32 3}
!73 = !{ptr @at91_adc_probe._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @at91_adc_probe._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/at91_adc.c", i32 1126, i32 2}
!77 = !{ptr @at91_adc_probe.__UNIQUE_ID_ddebug231, !76, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/at91_adc.c", i32 1132, i32 3}
!80 = !{ptr @at91_adc_probe._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @at91_adc_probe._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/at91_adc.c", i32 1161, i32 3}
!84 = !{ptr @at91_adc_probe._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @at91_adc_probe._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @at91_adc_probe.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/at91_adc.c", i32 1165, i32 2}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @at91_adc_probe.__key.49, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/at91_adc.c", i32 1166, i32 2}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/at91_adc.c", i32 1176, i32 4}
!94 = !{ptr @at91_adc_probe._entry.51, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @at91_adc_probe._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/at91_adc.c", i32 1182, i32 4}
!98 = !{ptr @at91_adc_probe._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @at91_adc_probe._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/at91_adc.c", i32 1196, i32 3}
!102 = !{ptr @at91_adc_probe._entry.57, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @at91_adc_probe._entry_ptr.59, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/at91_adc.c", i32 804, i32 35}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/adc/at91_adc.c", i32 806, i32 3}
!108 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @at91_adc_probe_dt_ts._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @at91_adc_probe_dt_ts._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/at91_adc.c", i32 816, i32 3}
!113 = !{ptr @at91_adc_probe_dt_ts._entry.63, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @at91_adc_probe_dt_ts._entry_ptr.65, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/at91_adc.c", i32 823, i32 29}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/at91_adc.c", i32 828, i32 3}
!119 = !{ptr @at91_adc_probe_dt_ts._entry.67, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @at91_adc_probe_dt_ts._entry_ptr.69, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @at91_adc_info, !122, !"at91_adc_info", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/at91_adc.c", i32 833, i32 30}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/at91_adc.c", i32 740, i32 4}
!125 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @at91_adc_read_raw._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @at91_adc_read_raw._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/at91_adc.c", i32 327, i32 3}
!130 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @at91_ts_sample._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @at91_ts_sample._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/adc/at91_adc.c", i32 338, i32 3}
!135 = !{ptr @at91_ts_sample._entry.74, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @at91_ts_sample._entry_ptr.76, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/adc/at91_adc.c", i32 354, i32 2}
!139 = !{ptr @at91_ts_sample.__UNIQUE_ID_ddebug227, !138, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/at91_adc.c", i32 358, i32 3}
!142 = !{ptr @at91_ts_sample.__UNIQUE_ID_ddebug228, !141, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/at91_adc.c", i32 366, i32 3}
!145 = !{ptr @at91_ts_sample.__UNIQUE_ID_ddebug229, !144, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/adc/at91_adc.c", i32 664, i32 4}
!148 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @at91_adc_trigger_init._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @at91_adc_trigger_init._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/at91_adc.c", i32 628, i32 45}
!153 = !{ptr @at91_adc_trigger_ops, !154, !"at91_adc_trigger_ops", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/at91_adc.c", i32 618, i32 37}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/at91_adc.c", i32 943, i32 3}
!157 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @at91_ts_register._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @at91_ts_register._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/iio/adc/at91_adc.c", i32 964, i32 4}
!162 = !{ptr @at91_ts_register._entry.85, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @at91_ts_register._entry_ptr.87, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/adc/at91_adc.c", i32 901, i32 2}
!166 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @at91_ts_hw_init.__UNIQUE_ID_ddebug230, !165, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!168 = !{ptr @at91_adc_dt_ids, !169, !"at91_adc_dt_ids", i1 false, i1 false}
!169 = !{!"../drivers/iio/adc/at91_adc.c", i32 1373, i32 34}
!170 = !{ptr @at91sam9260_caps, !171, !"at91sam9260_caps", i1 false, i1 false}
!171 = !{!"../drivers/iio/adc/at91_adc.c", i32 1270, i32 29}
!172 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/iio/adc/at91_adc.c", i32 1264, i32 12}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/adc/at91_adc.c", i32 1265, i32 12}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/iio/adc/at91_adc.c", i32 1266, i32 12}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/adc/at91_adc.c", i32 1267, i32 12}
!180 = !{ptr @at91sam9260_triggers, !181, !"at91sam9260_triggers", i1 false, i1 false}
!181 = !{!"../drivers/iio/adc/at91_adc.c", i32 1263, i32 38}
!182 = !{ptr @at91sam9rl_caps, !183, !"at91sam9rl_caps", i1 false, i1 false}
!183 = !{!"../drivers/iio/adc/at91_adc.c", i32 1294, i32 29}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/iio/adc/at91_adc.c", i32 1288, i32 12}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/adc/at91_adc.c", i32 1289, i32 12}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/iio/adc/at91_adc.c", i32 1290, i32 12}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/iio/adc/at91_adc.c", i32 1291, i32 12}
!192 = !{ptr @at91sam9x5_triggers, !193, !"at91sam9x5_triggers", i1 false, i1 false}
!193 = !{!"../drivers/iio/adc/at91_adc.c", i32 1287, i32 38}
!194 = !{ptr @at91sam9g45_caps, !195, !"at91sam9g45_caps", i1 false, i1 false}
!195 = !{!"../drivers/iio/adc/at91_adc.c", i32 1312, i32 29}
!196 = !{ptr @at91sam9x5_caps, !197, !"at91sam9x5_caps", i1 false, i1 false}
!197 = !{!"../drivers/iio/adc/at91_adc.c", i32 1330, i32 29}
!198 = distinct !{null, !199, !"startup_lookup", i1 false, i1 false}
!199 = !{!"../drivers/iio/adc/at91_adc.c", i32 776, i32 19}
!200 = !{ptr @sama5d3_caps, !201, !"sama5d3_caps", i1 false, i1 false}
!201 = !{!"../drivers/iio/adc/at91_adc.c", i32 1352, i32 29}
!202 = !{ptr @at91_adc_pm_ops, !203, !"at91_adc_pm_ops", i1 false, i1 false}
!203 = !{!"../drivers/iio/adc/at91_adc.c", i32 1261, i32 8}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{!"auto-init"}
!214 = !{i8 0, i8 2}
!215 = !{i64 2066716}
!216 = !{i64 2148818357, i64 2148818362, i64 2148818375, i64 2148818419, i64 2148818453, i64 2148818474}
!217 = !{i64 2067134}
!218 = !{!"branch_weights", i32 1, i32 2000}
