; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/dln2-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/dln2-adc.c"
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
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dln2_adc_port_chan = type { i8, i8 }
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
%struct.dln2_platform_data = type { i16, i8 }
%struct.dln2_adc = type { ptr, [9 x %struct.iio_chan_spec], i32, i32, ptr, %struct.mutex, i32, i32, [8 x %struct.dln2_adc_demux_table], i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.dln2_adc_demux_table = type { i32, i32, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.anon.46 = type { [8 x i16], i64 }
%struct.dln2_adc_get_all_vals = type { i16, [8 x i16] }
%struct.anon.45 = type <{ %struct.dln2_adc_port_chan, i8, i16, i16, i16 }>

@__initcall__kmod_dln2_adc__197_709_dln2_adc_driver_init6 = internal global ptr @dln2_adc_driver_init, section ".initcall6.init", align 4
@dln2_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dln2_adc_probe, ptr @dln2_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dln2_adc_driver_exit = internal global ptr @dln2_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author198 = internal constant [51 x i8] c"dln2_adc.author=Jack Andersen <jackoalan@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description199 = internal constant [62 x i8] c"dln2_adc.description=Driver for the Diolan DLN2 ADC interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file200 = internal constant [39 x i8] c"dln2_adc.file=drivers/iio/adc/dln2-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license201 = internal constant [24 x i8] c"dln2_adc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias202 = internal constant [33 x i8] c"dln2_adc.alias=platform:dln2-adc\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2-adc\00", [23 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocating iio device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dln2_adc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/adc/dln2-adc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr = internal global ptr @dln2_adc_probe._entry, section ".printk_index", align 4
@dln2_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dln2->mutex\00", [19 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set ADC resolution to 10 bits\0A\00", [55 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.9 = internal global ptr @dln2_adc_probe._entry.7, section ".printk_index", align 4
@dln2_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get channel count: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.12 = internal global ptr @dln2_adc_probe._entry.10, section ".printk_index", align 4
@dln2_adc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 636, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clamping channels to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.16 = internal global ptr @dln2_adc_probe._entry.13, section ".printk_index", align 4
@dln2_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @dln2_adc_read_raw, ptr null, ptr null, ptr @dln2_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dln2_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dln2_adc_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @dln2_adc_triggered_buffer_postenable, ptr @dln2_adc_triggered_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.20 = internal global ptr @dln2_adc_probe._entry.18, section ".printk_index", align 4
@dln2_adc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register trigger: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.23 = internal global ptr @dln2_adc_probe._entry.21, section ".printk_index", align 4
@dln2_adc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 669, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to allocate triggered buffer: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.26 = internal global ptr @dln2_adc_probe._entry.24, section ".printk_index", align 4
@dln2_adc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 676, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to setup DLN2 periodic event: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.29 = internal global ptr @dln2_adc_probe._entry.27, section ".printk_index", align 4
@dln2_adc_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register iio device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dln2_adc_probe._entry_ptr.32 = internal global ptr @dln2_adc_probe._entry.30, section ".printk_index", align 4
@dln2_adc_set_port_resolution.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2_adc\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dln2_adc_set_port_resolution\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Problem in %s\0A\00", [17 x i8] zeroinitializer }, align 32
@dln2_adc_get_chan_count.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.36, ptr @.str.3, ptr @.str.35, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dln2_adc_get_chan_count\00", [40 x i8] zeroinitializer }, align 32
@dln2_adc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ADC pins conflict with mask %04X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dln2_adc_read\00", [18 x i8] zeroinitializer }, align 32
@dln2_adc_read._entry_ptr = internal global ptr @dln2_adc_read._entry, section ".printk_index", align 4
@dln2_adc_read.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.38, ptr @.str.3, ptr @.str.35, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.39, ptr @.str.3, ptr @.str.35, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dln2_adc_set_chan_enabled\00", [38 x i8] zeroinitializer }, align 32
@dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dln2_adc_set_port_enabled\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Problem in %s(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@dln2_adc_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 396, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clamping period to 65535ms\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dln2_adc_write_raw\00", [45 x i8] zeroinitializer }, align 32
@dln2_adc_write_raw._entry_ptr = internal global ptr @dln2_adc_write_raw._entry, section ".printk_index", align 4
@dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.44, ptr @.str.3, ptr @.str.35, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dln2_adc_set_chan_period\00", [39 x i8] zeroinitializer }, align 32
@dln2_update_scan_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to enable ADC channel %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dln2_update_scan_mode\00", [42 x i8] zeroinitializer }, align 32
@dln2_update_scan_mode._entry_ptr = internal global ptr @dln2_update_scan_mode._entry, section ".printk_index", align 4
@dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.47, ptr @.str.3, ptr @.str.35, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dln2_adc_triggered_buffer_postenable\00", [59 x i8] zeroinitializer }, align 32
@dln2_adc_triggered_buffer_postenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.47, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@dln2_adc_triggered_buffer_postenable._entry_ptr = internal global ptr @dln2_adc_triggered_buffer_postenable._entry, section ".printk_index", align 4
@dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.47, ptr @.str.3, ptr @.str.35, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dln2_adc_triggered_buffer_predisable.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.48, ptr @.str.3, ptr @.str.35, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dln2_adc_triggered_buffer_predisable\00", [59 x i8] zeroinitializer }, align 32
@dln2_adc_read_all.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.49, ptr @.str.3, ptr @.str.35, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dln2_adc_read_all\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"dln2_adc_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 703, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 704, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 610, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 618, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 624, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 630, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 635, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"dln2_adc_info\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 474, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"dln2_adc_buffer_setup_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 585, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 650, i32 43 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 654, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 660, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 669, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 676, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 682, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 174, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 154, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 266, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 191, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 211, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 395, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 243, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 437, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 532, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 534, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 580, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [30 x i8] c"../drivers/iio/adc/dln2-adc.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 312, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_alias202, ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file200, ptr @__UNIQUE_ID_license201, ptr @__exitcall_dln2_adc_driver_exit, ptr @__initcall__kmod_dln2_adc__197_709_dln2_adc_driver_init6, ptr @dln2_adc_driver_exit, ptr @dln2_adc_probe._entry, ptr @dln2_adc_probe._entry.10, ptr @dln2_adc_probe._entry.13, ptr @dln2_adc_probe._entry.18, ptr @dln2_adc_probe._entry.21, ptr @dln2_adc_probe._entry.24, ptr @dln2_adc_probe._entry.27, ptr @dln2_adc_probe._entry.30, ptr @dln2_adc_probe._entry.7, ptr @dln2_adc_probe._entry_ptr, ptr @dln2_adc_probe._entry_ptr.12, ptr @dln2_adc_probe._entry_ptr.16, ptr @dln2_adc_probe._entry_ptr.20, ptr @dln2_adc_probe._entry_ptr.23, ptr @dln2_adc_probe._entry_ptr.26, ptr @dln2_adc_probe._entry_ptr.29, ptr @dln2_adc_probe._entry_ptr.32, ptr @dln2_adc_probe._entry_ptr.9, ptr @dln2_adc_read._entry, ptr @dln2_adc_read._entry_ptr, ptr @dln2_adc_triggered_buffer_postenable._entry, ptr @dln2_adc_triggered_buffer_postenable._entry_ptr, ptr @dln2_adc_write_raw._entry, ptr @dln2_adc_write_raw._entry_ptr, ptr @dln2_update_scan_mode._entry, ptr @dln2_update_scan_mode._entry_ptr, ptr @dln2_adc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dln2_adc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @dln2_adc_info, ptr @dln2_adc_buffer_setup_ops, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_update_scan_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_adc_triggered_buffer_postenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dln2_adc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dln2_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dln2_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %port.i = alloca i8, align 1
  %count.i = alloca i8, align 1
  %olen.i = alloca i32, align 4
  %port_chan.i = alloca %struct.dln2_adc_port_chan, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 1012) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %3, align 4
  %port = getelementptr inbounds %struct.dln2_platform_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 2
  %conv = zext i8 %6 to i32
  %port6 = getelementptr inbounds %struct.dln2_adc, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %port6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %port6, align 4
  %trigger_chan = getelementptr inbounds %struct.dln2_adc, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %trigger_chan to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %trigger_chan, align 4
  %mutex = getelementptr inbounds %struct.dln2_adc, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @dln2_adc_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_chan.i) #6
  %10 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %port_chan.i, i32 0, i32 1
  %11 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port6, align 4
  %conv.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %port_chan.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %port_chan.i, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %10, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %16, i16 noundef zeroext 1544, ptr noundef nonnull %port_chan.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end16

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_port_resolution.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_probe, %dln2_adc_set_port_resolution.exit.thread)) #6
          to label %dln2_adc_set_port_resolution.exit [label %dln2_adc_set_port_resolution.exit.thread], !srcloc !124

dln2_adc_set_port_resolution.exit.thread:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_port_resolution.__UNIQUE_ID_ddebug188, ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  br label %do.end15

dln2_adc_set_port_resolution.exit:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  br label %do.end15

do.end15:                                         ; preds = %dln2_adc_set_port_resolution.exit, %dln2_adc_set_port_resolution.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port.i) #6
  %19 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port6, align 4
  %conv.i223 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i223, ptr %port.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %count.i) #6
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %count.i, align 1, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #6
  %23 = ptrtoint ptr %olen.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %olen.i, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %25, i16 noundef zeroext 1537, ptr noundef nonnull %port.i, i32 noundef 1, ptr noundef nonnull %count.i, ptr noundef nonnull %olen.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i224 = icmp slt i32 %call.i, 0
  br i1 %cmp.i224, label %do.body.i225, label %if.end8.i

do.body.i225:                                     ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_get_chan_count.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_probe, %if.then6.i227)) #6
          to label %dln2_adc_get_chan_count.exit [label %if.then6.i227], !srcloc !124

if.then6.i227:                                    ; preds = %do.body.i225
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %dev.i226 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_get_chan_count.__UNIQUE_ID_ddebug187, ptr noundef %dev.i226, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #6
  br label %dln2_adc_get_chan_count.exit.thread

if.end8.i:                                        ; preds = %if.end16
  %28 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i = icmp eq i32 %29, 0
  br i1 %cmp9.i, label %if.end8.i.dln2_adc_get_chan_count.exit.thread_crit_edge, label %if.end24

if.end8.i.dln2_adc_get_chan_count.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_get_chan_count.exit.thread

dln2_adc_get_chan_count.exit.thread:              ; preds = %if.end8.i.dln2_adc_get_chan_count.exit.thread_crit_edge, %if.then6.i227
  %retval.0.i.ph = phi i32 [ -71, %if.end8.i.dln2_adc_get_chan_count.exit.thread_crit_edge ], [ %call.i, %if.then6.i227 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %count.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  br label %do.end23

dln2_adc_get_chan_count.exit:                     ; preds = %do.body.i225
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %count.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  br label %do.end23

do.end23:                                         ; preds = %dln2_adc_get_chan_count.exit, %dln2_adc_get_chan_count.exit.thread
  %retval.0.i232 = phi i32 [ %retval.0.i.ph, %dln2_adc_get_chan_count.exit.thread ], [ %call.i, %dln2_adc_get_chan_count.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i232) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end8.i
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %count.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %count.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %31)
  %cmp25 = icmp ugt i8 %31, 8
  br i1 %cmp25, label %if.end31.thread, label %if.end31

if.end31.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 8) #9
  br label %for.body.preheader

if.end31:                                         ; preds = %if.end24
  %conv13.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp32237.not = icmp eq i8 %31, 0
  br i1 %cmp32237.not, label %if.end31.for.end_crit_edge, label %if.end31.for.body.preheader_crit_edge

if.end31.for.body.preheader_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end31.for.body.preheader_crit_edge, %if.end31.thread
  %chans.0241 = phi i32 [ 8, %if.end31.thread ], [ %conv13.i, %if.end31.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0238 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx, align 4
  %channel = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 1
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0238, ptr %channel, align 4
  %indexed = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 19
  %34 = ptrtoint ptr %indexed to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %indexed, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %indexed, align 4
  %info_mask_separate = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 6
  %35 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %info_mask_separate, align 4
  %info_mask_shared_by_all = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 12
  %36 = ptrtoint ptr %info_mask_shared_by_all to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4100, ptr %info_mask_shared_by_all, align 4
  %scan_index = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 4
  %37 = ptrtoint ptr %scan_index to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %i.0238, ptr %scan_index, align 4
  %scan_type = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 5
  %38 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 117, ptr %scan_type, align 4
  %realbits = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 5, i32 1
  %39 = ptrtoint ptr %realbits to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 10, ptr %realbits, align 1
  %storagebits = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 5, i32 2
  %40 = ptrtoint ptr %storagebits to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 16, ptr %storagebits, align 2
  %endianness = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %i.0238, i32 5, i32 5
  %41 = ptrtoint ptr %endianness to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %endianness, align 4
  %inc = add nuw nsw i32 %i.0238, 1
  %exitcond.not = icmp eq i32 %inc, %chans.0241
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end31.for.end_crit_edge
  %chans.0242 = phi i32 [ 0, %if.end31.for.end_crit_edge ], [ %chans.0241, %for.body.for.end_crit_edge ]
  %iio_channels55 = getelementptr inbounds %struct.dln2_adc, ptr %3, i32 0, i32 1
  %arrayidx56 = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %chans.0242
  %42 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 13, ptr %arrayidx56, align 4
  %channel60 = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %chans.0242, i32 1
  %43 = ptrtoint ptr %channel60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %channel60, align 4
  %scan_index63 = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %chans.0242, i32 4
  %44 = ptrtoint ptr %scan_index63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %chans.0242, ptr %scan_index63, align 4
  %scan_type66 = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %chans.0242, i32 5
  %45 = ptrtoint ptr %scan_type66 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 115, ptr %scan_type66, align 4
  %realbits71 = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %chans.0242, i32 5, i32 1
  %46 = ptrtoint ptr %realbits71 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 64, ptr %realbits71, align 1
  %storagebits75 = getelementptr %struct.dln2_adc, ptr %3, i32 0, i32 1, i32 %chans.0242, i32 5, i32 2
  %47 = ptrtoint ptr %storagebits75 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 64, ptr %storagebits75, align 2
  %name = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %48 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %49 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @dln2_adc_info, ptr %info, align 8
  %50 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %call3, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %51 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %iio_channels55, ptr %channels, align 8
  %add = add nuw nsw i32 %chans.0242, 1
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %52 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add, ptr %num_channels, align 4
  %setup_ops = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 18
  %53 = ptrtoint ptr %setup_ops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @dln2_adc_buffer_setup_ops, ptr %setup_ops, align 4
  %call78 = call i32 @iio_device_id(ptr noundef nonnull %call3) #6
  %call79 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef %call78) #6
  %trig = getelementptr inbounds %struct.dln2_adc, ptr %3, i32 0, i32 4
  %54 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call79, ptr %trig, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %do.end85, label %if.end86

do.end85:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end86:                                         ; preds = %for.end
  %driver_data.i.i228 = getelementptr inbounds %struct.iio_trigger, ptr %call79, i32 0, i32 4, i32 8
  %55 = ptrtoint ptr %driver_data.i.i228 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %3, ptr %driver_data.i.i228, align 4
  %56 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trig, align 4
  %call89 = call i32 @__devm_iio_trigger_register(ptr noundef %dev1, ptr noundef %57, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end95, label %do.end94

do.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call89) #9
  br label %cleanup

if.end95:                                         ; preds = %if.end86
  %58 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trig, align 4
  %call97 = call i32 @iio_trigger_set_immutable(ptr noundef nonnull %call3, ptr noundef %59) #6
  %call98 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev1, ptr noundef nonnull %call3, ptr noundef null, ptr noundef nonnull @dln2_adc_trigger_h, i32 noundef 0, ptr noundef nonnull @dln2_adc_buffer_setup_ops, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end104, label %do.end103

do.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call98) #9
  br label %cleanup

if.end104:                                        ; preds = %if.end95
  %call105 = call i32 @dln2_register_event_cb(ptr noundef %pdev, i16 noundef zeroext 1552, ptr noundef nonnull @dln2_adc_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end111, label %do.end110

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call105) #9
  br label %cleanup

if.end111:                                        ; preds = %if.end104
  %call112 = call i32 @__iio_device_register(ptr noundef nonnull %call3, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.cleanup_crit_edge, label %do.end117

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call112) #9
  call void @dln2_unregister_event_cb(ptr noundef %pdev, i16 noundef zeroext 1552) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %if.end111.cleanup_crit_edge, %do.end110, %do.end103, %do.end94, %do.end85, %do.end23, %do.end15, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end15 ], [ %retval.0.i232, %do.end23 ], [ %call89, %do.end94 ], [ %call98, %do.end103 ], [ %call105, %do.end110 ], [ %call112, %do.end117 ], [ -12, %do.end85 ], [ -12, %do.end ], [ 0, %if.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #6
  tail call void @dln2_unregister_event_cb(ptr noundef %pdev, i16 noundef zeroext 1552) #6
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_set_immutable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_trigger_h(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %port.i = alloca i8, align 1
  %olen.i = alloca i32, align 4
  %data = alloca %struct.anon.46, align 8
  %dev_data = alloca %struct.dln2_adc_get_all_vals, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #6
  %2 = call ptr @memset(ptr %data, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %dev_data) #6
  %3 = getelementptr inbounds %struct.dln2_adc_get_all_vals, ptr %dev_data, i32 0, i32 1
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = call ptr @memset(ptr %dev_data, i32 255, i32 18)
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.dln2_adc, ptr %6, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port.i) #6
  %port1.i = getelementptr inbounds %struct.dln2_adc, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port1.i, align 4
  %conv.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %port.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #6
  %10 = ptrtoint ptr %olen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 18, ptr %olen.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %12, i16 noundef zeroext 1547, ptr noundef nonnull %port.i, i32 noundef 1, ptr noundef nonnull %dev_data, ptr noundef nonnull %olen.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_read_all.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_trigger_h, %if.then6.i)) #6
          to label %dln2_adc_read_all.exit [label %if.then6.i], !srcloc !124

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_read_all.__UNIQUE_ID_ddebug193, ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49) #6
  br label %dln2_adc_read_all.exit.thread

if.end8.i:                                        ; preds = %entry
  %15 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %16)
  %cmp9.i = icmp ult i32 %16, 18
  br i1 %cmp9.i, label %if.end8.i.dln2_adc_read_all.exit.thread_crit_edge, label %for.cond.preheader

if.end8.i.dln2_adc_read_all.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_read_all.exit.thread

dln2_adc_read_all.exit.thread:                    ; preds = %if.end8.i.dln2_adc_read_all.exit.thread_crit_edge, %if.then6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %done

dln2_adc_read_all.exit:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %done

for.cond.preheader:                               ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %demux_count = getelementptr inbounds %struct.dln2_adc, ptr %6, i32 0, i32 7
  %17 = ptrtoint ptr %demux_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %demux_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp433.not = icmp eq i32 %18, 0
  br i1 %cmp433.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dln2_adc, ptr %6, i32 0, i32 8, i32 %i.034
  %to = getelementptr %struct.dln2_adc, ptr %6, i32 0, i32 8, i32 %i.034, i32 1
  %19 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %to, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 %22
  %length = getelementptr %struct.dln2_adc, ptr %6, i32 0, i32 8, i32 %i.034, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  %25 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr7, i32 %24)
  %inc = add nuw i32 %i.034, 1
  %26 = ptrtoint ptr %demux_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %demux_count, align 4
  %cmp4 = icmp ult i32 %inc, %27
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ts_pad_length = getelementptr inbounds %struct.dln2_adc, ptr %6, i32 0, i32 10
  %28 = ptrtoint ptr %ts_pad_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ts_pad_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %for.end.if.end13_crit_edge, label %if.then8

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %ts_pad_offset = getelementptr inbounds %struct.dln2_adc, ptr %6, i32 0, i32 9
  %30 = ptrtoint ptr %ts_pad_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ts_pad_offset, align 4
  %add.ptr11 = getelementptr i8, ptr %data, i32 %31
  %32 = call ptr @memset(ptr %add.ptr11, i32 0, i32 %29)
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %for.end.if.end13_crit_edge
  %call14 = call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %scan_timestamp.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.end13.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end13.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %36, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call14, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end13.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i30 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %data) #6
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %dln2_adc_read_all.exit, %dln2_adc_read_all.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %39) #6
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %dev_data) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dln2_register_event_cb(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_adc_event(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %echo, ptr nocapture noundef readnone %data, i32 noundef %len) #2 align 64 {
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
  %trig = getelementptr inbounds %struct.dln2_adc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dln2_unregister_event_cb(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dln2_transfer(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
    i32 12, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mutex = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %call2 = tail call fastcc i32 @dln2_adc_read(ptr noundef %1, i32 noundef %4)
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3222656, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %sample_period = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %sample_period to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sample_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 1000000000, %9
  %div.frozen = freeze i32 %div
  %div11 = udiv i32 %div.frozen, 1000000
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div11, ptr %val, align 4
  %11 = mul i32 %div11, 1000000
  %rem.decomposed = sub i32 %div.frozen, %11
  br label %if.end12

if.else:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %val, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %storemerge = phi i32 [ 0, %if.else ], [ %rem.decomposed, %if.then9 ]
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.bb7, %if.end6, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end12 ], [ 3, %sw.bb7 ], [ 1, %if.end6 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %set_cfg.i = alloca %struct.anon.45, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond12 = icmp eq i32 %mask, 12
  br i1 %cond12, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mul = mul i32 %val, 1000000
  %add = add i32 %mul, %val2
  %mutex = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %sample_period24 = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 6
  br label %if.then

cond.end:                                         ; preds = %sw.bb
  %div = udiv i32 1000000000, %add
  %sample_period = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sample_period to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %sample_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15259, i32 %add)
  %cmp = icmp ult i32 %add, 15259
  br i1 %cmp, label %cond.end.if.then_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %cond.end.thread
  %sample_period26 = phi ptr [ %sample_period24, %cond.end.thread ], [ %sample_period, %cond.end.if.then_crit_edge ]
  %3 = ptrtoint ptr %sample_period26 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65535, ptr %sample_period26, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %sample_period27 = phi ptr [ %sample_period26, %if.then ], [ %sample_period, %cond.end.if.end_crit_edge ]
  %trigger_chan = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %trigger_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trigger_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp3.not = icmp eq i32 %7, -1
  br i1 %cmp3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %sample_period27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sample_period27, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %set_cfg.i) #6
  %10 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %set_cfg.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 4
  %port1.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port1.i, align 4
  %conv.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %set_cfg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %set_cfg.i, align 1
  %conv2.i = trunc i32 %7 to i8
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2.i, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %conv3.i = select i1 %tobool.not.i, i8 0, i8 5
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.i, ptr %11, align 1
  %conv5.i = trunc i32 %9 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #6
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %12, align 1
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 0, ptr %13, align 1
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 0, ptr %14, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %25, i16 noundef zeroext 1548, ptr noundef nonnull %set_cfg.i, i32 noundef 9, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.then4.dln2_adc_set_chan_period.exit_crit_edge

if.then4.dln2_adc_set_chan_period.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_set_chan_period.exit

do.body.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_write_raw, %if.then11.i)) #6
          to label %dln2_adc_set_chan_period.exit [label %if.then11.i], !srcloc !124

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191, ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.44) #6
  br label %dln2_adc_set_chan_period.exit

dln2_adc_set_chan_period.exit:                    ; preds = %if.then11.i, %do.body.i, %if.then4.dln2_adc_set_chan_period.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %set_cfg.i) #6
  br label %if.end8

if.end8:                                          ; preds = %dln2_adc_set_chan_period.exit, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %dln2_adc_set_chan_period.exit ], [ 0, %if.end.if.end8_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %scan_mask) #2 align 64 {
entry:
  %port_chan.i31 = alloca %struct.dln2_adc_port_chan, align 1
  %port_chan.i = alloca %struct.dln2_adc_port_chan, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  %sub = add i32 %3, -1
  %mutex = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp44 = icmp sgt i32 %sub, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.for.end11_crit_edge

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %4 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %port_chan.i, i32 0, i32 1
  %port1.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc9.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.inc9.for.body_crit_edge ]
  %div3.i = lshr i32 %i.045, 5
  %arrayidx.i = getelementptr i32, ptr %scan_mask, i32 %div3.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.045, 31
  %7 = shl nuw i32 1, %and.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_chan.i) #6
  %9 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port1.i, align 4
  %conv.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %port_chan.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %port_chan.i, align 1
  %conv2.i = trunc i32 %i.045 to i8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2.i, ptr %4, align 1
  %conv4.i = select i1 %tobool.not, i16 1542, i16 1541
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %14, i16 noundef zeroext %conv4.i, ptr noundef nonnull %port_chan.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %for.inc9

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_update_scan_mode, %if.then11.i)) #6
          to label %dln2_adc_set_chan_enabled.exit [label %if.then11.i], !srcloc !124

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39) #6
  br label %dln2_adc_set_chan_enabled.exit

dln2_adc_set_chan_enabled.exit:                   ; preds = %if.then11.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.045)
  %cmp546.not = icmp eq i32 %i.045, 0
  br i1 %cmp546.not, label %dln2_adc_set_chan_enabled.exit.for.end_crit_edge, label %for.body6.lr.ph

dln2_adc_set_chan_enabled.exit.for.end_crit_edge: ; preds = %dln2_adc_set_chan_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body6.lr.ph:                                  ; preds = %dln2_adc_set_chan_enabled.exit
  %17 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %port_chan.i31, i32 0, i32 1
  br label %for.body6

for.body6:                                        ; preds = %dln2_adc_set_chan_enabled.exit40.for.body6_crit_edge, %for.body6.lr.ph
  %j.047 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %dln2_adc_set_chan_enabled.exit40.for.body6_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_chan.i31) #6
  %18 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port1.i, align 4
  %conv.i33 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %port_chan.i31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i33, ptr %port_chan.i31, align 1
  %conv2.i34 = trunc i32 %j.047 to i8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv2.i34, ptr %17, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i.i35 = call i32 @dln2_transfer(ptr noundef %23, i16 noundef zeroext 1542, ptr noundef nonnull %port_chan.i31, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i36 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp.i36, label %do.body.i37, label %for.body6.dln2_adc_set_chan_enabled.exit40_crit_edge

for.body6.dln2_adc_set_chan_enabled.exit40_crit_edge: ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_set_chan_enabled.exit40

do.body.i37:                                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_update_scan_mode, %if.then11.i39)) #6
          to label %dln2_adc_set_chan_enabled.exit40 [label %if.then11.i39], !srcloc !124

if.then11.i39:                                    ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev.i38 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, ptr noundef %dev.i38, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39) #6
  br label %dln2_adc_set_chan_enabled.exit40

dln2_adc_set_chan_enabled.exit40:                 ; preds = %if.then11.i39, %do.body.i37, %for.body6.dln2_adc_set_chan_enabled.exit40_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i31) #6
  %inc = add nuw nsw i32 %j.047, 1
  %exitcond50.not = icmp eq i32 %inc, %i.045
  br i1 %exitcond50.not, label %dln2_adc_set_chan_enabled.exit40.for.end_crit_edge, label %dln2_adc_set_chan_enabled.exit40.for.body6_crit_edge

dln2_adc_set_chan_enabled.exit40.for.body6_crit_edge: ; preds = %dln2_adc_set_chan_enabled.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

dln2_adc_set_chan_enabled.exit40.for.end_crit_edge: ; preds = %dln2_adc_set_chan_enabled.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %dln2_adc_set_chan_enabled.exit40.for.end_crit_edge, %dln2_adc_set_chan_enabled.exit.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %i.045) #9
  br label %cleanup

for.inc9:                                         ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  %inc10 = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc10, %sub
  br i1 %exitcond.not, label %for.inc9.for.end11_crit_edge, label %for.inc9.for.body_crit_edge

for.inc9.for.body_crit_edge:                      ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc9.for.end11_crit_edge:                     ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end11

for.end11:                                        ; preds = %for.inc9.for.end11_crit_edge, %entry.for.end11_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i, align 4
  %demux_count.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %demux_count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %demux_count.i, align 4
  %masklength.i = getelementptr inbounds %struct.iio_dev, ptr %31, i32 0, i32 7
  %33 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %masklength.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %for.end11.if.end.i_crit_edge, label %land.lhs.true.i

for.end11.if.end.i_crit_edge:                     ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end11
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %31, i32 0, i32 8
  %35 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %active_scan_mask.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and.i41 = and i32 %38, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i41)
  %cmp.i42 = icmp eq i32 %and.i41, 255
  br i1 %cmp.i42, label %dln2_adc_add_demux.exit.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

dln2_adc_add_demux.exit.i:                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %demux_count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %demux_count.i, align 4
  %arrayidx15.i.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 0
  %40 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx15.i.i, align 4
  %to17.i.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 0, i32 1
  %41 = ptrtoint ptr %to17.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %to17.i.i, align 4
  %length18.i.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 0, i32 2
  %42 = ptrtoint ptr %length18.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %length18.i.i, align 4
  %ts_pad_offset.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %ts_pad_offset.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ts_pad_offset.i, align 4
  br label %dln2_adc_update_demux.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.end11.if.end.i_crit_edge
  %active_scan_mask1.i = getelementptr inbounds %struct.iio_dev, ptr %31, i32 0, i32 8
  %44 = ptrtoint ptr %active_scan_mask1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %active_scan_mask1.i, align 4
  %call3.i = call i32 @_find_next_bit_be(ptr noundef %45, i32 noundef %34, i32 noundef 0) #6
  %46 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %masklength.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %47)
  %cmp585.i = icmp uge i32 %call3.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i)
  %cmp686.i = icmp eq i32 %call3.i, 8
  %or.cond87.i = or i1 %cmp686.i, %cmp585.i
  br i1 %or.cond87.i, label %if.end.i.for.end20.i_crit_edge, label %if.end.i.for.cond9.preheader.i_crit_edge

if.end.i.for.cond9.preheader.i_crit_edge:         ; preds = %if.end.i
  br label %for.cond9.preheader.i

if.end.i.for.end20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end20.i

for.cond9.preheader.i:                            ; preds = %dln2_adc_add_demux.exit84.i.for.cond9.preheader.i_crit_edge, %if.end.i.for.cond9.preheader.i_crit_edge
  %in_ind.093.i = phi i32 [ %out_ind.088.i, %dln2_adc_add_demux.exit84.i.for.cond9.preheader.i_crit_edge ], [ -1, %if.end.i.for.cond9.preheader.i_crit_edge ]
  %out_loc.090.i = phi i32 [ %add13.i, %dln2_adc_add_demux.exit84.i.for.cond9.preheader.i_crit_edge ], [ 0, %if.end.i.for.cond9.preheader.i_crit_edge ]
  %in_loc.089.i = phi i32 [ %add14.i, %dln2_adc_add_demux.exit84.i.for.cond9.preheader.i_crit_edge ], [ 0, %if.end.i.for.cond9.preheader.i_crit_edge ]
  %out_ind.088.i = phi i32 [ %call19.i, %dln2_adc_add_demux.exit84.i.for.cond9.preheader.i_crit_edge ], [ %call3.i, %if.end.i.for.cond9.preheader.i_crit_edge ]
  %reass.add = sub i32 %out_ind.088.i, %in_ind.093.i
  %reass.mul = shl i32 %reass.add, 1
  %48 = add i32 %in_loc.089.i, -2
  %49 = add i32 %48, %reass.mul
  %50 = ptrtoint ptr %demux_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %demux_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i62.i = icmp eq i32 %51, 0
  %sub.i63.i = add i32 %51, -1
  %arrayidx.i64.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 %sub.i63.i
  %tobool2.not37.i65.i = icmp eq ptr %arrayidx.i64.i, null
  %tobool2.not.i66.i = select i1 %tobool.not.i62.i, i1 true, i1 %tobool2.not37.i65.i
  br i1 %tobool2.not.i66.i, label %for.cond9.preheader.i.if.else.i78.i_crit_edge, label %land.lhs.true.i70.i

for.cond9.preheader.i.if.else.i78.i_crit_edge:    ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i78.i

land.lhs.true.i70.i:                              ; preds = %for.cond9.preheader.i
  %52 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i64.i, align 4
  %length3.i67.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 %sub.i63.i, i32 2
  %54 = ptrtoint ptr %length3.i67.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length3.i67.i, align 4
  %add.i68.i = add i32 %55, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i68.i, i32 %49)
  %cmp.i69.i = icmp eq i32 %add.i68.i, %49
  br i1 %cmp.i69.i, label %land.lhs.true4.i74.i, label %land.lhs.true.i70.i.if.else.i78.i_crit_edge

land.lhs.true.i70.i.if.else.i78.i_crit_edge:      ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i78.i

land.lhs.true4.i74.i:                             ; preds = %land.lhs.true.i70.i
  %to.i71.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 %sub.i63.i, i32 1
  %56 = ptrtoint ptr %to.i71.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %to.i71.i, align 4
  %add6.i72.i = add i32 %57, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i72.i, i32 %out_loc.090.i)
  %cmp7.i73.i = icmp eq i32 %add6.i72.i, %out_loc.090.i
  br i1 %cmp7.i73.i, label %if.then.i76.i, label %land.lhs.true4.i74.i.if.else.i78.i_crit_edge

land.lhs.true4.i74.i.if.else.i78.i_crit_edge:     ; preds = %land.lhs.true4.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i78.i

if.then.i76.i:                                    ; preds = %land.lhs.true4.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i75.i = add i32 %55, 2
  %58 = ptrtoint ptr %length3.i67.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add9.i75.i, ptr %length3.i67.i, align 4
  br label %dln2_adc_add_demux.exit84.i

if.else.i78.i:                                    ; preds = %land.lhs.true4.i74.i.if.else.i78.i_crit_edge, %land.lhs.true.i70.i.if.else.i78.i_crit_edge, %for.cond9.preheader.i.if.else.i78.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp11.i77.i = icmp ult i32 %51, 8
  br i1 %cmp11.i77.i, label %if.then12.i83.i, label %if.else.i78.i.dln2_adc_add_demux.exit84.i_crit_edge

if.else.i78.i.dln2_adc_add_demux.exit84.i_crit_edge: ; preds = %if.else.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_add_demux.exit84.i

if.then12.i83.i:                                  ; preds = %if.else.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i79.i = add nuw nsw i32 %51, 1
  %59 = ptrtoint ptr %demux_count.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %inc.i79.i, ptr %demux_count.i, align 4
  %arrayidx15.i80.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 %51
  %60 = ptrtoint ptr %arrayidx15.i80.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %49, ptr %arrayidx15.i80.i, align 4
  %to17.i81.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 %51, i32 1
  %61 = ptrtoint ptr %to17.i81.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %out_loc.090.i, ptr %to17.i81.i, align 4
  %length18.i82.i = getelementptr %struct.dln2_adc, ptr %1, i32 0, i32 8, i32 %51, i32 2
  %62 = ptrtoint ptr %length18.i82.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %length18.i82.i, align 4
  br label %dln2_adc_add_demux.exit84.i

dln2_adc_add_demux.exit84.i:                      ; preds = %if.then12.i83.i, %if.else.i78.i.dln2_adc_add_demux.exit84.i_crit_edge, %if.then.i76.i
  %add13.i = add i32 %out_loc.090.i, 2
  %add14.i = add i32 %in_loc.089.i, %reass.mul
  %63 = ptrtoint ptr %active_scan_mask1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %active_scan_mask1.i, align 4
  %65 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %masklength.i, align 8
  %add18.i = add nuw i32 %out_ind.088.i, 1
  %call19.i = call i32 @_find_next_bit_be(ptr noundef %64, i32 noundef %66, i32 noundef %add18.i) #6
  %67 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %masklength.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %68)
  %cmp5.i = icmp uge i32 %call19.i, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call19.i)
  %cmp6.i = icmp eq i32 %call19.i, 8
  %or.cond.i = or i1 %cmp6.i, %cmp5.i
  br i1 %or.cond.i, label %dln2_adc_add_demux.exit84.i.for.end20.i_crit_edge, label %dln2_adc_add_demux.exit84.i.for.cond9.preheader.i_crit_edge

dln2_adc_add_demux.exit84.i.for.cond9.preheader.i_crit_edge: ; preds = %dln2_adc_add_demux.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.preheader.i

dln2_adc_add_demux.exit84.i.for.end20.i_crit_edge: ; preds = %dln2_adc_add_demux.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end20.i

for.end20.i:                                      ; preds = %dln2_adc_add_demux.exit84.i.for.end20.i_crit_edge, %if.end.i.for.end20.i_crit_edge
  %out_loc.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end20.i_crit_edge ], [ %add13.i, %dln2_adc_add_demux.exit84.i.for.end20.i_crit_edge ]
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %31, i32 0, i32 9
  %69 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %scan_timestamp.i, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool21.not.i = icmp eq i8 %70, 0
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %31, i32 0, i32 4
  %71 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %scan_bytes.i, align 4
  %ts_pad_offset23.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 9
  %73 = ptrtoint ptr %ts_pad_offset23.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %out_loc.0.lcssa.i, ptr %ts_pad_offset23.i, align 4
  %74 = add i32 %72, -8
  %mul.i = and i32 %74, -8
  %sub24.i = sub i32 %mul.i, %out_loc.0.lcssa.i
  br label %dln2_adc_update_demux.exit

if.else.i:                                        ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %ts_pad_offset26.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 9
  %75 = ptrtoint ptr %ts_pad_offset26.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %ts_pad_offset26.i, align 4
  br label %dln2_adc_update_demux.exit

dln2_adc_update_demux.exit:                       ; preds = %if.else.i, %if.then22.i, %dln2_adc_add_demux.exit.i
  %sub24.sink.i = phi i32 [ %sub24.i, %if.then22.i ], [ 0, %if.else.i ], [ 0, %dln2_adc_add_demux.exit.i ]
  %ts_pad_length25.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 10
  %76 = ptrtoint ptr %ts_pad_length25.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub24.sink.i, ptr %ts_pad_length25.i, align 4
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %dln2_adc_update_demux.exit, %for.end
  %retval.0 = phi i32 [ -16, %for.end ], [ 0, %dln2_adc_update_demux.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dln2_adc_read(ptr nocapture noundef readonly %dln2, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  %port_chan.i78 = alloca %struct.dln2_adc_port_chan, align 1
  %port.i63 = alloca i8, align 1
  %conflict.i64 = alloca i16, align 2
  %olen.i65 = alloca i32, align 4
  %port.i = alloca i8, align 1
  %conflict.i = alloca i16, align 2
  %olen.i = alloca i32, align 4
  %port_chan.i = alloca %struct.dln2_adc_port_chan, align 1
  %value = alloca i16, align 2
  %olen = alloca i32, align 4
  %port_chan = alloca %struct.dln2_adc_port_chan, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value, align 2, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen) #6
  %1 = ptrtoint ptr %olen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %olen, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_chan) #6
  %2 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %port_chan, i32 0, i32 1
  %port1 = getelementptr inbounds %struct.dln2_adc, ptr %dln2, i32 0, i32 2
  %3 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port1, align 4
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %port_chan to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %port_chan, align 1
  %conv2 = trunc i32 %channel to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_chan.i) #6
  %7 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %port_chan.i, i32 0, i32 1
  %8 = ptrtoint ptr %port_chan.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %port_chan.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %7, align 1
  %10 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dln2, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %11, i16 noundef zeroext 1541, ptr noundef nonnull %port_chan.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_read, %dln2_adc_set_chan_enabled.exit.thread)) #6
          to label %dln2_adc_set_chan_enabled.exit [label %dln2_adc_set_chan_enabled.exit.thread], !srcloc !124

dln2_adc_set_chan_enabled.exit.thread:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dln2, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  br label %cleanup

dln2_adc_set_chan_enabled.exit:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port.i) #6
  %14 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port1, align 4
  %conv.i58 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i58, ptr %port.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %conflict.i) #6
  %17 = ptrtoint ptr %conflict.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %conflict.i, align 2, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #6
  %18 = ptrtoint ptr %olen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %olen.i, align 4
  %19 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dln2, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %20, i16 noundef zeroext 1538, ptr noundef nonnull %port.i, i32 noundef 1, ptr noundef nonnull %conflict.i, ptr noundef nonnull %olen.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i59 = icmp slt i32 %call.i, 0
  br i1 %cmp.i59, label %do.body.i60, label %if.end25.i

do.body.i60:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_read, %if.then12.i)) #6
          to label %do.end.i [label %if.then12.i], !srcloc !124

if.then12.i:                                      ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dln2, align 4
  %dev.i61 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, ptr noundef %dev.i61, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %do.body.i60
  %23 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp21.i = icmp ugt i32 %24, 1
  br i1 %cmp21.i, label %if.then7, label %do.end.i.if.then7.thread_crit_edge

do.end.i.if.then7.thread_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.thread

if.end25.i:                                       ; preds = %if.end
  %25 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp29.i = icmp ult i32 %26, 2
  br i1 %cmp29.i, label %if.end25.i.if.then7.thread_crit_edge, label %dln2_adc_set_port_enabled.exit

if.end25.i.if.then7.thread_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.thread

dln2_adc_set_port_enabled.exit:                   ; preds = %if.end25.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  %27 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dln2, align 4
  %call15 = call i32 @dln2_transfer(ptr noundef %28, i16 noundef zeroext 1546, ptr noundef nonnull %port_chan, i32 noundef 2, ptr noundef nonnull %value, ptr noundef nonnull %olen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %dln2_adc_set_port_enabled.exit.do.body19_crit_edge, label %if.end30

dln2_adc_set_port_enabled.exit.do.body19_crit_edge: ; preds = %dln2_adc_set_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

if.then7.thread:                                  ; preds = %if.end25.i.if.then7.thread_crit_edge, %do.end.i.if.then7.thread_crit_edge
  %retval.0.i62.ph.ph = phi i32 [ %call.i, %do.end.i.if.then7.thread_crit_edge ], [ -71, %if.end25.i.if.then7.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  br label %disable_chan

if.then7:                                         ; preds = %do.end.i
  %29 = ptrtoint ptr %conflict.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %conflict.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not = icmp eq i16 %30, 0
  br i1 %tobool.not, label %if.then7.disable_chan_crit_edge, label %do.end

if.then7.disable_chan_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_chan

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %31 = call i16 @llvm.bswap.i16(i16 %30) #6
  %32 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dln2, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %conv9 = zext i16 %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %conv9) #9
  br label %disable_chan

for.cond:                                         ; preds = %if.end30
  %34 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dln2, align 4
  %call15.1 = call i32 @dln2_transfer(ptr noundef %35, i16 noundef zeroext 1546, ptr noundef nonnull %port_chan, i32 noundef 2, ptr noundef nonnull %value, ptr noundef nonnull %olen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp16.1 = icmp slt i32 %call15.1, 0
  br i1 %cmp16.1, label %for.cond.do.body19_crit_edge, label %if.end30.1

for.cond.do.body19_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

if.end30.1:                                       ; preds = %for.cond
  %36 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %olen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp31.1 = icmp ult i32 %37, 2
  br i1 %cmp31.1, label %if.end30.1.disable_port_crit_edge, label %for.cond.1

if.end30.1.disable_port_crit_edge:                ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_port

for.cond.1:                                       ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %value, align 2
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %conv35 = zext i16 %40 to i32
  br label %disable_port

do.body19:                                        ; preds = %for.cond.do.body19_crit_edge, %dln2_adc_set_port_enabled.exit.do.body19_crit_edge
  %call15.lcssa = phi i32 [ %call15, %dln2_adc_set_port_enabled.exit.do.body19_crit_edge ], [ %call15.1, %for.cond.do.body19_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_read.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_read, %if.then24)) #6
          to label %disable_port [label %if.then24], !srcloc !124

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dln2, align 4
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_read.__UNIQUE_ID_ddebug192, ptr noundef %dev26, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38) #6
  br label %disable_port

if.end30:                                         ; preds = %dln2_adc_set_port_enabled.exit
  %43 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %olen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp31 = icmp ult i32 %44, 2
  br i1 %cmp31, label %if.end30.disable_port_crit_edge, label %for.cond

if.end30.disable_port_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_port

disable_port:                                     ; preds = %if.end30.disable_port_crit_edge, %if.then24, %do.body19, %for.cond.1, %if.end30.1.disable_port_crit_edge
  %ret.0 = phi i32 [ %call15.lcssa, %if.then24 ], [ %conv35, %for.cond.1 ], [ %call15.lcssa, %do.body19 ], [ -71, %if.end30.1.disable_port_crit_edge ], [ -71, %if.end30.disable_port_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port.i63) #6
  %45 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port1, align 4
  %conv.i67 = trunc i32 %46 to i8
  %47 = ptrtoint ptr %port.i63 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i67, ptr %port.i63, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %conflict.i64) #6
  %48 = ptrtoint ptr %conflict.i64 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %conflict.i64, align 2, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i65) #6
  %49 = ptrtoint ptr %olen.i65 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %olen.i65, align 4
  %50 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dln2, align 4
  %call.i68 = call i32 @dln2_transfer(ptr noundef %51, i16 noundef zeroext 1539, ptr noundef nonnull %port.i63, i32 noundef 1, ptr noundef nonnull %conflict.i64, ptr noundef nonnull %olen.i65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp.i69, label %do.body.i70, label %disable_port.dln2_adc_set_port_enabled.exit77_crit_edge

disable_port.dln2_adc_set_port_enabled.exit77_crit_edge: ; preds = %disable_port
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_set_port_enabled.exit77

do.body.i70:                                      ; preds = %disable_port
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_read, %if.then12.i72)) #6
          to label %dln2_adc_set_port_enabled.exit77 [label %if.then12.i72], !srcloc !124

if.then12.i72:                                    ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dln2, align 4
  %dev.i71 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, ptr noundef %dev.i71, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0) #6
  br label %dln2_adc_set_port_enabled.exit77

dln2_adc_set_port_enabled.exit77:                 ; preds = %if.then12.i72, %do.body.i70, %disable_port.dln2_adc_set_port_enabled.exit77_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i65) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i64) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i63) #6
  br label %disable_chan

disable_chan:                                     ; preds = %dln2_adc_set_port_enabled.exit77, %do.end, %if.then7.disable_chan_crit_edge, %if.then7.thread
  %ret.1 = phi i32 [ -16, %do.end ], [ %call.i, %if.then7.disable_chan_crit_edge ], [ %ret.0, %dln2_adc_set_port_enabled.exit77 ], [ %retval.0.i62.ph.ph, %if.then7.thread ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_chan.i78) #6
  %54 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %port_chan.i78, i32 0, i32 1
  %55 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port1, align 4
  %conv.i80 = trunc i32 %56 to i8
  %57 = ptrtoint ptr %port_chan.i78 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i80, ptr %port_chan.i78, align 1
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv2, ptr %54, align 1
  %59 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dln2, align 4
  %call.i.i82 = call i32 @dln2_transfer(ptr noundef %60, i16 noundef zeroext 1542, ptr noundef nonnull %port_chan.i78, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %cmp.i83 = icmp slt i32 %call.i.i82, 0
  br i1 %cmp.i83, label %do.body.i84, label %disable_chan.dln2_adc_set_chan_enabled.exit87_crit_edge

disable_chan.dln2_adc_set_chan_enabled.exit87_crit_edge: ; preds = %disable_chan
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_set_chan_enabled.exit87

do.body.i84:                                      ; preds = %disable_chan
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_read, %if.then11.i86)) #6
          to label %dln2_adc_set_chan_enabled.exit87 [label %if.then11.i86], !srcloc !124

if.then11.i86:                                    ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %dln2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dln2, align 4
  %dev.i85 = getelementptr inbounds %struct.platform_device, ptr %62, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, ptr noundef %dev.i85, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39) #6
  br label %dln2_adc_set_chan_enabled.exit87

dln2_adc_set_chan_enabled.exit87:                 ; preds = %if.then11.i86, %do.body.i84, %disable_chan.dln2_adc_set_chan_enabled.exit87_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan.i78) #6
  br label %cleanup

cleanup:                                          ; preds = %dln2_adc_set_chan_enabled.exit87, %dln2_adc_set_chan_enabled.exit, %dln2_adc_set_chan_enabled.exit.thread
  %retval.0 = phi i32 [ %ret.1, %dln2_adc_set_chan_enabled.exit87 ], [ %call.i.i, %dln2_adc_set_chan_enabled.exit ], [ %call.i.i, %dln2_adc_set_chan_enabled.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_chan) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_triggered_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  %set_cfg.i = alloca %struct.anon.45, align 1
  %port.i = alloca i8, align 1
  %conflict.i = alloca i16, align 2
  %olen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port.i) #6
  %port1.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port1.i, align 4
  %conv.i = trunc i32 %3 to i8
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %port.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %conflict.i) #6
  %5 = ptrtoint ptr %conflict.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %conflict.i, align 2, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #6
  %6 = ptrtoint ptr %olen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %olen.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %8, i16 noundef zeroext 1538, ptr noundef nonnull %port.i, i32 noundef 1, ptr noundef nonnull %conflict.i, ptr noundef nonnull %olen.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end25.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_triggered_buffer_postenable, %if.then12.i)) #6
          to label %do.end.i [label %if.then12.i], !srcloc !124

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %do.body.i
  %11 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp21.i = icmp ugt i32 %12, 1
  br i1 %cmp21.i, label %if.then23.i, label %do.end.i.if.then_crit_edge

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then23.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %conflict.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %conflict.i, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #6
  br label %if.then

if.end25.i:                                       ; preds = %entry
  %16 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp29.i = icmp ult i32 %17, 2
  br i1 %cmp29.i, label %if.end25.i.if.then_crit_edge, label %if.end15

if.end25.i.if.then_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.end25.i.if.then_crit_edge, %if.then23.i, %do.end.i.if.then_crit_edge
  %conflict.0.ph = phi i16 [ 0, %if.end25.i.if.then_crit_edge ], [ 0, %do.end.i.if.then_crit_edge ], [ %15, %if.then23.i ]
  %retval.0.i73.ph = phi i32 [ -71, %if.end25.i.if.then_crit_edge ], [ %call.i, %do.end.i.if.then_crit_edge ], [ %call.i, %if.then23.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_triggered_buffer_postenable, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !124

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug194, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.47) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conflict.0.ph)
  %tobool7.not = icmp eq i16 %conflict.0.ph, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %do.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %conv = zext i16 %conflict.0.ph to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.37, i32 noundef %conv) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end25.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %22 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %24 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %masklength, align 8
  %call16 = call i32 @_find_first_bit_be(ptr noundef %23, i32 noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16)
  %cmp17 = icmp ult i32 %call16, 8
  %trigger_chan20 = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 3
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %26 = ptrtoint ptr %trigger_chan20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call16, ptr %trigger_chan20, align 4
  %sample_period = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %sample_period to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sample_period, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %set_cfg.i) #6
  %29 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %set_cfg.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 3
  %33 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 4
  %34 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port1.i, align 4
  %conv.i75 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %set_cfg.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i75, ptr %set_cfg.i, align 1
  %conv2.i = trunc i32 %call16 to i8
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv2.i, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  %conv3.i = select i1 %tobool.not.i, i8 0, i8 5
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv3.i, ptr %30, align 1
  %conv5.i = trunc i32 %28 to i16
  %39 = call i16 @llvm.bswap.i16(i16 %conv5.i) #6
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %31, align 1
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 0, ptr %32, align 1
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 0, ptr %33, align 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %44, i16 noundef zeroext 1548, ptr noundef nonnull %set_cfg.i, i32 noundef 9, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i76 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i76, label %do.body.i77, label %dln2_adc_set_chan_period.exit.thread85

dln2_adc_set_chan_period.exit.thread85:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %set_cfg.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

do.body.i77:                                      ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_triggered_buffer_postenable, %dln2_adc_set_chan_period.exit.thread)) #6
          to label %dln2_adc_set_chan_period.exit [label %dln2_adc_set_chan_period.exit.thread], !srcloc !124

dln2_adc_set_chan_period.exit.thread:             ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev.i78 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191, ptr noundef %dev.i78, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.44) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %set_cfg.i) #6
  br label %do.body27

dln2_adc_set_chan_period.exit:                    ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %set_cfg.i) #6
  br label %do.body27

do.body27:                                        ; preds = %dln2_adc_set_chan_period.exit, %dln2_adc_set_chan_period.exit.thread
  call void @mutex_unlock(ptr noundef %mutex) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_triggered_buffer_postenable, %if.then39)) #6
          to label %cleanup [label %if.then39], !srcloc !124

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug195, ptr noundef %dev41, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.47) #6
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %trigger_chan20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %trigger_chan20, align 4
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then39, %do.body27, %dln2_adc_set_chan_period.exit.thread85, %do.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end11 ], [ %retval.0.i73.ph, %do.end.cleanup_crit_edge ], [ %call.i.i, %if.then39 ], [ 0, %if.else ], [ 0, %dln2_adc_set_chan_period.exit.thread85 ], [ %call.i.i, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_adc_triggered_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  %port.i = alloca i8, align 1
  %conflict.i = alloca i16, align 2
  %olen.i = alloca i32, align 4
  %set_cfg.i = alloca %struct.anon.45, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %trigger_chan = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trigger_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trigger_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %set_cfg.i) #6
  %4 = getelementptr inbounds %struct.dln2_adc_port_chan, ptr %set_cfg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.45, ptr %set_cfg.i, i32 0, i32 1
  %port1.i = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port1.i, align 4
  %conv.i = trunc i32 %7 to i8
  %8 = ptrtoint ptr %set_cfg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %set_cfg.i, align 1
  %conv2.i = trunc i32 %3 to i8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2.i, ptr %4, align 1
  %10 = call ptr @memset(ptr %5, i32 0, i32 7)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %12, i16 noundef zeroext 1548, ptr noundef nonnull %set_cfg.i, i32 noundef 9, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.then.dln2_adc_set_chan_period.exit_crit_edge

if.then.dln2_adc_set_chan_period.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_adc_set_chan_period.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_triggered_buffer_predisable, %if.then11.i)) #6
          to label %dln2_adc_set_chan_period.exit [label %if.then11.i], !srcloc !124

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191, ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.44) #6
  br label %dln2_adc_set_chan_period.exit

dln2_adc_set_chan_period.exit:                    ; preds = %if.then11.i, %do.body.i, %if.then.dln2_adc_set_chan_period.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %set_cfg.i) #6
  %15 = ptrtoint ptr %trigger_chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %trigger_chan, align 4
  br label %if.end

if.end:                                           ; preds = %dln2_adc_set_chan_period.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %port.i) #6
  %port1.i22 = getelementptr inbounds %struct.dln2_adc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %port1.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port1.i22, align 4
  %conv.i23 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i23, ptr %port.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %conflict.i) #6
  %19 = ptrtoint ptr %conflict.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %conflict.i, align 2, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #6
  %20 = ptrtoint ptr %olen.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %olen.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %22, i16 noundef zeroext 1539, ptr noundef nonnull %port.i, i32 noundef 1, ptr noundef nonnull %conflict.i, ptr noundef nonnull %olen.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i24 = icmp slt i32 %call.i, 0
  br i1 %cmp.i24, label %do.body.i25, label %dln2_adc_set_port_enabled.exit.thread28

dln2_adc_set_port_enabled.exit.thread28:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end13

do.body.i25:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_triggered_buffer_predisable, %dln2_adc_set_port_enabled.exit.thread)) #6
          to label %dln2_adc_set_port_enabled.exit [label %dln2_adc_set_port_enabled.exit.thread], !srcloc !124

dln2_adc_set_port_enabled.exit.thread:            ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %dev.i26 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, ptr noundef %dev.i26, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  br label %do.body

dln2_adc_set_port_enabled.exit:                   ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conflict.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %port.i) #6
  br label %do.body

do.body:                                          ; preds = %dln2_adc_set_port_enabled.exit, %dln2_adc_set_port_enabled.exit.thread
  call void @mutex_unlock(ptr noundef %mutex) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dln2_adc_triggered_buffer_predisable.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dln2_adc_triggered_buffer_predisable, %if.then11)) #6
          to label %if.end13 [label %if.then11], !srcloc !124

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dln2_adc_triggered_buffer_predisable.__UNIQUE_ID_ddebug196, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.48) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body, %dln2_adc_set_port_enabled.exit.thread28
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !74, !75, !76, !77, !79, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !96, !97, !98, !99, !101, !103, !104, !106, !107, !109, !111, !112, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_dln2_adc__197_709_dln2_adc_driver_init6, !1, !"__initcall__kmod_dln2_adc__197_709_dln2_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/dln2-adc.c", i32 709, i32 1}
!2 = !{ptr @__exitcall_dln2_adc_driver_exit, !1, !"__exitcall_dln2_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author198, !4, !"__UNIQUE_ID_author198", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/dln2-adc.c", i32 711, i32 1}
!5 = !{ptr @__UNIQUE_ID_description199, !6, !"__UNIQUE_ID_description199", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/dln2-adc.c", i32 712, i32 1}
!7 = !{ptr @__UNIQUE_ID_file200, !8, !"__UNIQUE_ID_file200", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/dln2-adc.c", i32 713, i32 1}
!9 = !{ptr @__UNIQUE_ID_license201, !8, !"__UNIQUE_ID_license201", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias202, !11, !"__UNIQUE_ID_alias202", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/dln2-adc.c", i32 714, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/dln2-adc.c", i32 704, i32 17}
!14 = !{ptr @dln2_adc_driver, !15, !"dln2_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/dln2-adc.c", i32 703, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/dln2-adc.c", i32 610, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dln2_adc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dln2_adc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @dln2_adc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/dln2-adc.c", i32 618, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/dln2-adc.c", i32 624, i32 3}
!29 = !{ptr @dln2_adc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dln2_adc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/dln2-adc.c", i32 630, i32 3}
!33 = !{ptr @dln2_adc_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dln2_adc_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/dln2-adc.c", i32 635, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dln2_adc_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @dln2_adc_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/dln2-adc.c", i32 650, i32 43}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/dln2-adc.c", i32 654, i32 3}
!44 = !{ptr @dln2_adc_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dln2_adc_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/dln2-adc.c", i32 660, i32 3}
!48 = !{ptr @dln2_adc_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dln2_adc_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/dln2-adc.c", i32 669, i32 3}
!52 = !{ptr @dln2_adc_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dln2_adc_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/dln2-adc.c", i32 676, i32 3}
!56 = !{ptr @dln2_adc_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dln2_adc_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/dln2-adc.c", i32 682, i32 3}
!60 = !{ptr @dln2_adc_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dln2_adc_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/dln2-adc.c", i32 174, i32 3}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dln2_adc_set_port_resolution.__UNIQUE_ID_ddebug188, !63, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/dln2-adc.c", i32 154, i32 3}
!69 = !{ptr @dln2_adc_get_chan_count.__UNIQUE_ID_ddebug187, !68, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!70 = !{ptr @dln2_adc_info, !71, !"dln2_adc_info", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/dln2-adc.c", i32 474, i32 30}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/dln2-adc.c", i32 266, i32 4}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dln2_adc_read._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dln2_adc_read._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dln2_adc_read.__UNIQUE_ID_ddebug192, !78, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/dln2-adc.c", i32 283, i32 4}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/dln2-adc.c", i32 191, i32 3}
!81 = !{ptr @dln2_adc_set_chan_enabled.__UNIQUE_ID_ddebug189, !80, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/dln2-adc.c", i32 211, i32 3}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dln2_adc_set_port_enabled.__UNIQUE_ID_ddebug190, !83, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/dln2-adc.c", i32 395, i32 4}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @dln2_adc_write_raw._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @dln2_adc_write_raw._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/dln2-adc.c", i32 243, i32 3}
!93 = !{ptr @dln2_adc_set_chan_period.__UNIQUE_ID_ddebug191, !92, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/dln2-adc.c", i32 437, i32 4}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @dln2_update_scan_mode._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @dln2_update_scan_mode._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @dln2_adc_buffer_setup_ops, !100, !"dln2_adc_buffer_setup_ops", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/dln2-adc.c", i32 585, i32 42}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/dln2-adc.c", i32 532, i32 3}
!103 = !{ptr @dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug194, !102, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!104 = !{ptr @dln2_adc_triggered_buffer_postenable._entry, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/dln2-adc.c", i32 534, i32 4}
!106 = !{ptr @dln2_adc_triggered_buffer_postenable._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @dln2_adc_triggered_buffer_postenable.__UNIQUE_ID_ddebug195, !108, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/dln2-adc.c", i32 551, i32 4}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/dln2-adc.c", i32 580, i32 3}
!111 = !{ptr @dln2_adc_triggered_buffer_predisable.__UNIQUE_ID_ddebug196, !110, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/dln2-adc.c", i32 312, i32 3}
!114 = !{ptr @dln2_adc_read_all.__UNIQUE_ID_ddebug193, !113, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i64 2148707371, i64 2148707376, i64 2148707389, i64 2148707433, i64 2148707467, i64 2148707488}
!125 = !{!"auto-init"}
!126 = !{i8 0, i8 2}
