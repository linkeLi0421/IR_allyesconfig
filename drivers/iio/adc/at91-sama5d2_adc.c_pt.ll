; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/at91-sama5d2_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/at91-sama5d2_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.at91_adc_trigger = type { ptr, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.at91_adc_platform = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.at91_adc_reg_layout = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.at91_adc_state = type { ptr, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, i32, %struct.at91_adc_soc_info, %struct.wait_queue_head, %struct.at91_adc_dma, %struct.at91_adc_touch, ptr, [4 x i8], [36 x i16], %struct.mutex }
%struct.at91_adc_soc_info = type { i32, i32, i32, ptr }
%struct.at91_adc_dma = type { ptr, ptr, i32, i32, i32, i32, i32, i64 }
%struct.at91_adc_touch = type { i16, i8, i16, i32, %struct.work_struct }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_at91_sama5d2_adc__296_2196_at91_adc_driver_init6 = internal global ptr @at91_adc_driver_init, section ".initcall6.init", align 4
@at91_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_adc_probe, ptr @at91_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_adc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_adc_driver_exit = internal global ptr @at91_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [76 x i8] c"at91_sama5d2_adc.author=Ludovic Desroches <ludovic.desroches@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [67 x i8] c"at91_sama5d2_adc.author=Eugen Hristev <eugen.hristev@microchip.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [52 x i8] c"at91_sama5d2_adc.description=Atmel AT91 SAMA5D2 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [55 x i8] c"at91_sama5d2_adc.file=drivers/iio/adc/at91-sama5d2_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [32 x i8] c"at91_sama5d2_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91-sama5d2_adc\00", [47 x i8] zeroinitializer }, align 32
@at91_adc_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_platform }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_platform }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@at91_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@at91_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @at91_adc_attribute_group, ptr @at91_adc_read_raw, ptr null, ptr null, ptr @at91_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_adc_update_scan_mode, ptr null, ptr @at91_adc_of_xlate, ptr @at91_adc_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel,min-sample-rate-hz\00", [39 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1958, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid or missing value for atmel,min-sample-rate-hz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_adc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/adc/at91-sama5d2_adc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr = internal global ptr @at91_adc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel,max-sample-rate-hz\00", [39 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1967, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid or missing value for atmel,max-sample-rate-hz\0A\00", [41 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.10 = internal global ptr @at91_adc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,startup-time-ms\00", [42 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1975, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid or missing value for atmel,startup-time-ms\0A\00", [44 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.14 = internal global ptr @at91_adc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel,trigger-edge-type\00", [40 x i8] zeroinitializer }, align 32
@at91_adc_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 1, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_sama5d2_adc\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"atmel,trigger-edge-type not specified, only software trigger available\0A\00", [56 x i8] zeroinitializer }, align 32
@at91_adc_trigger_list = internal constant { [4 x %struct.at91_adc_trigger], [32 x i8] } { [4 x %struct.at91_adc_trigger] [%struct.at91_adc_trigger { ptr @.str.72, i32 1, i32 1, i8 1 }, %struct.at91_adc_trigger { ptr @.str.73, i32 2, i32 2, i8 1 }, %struct.at91_adc_trigger { ptr @.str.74, i32 3, i32 3, i8 1 }, %struct.at91_adc_trigger { ptr @.str.75, i32 0, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid external trigger edge value\0A\00", [59 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.20 = internal global ptr @at91_adc_probe._entry.18, section ".printk_index", align 4
@at91_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&st->wq_data_available\00", [41 x i8] zeroinitializer }, align 32
@at91_adc_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@at91_adc_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&st->touch_st.workq)\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddana\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 2063, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot set DMA mask to 32-bit\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.32 = internal global ptr @at91_adc_probe._entry.29, section ".printk_index", align 4
@at91_adc_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 2071, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"setting up trigger as %s\0A\00", [38 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.35 = internal global ptr @at91_adc_probe._entry.33, section ".printk_index", align 4
@at91_adc_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 2074, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"version: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@at91_adc_probe._entry_ptr.38 = internal global ptr @at91_adc_probe._entry.36, section ".printk_index", align 4
@at91_adc_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @at91_adc_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@at91_adc_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_oversampling_ratio_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_oversampling_ratio_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.39, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 4 16\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"oversampling_ratio_available\00", [35 x i8] zeroinitializer }, align 32
@at91_adc_touch_pos.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_adc_touch_pos\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pos is 0\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_adc_touch_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 876, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scale is 0\0A\00", [20 x i8] zeroinitializer }, align 32
@at91_adc_touch_pos._entry_ptr = internal global ptr @at91_adc_touch_pos._entry, section ".printk_index", align 4
@at91_adc_setup_samp_freq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 1, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at91_adc_setup_samp_freq\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"freq: %u, startup: %u, prescal: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@at91_adc_set_watermark.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 1, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at91_adc_set_watermark\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"we need hw trigger for DMA\0A\00", [36 x i8] zeroinitializer }, align 32
@at91_adc_set_watermark.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.46, ptr @.str.4, ptr @.str.48, i8 1, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"new watermark is %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@at91_adc_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 1684, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get DMA channel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_adc_dma_init\00", [46 x i8] zeroinitializer }, align 32
@at91_adc_dma_init._entry_ptr = internal global ptr @at91_adc_dma_init._entry, section ".printk_index", align 4
@at91_adc_dma_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 1694, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't allocate coherent DMA area\0A\00", [62 x i8] zeroinitializer }, align 32
@at91_adc_dma_init._entry_ptr.54 = internal global ptr @at91_adc_dma_init._entry.52, section ".printk_index", align 4
@at91_adc_dma_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 1707, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't configure DMA slave\0A\00", [37 x i8] zeroinitializer }, align 32
@at91_adc_dma_init._entry_ptr.57 = internal global ptr @at91_adc_dma_init._entry.55, section ".printk_index", align 4
@at91_adc_dma_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.4, i32 1712, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using %s for rx DMA transfers\0A\00", [33 x i8] zeroinitializer }, align 32
@at91_adc_dma_init._entry_ptr.60 = internal global ptr @at91_adc_dma_init._entry.58, section ".printk_index", align 4
@at91_adc_dma_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.4, i32 1723, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"continuing without DMA support\0A\00", [32 x i8] zeroinitializer }, align 32
@at91_adc_dma_init._entry_ptr.63 = internal global ptr @at91_adc_dma_init._entry.61, section ".printk_index", align 4
@at91_adc_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 1126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"buffer prepare failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"at91_adc_buffer_prepare\00", [40 x i8] zeroinitializer }, align 32
@at91_adc_buffer_prepare._entry_ptr = internal global ptr @at91_adc_buffer_prepare._entry, section ".printk_index", align 4
@at91_adc_dma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 1060, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot prepare DMA cyclic\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_adc_dma_start\00", [45 x i8] zeroinitializer }, align 32
@at91_adc_dma_start._entry_ptr = internal global ptr @at91_adc_dma_start._entry, section ".printk_index", align 4
@at91_adc_dma_start._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 1070, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot submit DMA cyclic\0A\00", [38 x i8] zeroinitializer }, align 32
@at91_adc_dma_start._entry_ptr.70 = internal global ptr @at91_adc_dma_start._entry.68, section ".printk_index", align 4
@at91_adc_dma_start.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.67, ptr @.str.4, ptr @.str.71, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA cyclic started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"external_rising\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"external_falling\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"external_any\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"software\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unexpected irq occurred\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@at91_adc_fifo_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_min, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_max, i64 4), ptr @iio_dev_attr_hwfifo_watermark, ptr @iio_dev_attr_hwfifo_enabled, ptr null], [44 x i8] zeroinitializer }, align 32
@at91_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr null, ptr null, ptr @at91_adc_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@at91_adc_buffer_and_trigger_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"couldn't initialize the buffer.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"at91_adc_buffer_and_trigger_init\00", [63 x i8] zeroinitializer }, align 32
@at91_adc_buffer_and_trigger_init._entry_ptr = internal global ptr @at91_adc_buffer_and_trigger_init._entry, section ".printk_index", align 4
@at91_adc_buffer_and_trigger_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 1908, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not allocate trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@at91_adc_buffer_and_trigger_init._entry_ptr.81 = internal global ptr @at91_adc_buffer_and_trigger_init._entry.79, section ".printk_index", align 4
@iio_const_attr_hwfifo_watermark_min = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.82, %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_hwfifo_watermark_max = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.84, %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_hwfifo_watermark = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @at91_adc_get_watermark, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_hwfifo_enabled = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @at91_adc_get_fifo_state, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwfifo_watermark_min\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwfifo_watermark_max\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hwfifo_watermark\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwfifo_enabled\00", [17 x i8] zeroinitializer }, align 32
@at91_adc_trigger_handler_dma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.89, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.at91_adc_trigger_handler_dma = private unnamed_addr constant [29 x i8] c"at91_adc_trigger_handler_dma\00", align 1
@at91_adc_trigger_handler_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.at91_adc_trigger_handler_dma, ptr @.str.4, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: conversion overrun detected\0A\00", [61 x i8] zeroinitializer }, align 32
@at91_adc_trigger_handler_dma._entry_ptr = internal global ptr @at91_adc_trigger_handler_dma._entry, section ".printk_index", align 4
@.str.91 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"This trigger cannot handle this type of channel\00", [48 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s-dev%d-%s\00", [20 x i8] zeroinitializer }, align 32
@at91_adc_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @at91_adc_configure_trigger, ptr @at91_adc_reenable_trigger, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@at91_adc_dma_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.94, ptr @.str.4, i32 1746, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at91_adc_dma_disable\00", [43 x i8] zeroinitializer }, align 32
@at91_adc_dma_disable._entry_ptr = internal global ptr @at91_adc_dma_disable._entry, section ".printk_index", align 4
@sama5d2_platform = internal constant { %struct.at91_adc_platform, [60 x i8] } { %struct.at91_adc_platform { ptr @sama5d2_layout, ptr @at91_sama5d2_adc_channels, i32 18, i32 24, i32 25, i32 26, i32 22, i32 26, i32 3 }, [60 x i8] zeroinitializer }, align 32
@sama7g5_platform = internal constant { %struct.at91_adc_platform, [60 x i8] } { %struct.at91_adc_platform { ptr @sama7g5_layout, ptr @at91_sama7g5_adc_channels, i32 24, i32 0, i32 0, i32 0, i32 25, i32 24, i32 3 }, [60 x i8] zeroinitializer }, align 32
@sama5d2_layout = internal constant { %struct.at91_adc_reg_layout, [56 x i8] } { %struct.at91_adc_reg_layout { i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 44, i16 48, i16 0, i16 0, i16 0, i16 0, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 16, i16 148, i16 176, i16 180, i16 184, i16 188, i16 192, i16 208, i16 212, i16 216, i16 228, i16 232, i16 252 }, [56 x i8] zeroinitializer }, align 32
@at91_sama5d2_adc_channels = internal constant { [22 x %struct.iio_chan_spec], [496 x i8] } { [22 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 80, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.95, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 84, i32 1, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.96, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 88, i32 2, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.97, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 92, i32 3, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.98, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 96, i32 4, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.99, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 100, i32 5, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.100, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 104, i32 6, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.101, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 108, i32 7, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.102, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 112, i32 8, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.103, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 116, i32 9, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.104, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 120, i32 10, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.105, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 124, i32 11, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.106, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 80, i32 12, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.107, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 88, i32 14, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.108, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 96, i32 16, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.109, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 104, i32 18, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.110, i8 80 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 112, i32 20, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.111, i8 80 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 120, i32 22, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.112, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 23, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 32, i32 24, i32 1, i32 0, i32 24, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.113, i8 -128 }, %struct.iio_chan_spec { i32 32, i32 25, i32 2, i32 0, i32 25, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.114, i8 -128 }, %struct.iio_chan_spec { i32 17, i32 26, i32 0, i32 0, i32 26, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.115, i8 0 }], [496 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH0\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH1\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH2\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH3\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH4\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH5\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH6\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH7\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH8\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH9\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CH10\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CH11\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CH0-CH1\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CH2-CH3\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CH4-CH5\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CH6-CH7\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CH8-CH9\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CH10-CH11\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pressure\00", [23 x i8] zeroinitializer }, align 32
@sama7g5_layout = internal constant { %struct.at91_adc_reg_layout, [56 x i8] } { %struct.at91_adc_reg_layout { i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 0, i16 0, i16 76, i16 80, i16 84, i16 0, i16 92, i16 0, i16 224, i16 0, i16 0, i16 0, i16 0, i16 256, i16 260, i16 264, i16 268, i16 280, i16 284, i16 304 }, [56 x i8] zeroinitializer }, align 32
@at91_sama7g5_adc_channels = internal constant { [25 x %struct.iio_chan_spec], [552 x i8] } { [25 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 96, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.95, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 100, i32 1, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.96, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 104, i32 2, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.97, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 108, i32 3, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.98, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 112, i32 4, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.99, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 116, i32 5, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.100, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 120, i32 6, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.101, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 124, i32 7, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.102, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 128, i32 8, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.103, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 132, i32 9, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.104, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 136, i32 10, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.105, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 140, i32 11, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.106, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 144, i32 12, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.116, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 148, i32 13, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.117, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 152, i32 14, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.118, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 156, i32 15, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.119, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 96, i32 16, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.107, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 104, i32 17, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.108, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 112, i32 18, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.109, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 120, i32 19, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.110, i8 80 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 128, i32 20, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.111, i8 80 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 136, i32 21, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.112, i8 80 }, %struct.iio_chan_spec { i32 0, i32 12, i32 13, i32 144, i32 22, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.120, i8 80 }, %struct.iio_chan_spec { i32 0, i32 14, i32 15, i32 152, i32 23, %struct.anon.84 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.121, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 24, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [552 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CH12\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CH13\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CH14\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CH15\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CH12-CH13\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CH14-CH15\00", [22 x i8] zeroinitializer }, align 32
@at91_adc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.4, i32 2168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to resume\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at91_adc_resume\00", [16 x i8] zeroinitializer }, align 32
@at91_adc_resume._entry_ptr = internal global ptr @at91_adc_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 12, i64 25]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 32]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 25]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 16]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 32]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 32]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 32]
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"at91_adc_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2187, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2191, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"at91_adc_dt_match\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2174, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"at91_adc_pm_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2172, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"at91_adc_info\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1874, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1954, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1957, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1963, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1966, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1971, i32 48 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1974, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1980, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1982, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [22 x i8] c"at91_adc_trigger_list\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 515, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1996, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2000, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2001, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2002, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2019, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2023, i32 43 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2027, i32 44 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2063, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2070, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2073, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [25 x i8] c"at91_adc_attribute_group\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1862, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"at91_adc_attributes\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1857, i32 26 }
@___asan_gen_.264 = private unnamed_addr constant [44 x i8] c"iio_const_attr_oversampling_ratio_available\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1852, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 870, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 876, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1397, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1758, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1762, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1682, i32 46 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1684, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1694, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1707, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1711, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1723, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1126, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1060, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1070, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1083, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 517, i32 11 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 523, i32 11 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 529, i32 11 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 535, i32 11 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1515, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [25 x i8] c"at91_adc_fifo_attributes\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1866, i32 32 }
@___asan_gen_.381 = private unnamed_addr constant [22 x i8] c"at91_buffer_setup_ops\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1202, i32 42 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1899, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1908, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [36 x i8] c"iio_const_attr_hwfifo_watermark_min\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [36 x i8] c"iio_const_attr_hwfifo_watermark_max\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_hwfifo_watermark\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_hwfifo_enabled\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1849, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1850, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1846, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1841, i32 35 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1844, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1295, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1276, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1169, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1212, i32 45 }
@___asan_gen_.453 = private unnamed_addr constant [21 x i8] c"at91_adc_trigger_ops\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 984, i32 37 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1746, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"sama5d2_platform\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 596, i32 39 }
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c"sama7g5_platform\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 617, i32 39 }
@___asan_gen_.468 = private unnamed_addr constant [15 x i8] c"sama5d2_layout\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 231, i32 41 }
@___asan_gen_.471 = private unnamed_addr constant [26 x i8] c"at91_sama5d2_adc_channels\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 542, i32 35 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 543, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 544, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 545, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 546, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 547, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 548, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 549, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 550, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 551, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 552, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 553, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 554, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 556, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 557, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 558, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 559, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 560, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 561, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 563, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 564, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 565, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [15 x i8] c"sama7g5_layout\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 266, i32 41 }
@___asan_gen_.540 = private unnamed_addr constant [26 x i8] c"at91_sama7g5_adc_channels\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 568, i32 35 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 581, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 582, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 583, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 584, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 591, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 592, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.568 = private constant [38 x i8] c"../drivers/iio/adc/at91-sama5d2_adc.c\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2168, i32 2 }
@llvm.compiler.used = appending global [173 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_at91_adc_driver_exit, ptr @__initcall__kmod_at91_sama5d2_adc__296_2196_at91_adc_driver_init6, ptr @at91_adc_buffer_and_trigger_init._entry, ptr @at91_adc_buffer_and_trigger_init._entry.79, ptr @at91_adc_buffer_and_trigger_init._entry_ptr, ptr @at91_adc_buffer_and_trigger_init._entry_ptr.81, ptr @at91_adc_buffer_prepare._entry, ptr @at91_adc_buffer_prepare._entry_ptr, ptr @at91_adc_dma_disable._entry, ptr @at91_adc_dma_disable._entry_ptr, ptr @at91_adc_dma_init._entry, ptr @at91_adc_dma_init._entry.52, ptr @at91_adc_dma_init._entry.55, ptr @at91_adc_dma_init._entry.58, ptr @at91_adc_dma_init._entry.61, ptr @at91_adc_dma_init._entry_ptr, ptr @at91_adc_dma_init._entry_ptr.54, ptr @at91_adc_dma_init._entry_ptr.57, ptr @at91_adc_dma_init._entry_ptr.60, ptr @at91_adc_dma_init._entry_ptr.63, ptr @at91_adc_dma_start._entry, ptr @at91_adc_dma_start._entry.68, ptr @at91_adc_dma_start._entry_ptr, ptr @at91_adc_dma_start._entry_ptr.70, ptr @at91_adc_driver_exit, ptr @at91_adc_probe._entry, ptr @at91_adc_probe._entry.12, ptr @at91_adc_probe._entry.18, ptr @at91_adc_probe._entry.29, ptr @at91_adc_probe._entry.33, ptr @at91_adc_probe._entry.36, ptr @at91_adc_probe._entry.8, ptr @at91_adc_probe._entry_ptr, ptr @at91_adc_probe._entry_ptr.10, ptr @at91_adc_probe._entry_ptr.14, ptr @at91_adc_probe._entry_ptr.20, ptr @at91_adc_probe._entry_ptr.32, ptr @at91_adc_probe._entry_ptr.35, ptr @at91_adc_probe._entry_ptr.38, ptr @at91_adc_resume._entry, ptr @at91_adc_resume._entry_ptr, ptr @at91_adc_touch_pos._entry, ptr @at91_adc_touch_pos._entry_ptr, ptr @at91_adc_trigger_handler_dma._entry, ptr @at91_adc_trigger_handler_dma._entry_ptr, ptr @at91_adc_driver, ptr @.str, ptr @at91_adc_dt_match, ptr @at91_adc_pm_ops, ptr @at91_adc_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @at91_adc_trigger_list, ptr @.str.19, ptr @at91_adc_probe.__key, ptr @.str.21, ptr @at91_adc_probe.__key.22, ptr @.str.23, ptr @at91_adc_probe.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @at91_adc_attribute_group, ptr @at91_adc_attributes, ptr @iio_const_attr_oversampling_ratio_available, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @at91_adc_fifo_attributes, ptr @at91_buffer_setup_ops, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @iio_const_attr_hwfifo_watermark_min, ptr @iio_const_attr_hwfifo_watermark_max, ptr @iio_dev_attr_hwfifo_watermark, ptr @iio_dev_attr_hwfifo_enabled, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @at91_adc_trigger_handler_dma._rs, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @at91_adc_trigger_ops, ptr @.str.94, ptr @sama5d2_platform, ptr @sama7g5_platform, ptr @sama5d2_layout, ptr @at91_sama5d2_adc_channels, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @sama7g5_layout, ptr @at91_sama7g5_adc_channels, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_trigger_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_oversampling_ratio_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_touch_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_start._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_fifo_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_buffer_and_trigger_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_buffer_and_trigger_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_hwfifo_watermark_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_hwfifo_watermark_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_watermark to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_enabled to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_trigger_handler_dma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_trigger_handler_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_dma_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_platform to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_platform to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_layout to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_sama5d2_adc_channels to i32), i32 1936, i32 2432, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama7g5_layout to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_sama7g5_adc_channels to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_adc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_adc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_adc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  %edge_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edge_type) #8
  %1 = ptrtoint ptr %edge_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %edge_type, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 392) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %indio_dev2 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %indio_dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %indio_dev2, align 8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %soc_info = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %platform, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i340 = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i340, ptr %name, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @at91_adc_info, ptr %info, align 8
  %13 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform, align 4
  %adc_channels = getelementptr inbounds %struct.at91_adc_platform, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %adc_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adc_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %channels, align 8
  %18 = load ptr, ptr %platform, align 4
  %max_channels = getelementptr inbounds %struct.at91_adc_platform, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_channels, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_channels, align 4
  %channels_bitmask = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 3
  %22 = load ptr, ptr %platform, align 4
  %touch_chan_x = getelementptr inbounds %struct.at91_adc_platform, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %touch_chan_x to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %touch_chan_x, align 4
  %rem.i.i = and i32 %24, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %24, 5
  %add.ptr.i.i = getelementptr i32, ptr %channels_bitmask, i32 %div2.i.i
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %26
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %touch_chan_y = getelementptr inbounds %struct.at91_adc_platform, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %touch_chan_y to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %touch_chan_y, align 4
  %rem.i.i330 = and i32 %28, 31
  %shl.i.i331 = shl nuw i32 1, %rem.i.i330
  %div2.i.i332 = lshr i32 %28, 5
  %add.ptr.i.i333 = getelementptr i32, ptr %channels_bitmask, i32 %div2.i.i332
  %29 = ptrtoint ptr %add.ptr.i.i333 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i333, align 4
  %or.i.i334 = or i32 %shl.i.i331, %30
  store i32 %or.i.i334, ptr %add.ptr.i.i333, align 4
  %touch_chan_p = getelementptr inbounds %struct.at91_adc_platform, ptr %22, i32 0, i32 5
  %31 = ptrtoint ptr %touch_chan_p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %touch_chan_p, align 4
  %rem.i.i335 = and i32 %32, 31
  %shl.i.i336 = shl nuw i32 1, %rem.i.i335
  %div2.i.i337 = lshr i32 %32, 5
  %add.ptr.i.i338 = getelementptr i32, ptr %channels_bitmask, i32 %div2.i.i337
  %33 = ptrtoint ptr %add.ptr.i.i338 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i338, align 4
  %or.i.i339 = or i32 %shl.i.i336, %34
  store i32 %or.i.i339, ptr %add.ptr.i.i338, align 4
  %oversampling_ratio = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 12
  %35 = ptrtoint ptr %oversampling_ratio to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %oversampling_ratio, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %min_sample_rate = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef %min_sample_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %if.end27, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end27:                                         ; preds = %dev_name.exit
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %max_sample_rate = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 2
  %call.i.i341 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.7, ptr noundef %max_sample_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i341)
  %tobool32.not = icmp sgt i32 %call.i.i341, -1
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %call.i.i342 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.11, ptr noundef %soc_info, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i342)
  %tobool43.not = icmp sgt i32 %call.i.i342, -1
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call.i.i343 = call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.15, ptr noundef nonnull %edge_type, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i343)
  %tobool53.not = icmp sgt i32 %call.i.i343, -1
  br i1 %tobool53.not, label %if.end49.if.end65_crit_edge, label %do.body55

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.body55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_probe, %if.then60)) #8
          to label %if.end65 [label %if.then60], !srcloc !292

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %do.body55, %if.end49.if.end65_crit_edge
  %selected_trig = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %selected_trig to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %selected_trig, align 8
  %45 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform, align 4
  %hw_trig_cnt = getelementptr inbounds %struct.at91_adc_platform, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %hw_trig_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hw_trig_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp349.not = icmp eq i32 %48, -1
  br i1 %cmp349.not, label %if.end65.for.endthread-pre-split_crit_edge, label %for.body.lr.ph

if.end65.for.endthread-pre-split_crit_edge:       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.body.lr.ph:                                   ; preds = %if.end65
  %49 = ptrtoint ptr %edge_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %edge_type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0350 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %edge_type68 = getelementptr [4 x %struct.at91_adc_trigger], ptr @at91_adc_trigger_list, i32 0, i32 %i.0350, i32 2
  %51 = ptrtoint ptr %edge_type68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %edge_type68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp69 = icmp eq i32 %52, %50
  br i1 %cmp69, label %if.then70, label %for.inc

if.then70:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x %struct.at91_adc_trigger], ptr @at91_adc_trigger_list, i32 0, i32 %i.0350
  %53 = ptrtoint ptr %selected_trig to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx, ptr %selected_trig, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0350, 1
  %exitcond.not = icmp eq i32 %i.0350, %48
  br i1 %exitcond.not, label %for.inc.for.endthread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %if.end65.for.endthread-pre-split_crit_edge
  %54 = ptrtoint ptr %selected_trig to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load ptr, ptr %selected_trig, align 8
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then70
  %55 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %arrayidx, %if.then70 ]
  %tobool75.not = icmp eq ptr %55, null
  br i1 %tobool75.not, label %do.end79, label %do.body82

do.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

do.body82:                                        ; preds = %for.end
  %wq_data_available = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 14
  call void @__init_waitqueue_head(ptr noundef %wq_data_available, ptr noundef nonnull @.str.21, ptr noundef nonnull @at91_adc_probe.__key) #8
  %lock = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 20
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @at91_adc_probe.__key.22) #8
  %workq = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 4
  call void @__init_work(ptr noundef %workq, i32 noundef 0) #8
  %56 = ptrtoint ptr %workq to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -64, ptr %workq, align 4
  %lockdep_map = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @at91_adc_probe.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry96 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 4, i32 1
  %57 = ptrtoint ptr %entry96 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry96, ptr %entry96, align 4
  %prev.i = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 4, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry96, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 4, i32 2
  %59 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @at91_adc_workq_handler, ptr %func, align 4
  %call101 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #8
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call101, ptr %3, align 8
  %cmp.i = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then104, label %if.end107

if.then104:                                       ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %call101 to i32
  br label %cleanup

if.end107:                                        ; preds = %do.body82
  %62 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %res, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %phys_addr = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15, i32 3
  %66 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %phys_addr, align 4
  %call108 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 1
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call108, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call108)
  %cmp110 = icmp slt i32 %call108, 1
  br i1 %cmp110, label %if.then111, label %if.end118

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool113.not = icmp eq i32 %call108, 0
  br i1 %tobool113.not, label %if.then114, label %if.then111.if.end116_crit_edge

if.then111.if.end116_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then114:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -6, ptr %irq, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.then111.if.end116_crit_edge
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  br label %cleanup

if.end118:                                        ; preds = %if.end107
  %call120 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  %per_clk = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 2
  %71 = ptrtoint ptr %per_clk to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call120, ptr %per_clk, align 8
  %cmp.i344 = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i344, label %if.then123, label %if.end126

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %call120 to i32
  br label %cleanup

if.end126:                                        ; preds = %if.end118
  %call128 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #8
  %reg = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 3
  %73 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call128, ptr %reg, align 4
  %cmp.i345 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i345, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %call128 to i32
  br label %cleanup

if.end134:                                        ; preds = %if.end126
  %call136 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  %vref = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 4
  %75 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call136, ptr %vref, align 8
  %cmp.i346 = icmp ugt ptr %call136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %if.then139, label %if.end142

if.then139:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %call136 to i32
  br label %cleanup

if.end142:                                        ; preds = %if.end134
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %79 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %78, ptr noundef nonnull @at91_adc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %82, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool148.not = icmp eq i32 %call.i, 0
  br i1 %tobool148.not, label %if.end150, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end150:                                        ; preds = %if.end142
  %83 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg, align 4
  %call152 = call i32 @regulator_enable(ptr noundef %84) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end150.cleanup_crit_edge

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end155:                                        ; preds = %if.end150
  %85 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vref, align 8
  %call157 = call i32 @regulator_enable(ptr noundef %86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end155.reg_disable_crit_edge

if.end155.reg_disable_crit_edge:                  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_disable

if.end160:                                        ; preds = %if.end155
  %87 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vref, align 8
  %call162 = call i32 @regulator_get_voltage(ptr noundef %88) #8
  %vref_uv = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 5
  %89 = ptrtoint ptr %vref_uv to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call162, ptr %vref_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call162)
  %cmp164 = icmp slt i32 %call162, 1
  br i1 %cmp164, label %if.end160.vref_disable_crit_edge, label %if.end166

if.end160.vref_disable_crit_edge:                 ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %vref_disable

if.end166:                                        ; preds = %if.end160
  %90 = ptrtoint ptr %per_clk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %per_clk, align 8
  %call168 = call fastcc i32 @clk_prepare_enable(ptr noundef %91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end166.vref_disable_crit_edge

if.end166.vref_disable_crit_edge:                 ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %vref_disable

if.end171:                                        ; preds = %if.end166
  call fastcc void @at91_adc_hw_init(ptr noundef nonnull %call)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %92 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call173 = call fastcc i32 @at91_adc_buffer_and_trigger_init(ptr noundef %dev, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.end171.per_clk_disable_unprepare_crit_edge, label %if.end176

if.end171.per_clk_disable_unprepare_crit_edge:    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %per_clk_disable_unprepare

if.end176:                                        ; preds = %if.end171
  %dev177 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %call178 = call fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %dev177)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end176.if.end185_crit_edge, label %do.end183

if.end176.if.end185_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

do.end183:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %if.end185

if.end185:                                        ; preds = %do.end183, %if.end176.if.end185_crit_edge
  %call186 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %dma_disable, label %if.end189

if.end189:                                        ; preds = %if.end185
  %93 = ptrtoint ptr %selected_trig to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %selected_trig, align 8
  %hw_trig = getelementptr inbounds %struct.at91_adc_trigger, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %hw_trig to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %hw_trig, align 4, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool191.not = icmp eq i8 %96, 0
  br i1 %tobool191.not, label %if.end189.do.end202_crit_edge, label %do.end195

if.end189.do.end202_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end202

do.end195:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %98) #11
  br label %do.end202

do.end202:                                        ; preds = %do.end195, %if.end189.do.end202_crit_edge
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %3, align 8
  %101 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %platform, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %VERSION = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %104, i32 0, i32 35
  %105 = ptrtoint ptr %VERSION to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %VERSION, align 2
  %conv = zext i16 %106 to i32
  %add.ptr = getelementptr i8, ptr %100, i32 %conv
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !294
  %108 = call i32 @llvm.bswap.i32(i32 %107)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %108) #11
  br label %cleanup

dma_disable:                                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @at91_adc_dma_disable(ptr noundef %3)
  br label %per_clk_disable_unprepare

per_clk_disable_unprepare:                        ; preds = %dma_disable, %if.end171.per_clk_disable_unprepare_crit_edge
  %ret.0 = phi i32 [ %call173, %if.end171.per_clk_disable_unprepare_crit_edge ], [ %call186, %dma_disable ]
  %109 = ptrtoint ptr %per_clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %per_clk, align 8
  call void @clk_disable(ptr noundef %110) #8
  call void @clk_unprepare(ptr noundef %110) #8
  br label %vref_disable

vref_disable:                                     ; preds = %per_clk_disable_unprepare, %if.end166.vref_disable_crit_edge, %if.end160.vref_disable_crit_edge
  %ret.1 = phi i32 [ %call168, %if.end166.vref_disable_crit_edge ], [ %ret.0, %per_clk_disable_unprepare ], [ -22, %if.end160.vref_disable_crit_edge ]
  %111 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vref, align 8
  %call211 = call i32 @regulator_disable(ptr noundef %112) #8
  br label %reg_disable

reg_disable:                                      ; preds = %vref_disable, %if.end155.reg_disable_crit_edge
  %ret.2 = phi i32 [ %call157, %if.end155.reg_disable_crit_edge ], [ %ret.1, %vref_disable ]
  %113 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg, align 4
  %call213 = call i32 @regulator_disable(ptr noundef %114) #8
  br label %cleanup

cleanup:                                          ; preds = %reg_disable, %do.end202, %if.end150.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %if.then139, %if.then131, %if.then123, %if.end116, %if.then104, %do.end79, %do.end47, %do.end36, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i341, %do.end36 ], [ %call.i.i342, %do.end47 ], [ %61, %if.then104 ], [ %70, %if.end116 ], [ %72, %if.then123 ], [ %74, %if.then131 ], [ %76, %if.then139 ], [ %ret.2, %reg_disable ], [ 0, %do.end202 ], [ -22, %do.end79 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.end142.cleanup_crit_edge ], [ %call152, %if.end150.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edge_type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  tail call fastcc void @at91_adc_dma_disable(ptr noundef %3)
  %per_clk = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %per_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %per_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %vref = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref, align 8
  %call2 = tail call i32 @regulator_disable(ptr noundef %7) #8
  %reg = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %9) #8
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_adc_workq_handler(ptr noundef %workq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %indio_dev4 = getelementptr i8, ptr %workq, i32 44
  %0 = ptrtoint ptr %indio_dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indio_dev4, align 8
  %buffer = getelementptr i8, ptr %workq, i32 52
  %call = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %platform.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ISR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %ISR.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ISR.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !294
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %EOC_ISR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %EOC_ISR.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %EOC_ISR.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %entry.at91_adc_irq_status.exit_crit_edge, label %if.then.i

entry.at91_adc_irq_status.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_irq_status.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %conv10.i = zext i16 %17 to i32
  %add.ptr11.i = getelementptr i8, ptr %19, i32 %conv10.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !294
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  br label %at91_adc_irq_status.exit

at91_adc_irq_status.exit:                         ; preds = %if.then.i, %entry.at91_adc_irq_status.exit_crit_edge
  %storemerge.i = phi i32 [ %21, %if.then.i ], [ %11, %entry.at91_adc_irq_status.exit_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %IMR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %IMR.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %IMR.i, align 2
  %conv.i114 = zext i16 %29 to i32
  %add.ptr.i115 = getelementptr i8, ptr %23, i32 %conv.i114
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #8, !srcloc !294
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %EOC_IMR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %EOC_IMR.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %EOC_IMR.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i116 = icmp eq i16 %37, 0
  br i1 %tobool.not.i116, label %at91_adc_irq_status.exit.at91_adc_irq_mask.exit_crit_edge, label %if.then.i119

at91_adc_irq_status.exit.at91_adc_irq_mask.exit_crit_edge: ; preds = %at91_adc_irq_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_irq_mask.exit

if.then.i119:                                     ; preds = %at91_adc_irq_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %conv10.i117 = zext i16 %37 to i32
  %add.ptr11.i118 = getelementptr i8, ptr %39, i32 %conv10.i117
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i118) #8, !srcloc !294
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  br label %at91_adc_irq_mask.exit

at91_adc_irq_mask.exit:                           ; preds = %if.then.i119, %at91_adc_irq_status.exit.at91_adc_irq_mask.exit_crit_edge
  %storemerge.i120 = phi i32 [ %41, %if.then.i119 ], [ %31, %at91_adc_irq_status.exit.at91_adc_irq_mask.exit_crit_edge ]
  %and = and i32 %31, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %storemerge.i120, %storemerge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond142 = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond142, label %at91_adc_irq_mask.exit.cleanup_crit_edge, label %if.end

at91_adc_irq_mask.exit.cleanup_crit_edge:         ; preds = %at91_adc_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %at91_adc_irq_mask.exit
  %and3 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %44 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %platform.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %IDR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %IDR.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %IDR.i, align 2
  %conv.i122 = zext i16 %49 to i32
  %add.ptr.i123 = getelementptr i8, ptr %43, i32 %conv.i122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 32) #8, !srcloc !295
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %52 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platform.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %IER.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %IER.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %IER.i, align 2
  %conv5.i = zext i16 %57 to i32
  %add.ptr6.i = getelementptr i8, ptr %51, i32 %conv5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 28736) #8, !srcloc !295
  %touch_st.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16
  %58 = ptrtoint ptr %touch_st.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %touch_st.i, align 8
  %conv7.i = zext i16 %59 to i32
  %shl.i = shl nuw i32 %conv7.i, 16
  %or.i = or i32 %shl.i, 5
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %63 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %platform.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %TRGR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %66, i32 0, i32 29
  %67 = ptrtoint ptr %TRGR.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %TRGR.i, align 2
  %conv12.i = zext i16 %68 to i32
  %add.ptr13.i = getelementptr i8, ptr %62, i32 %conv12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %60) #8, !srcloc !295
  %touching.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 1
  %69 = ptrtoint ptr %touching.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %touching.i, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and6 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %platform.i124 = getelementptr inbounds %struct.at91_adc_state, ptr %71, i32 0, i32 13, i32 3
  %74 = ptrtoint ptr %platform.i124 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %platform.i124, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %TRGR.i125 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %77, i32 0, i32 29
  %78 = ptrtoint ptr %TRGR.i125 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %TRGR.i125, align 2
  %conv.i126 = zext i16 %79 to i32
  %add.ptr.i127 = getelementptr i8, ptr %73, i32 %conv.i126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 0) #8, !srcloc !295
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %71, align 8
  %82 = ptrtoint ptr %platform.i124 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %platform.i124, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %IDR.i128 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %IDR.i128 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %IDR.i128, align 2
  %conv5.i129 = zext i16 %87 to i32
  %add.ptr6.i130 = getelementptr i8, ptr %81, i32 %conv5.i129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i130, i32 28736) #8, !srcloc !295
  %touching.i131 = getelementptr inbounds %struct.at91_adc_state, ptr %71, i32 0, i32 16, i32 1
  %88 = ptrtoint ptr %touching.i131 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %touching.i131, align 2
  tail call fastcc void @at91_adc_touch_data_handler(ptr noundef %private) #8
  %89 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %71, align 8
  %91 = ptrtoint ptr %platform.i124 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %platform.i124, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %IER.i132 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %IER.i132 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %IER.i132, align 2
  %conv11.i = zext i16 %96 to i32
  %add.ptr12.i = getelementptr i8, ptr %90, i32 %conv11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 32) #8, !srcloc !295
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %97 = and i32 %11, -2140143616
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2140143616, i32 %97)
  %98 = icmp eq i32 %97, -2140143616
  br i1 %98, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @at91_adc_touch_data_handler(ptr noundef %private)
  br label %cleanup

if.else15:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool17.not = icmp sgt i32 %11, -1
  br i1 %tobool17.not, label %if.else38, label %if.then18

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  %101 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %platform.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %XPOSR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %104, i32 0, i32 26
  %105 = ptrtoint ptr %XPOSR to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %XPOSR, align 2
  %conv = zext i16 %106 to i32
  %add.ptr = getelementptr i8, ptr %100, i32 %conv
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !294
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  %110 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %platform.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %YPOSR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %YPOSR to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %YPOSR, align 2
  %conv25 = zext i16 %115 to i32
  %add.ptr26 = getelementptr i8, ptr %109, i32 %conv25
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #8, !srcloc !294
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 8
  %119 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %platform.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %PRESSR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %122, i32 0, i32 28
  %123 = ptrtoint ptr %PRESSR to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %PRESSR, align 2
  %conv34 = zext i16 %124 to i32
  %add.ptr35 = getelementptr i8, ptr %118, i32 %conv34
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #8, !srcloc !294
  br label %cleanup

if.else38:                                        ; preds = %if.else15
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 1
  %126 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %127, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then71, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.else38
  %and42 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %land.lhs.true48, label %if.then44

if.then44:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq_nosync(i32 noundef %irq) #8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 10
  %128 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %129) #8
  br label %cleanup

land.lhs.true48:                                  ; preds = %land.lhs.true41
  %dma_st = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  %130 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dma_st, align 8
  %tobool49.not = icmp eq ptr %131, null
  br i1 %tobool49.not, label %land.lhs.true48.cleanup_crit_edge, label %if.then50

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq_nosync(i32 noundef %irq) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1515, i32 noundef 9, ptr noundef nonnull @.str.76) #8
  br label %cleanup

if.then71:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 8
  %chan = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 9
  %134 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chan, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %address, align 4
  %add.ptr74 = getelementptr i8, ptr %133, i32 %137
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #8, !srcloc !294
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %conversion_value = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 11
  %140 = ptrtoint ptr %conversion_value to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %conversion_value, align 4
  %conversion_done = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %141 = ptrtoint ptr %conversion_done to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %conversion_done, align 8
  %wq_data_available = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wq_data_available, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.then50, %land.lhs.true48.cleanup_crit_edge, %if.then44, %if.then18, %if.then14, %if.then8, %if.then5, %at91_adc_irq_mask.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then18 ], [ 1, %if.then50 ], [ 1, %if.then71 ], [ 1, %if.then44 ], [ 1, %if.then14 ], [ 1, %if.then5 ], [ 1, %land.lhs.true48.cleanup_crit_edge ], [ 0, %at91_adc_irq_mask.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_adc_hw_init(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !295
  %10 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %EOC_IDR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %EOC_IDR to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %EOC_IDR, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %conv9 = zext i16 %15 to i32
  %add.ptr10 = getelementptr i8, ptr %17, i32 %conv9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1) #8, !srcloc !295
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %IDR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %IDR to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %IDR, align 2
  %conv15 = zext i16 %25 to i32
  %add.ptr16 = getelementptr i8, ptr %19, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -1) #8, !srcloc !295
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %MR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %MR to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %MR, align 2
  %conv21 = zext i16 %33 to i32
  %add.ptr22 = getelementptr i8, ptr %27, i32 %conv21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 32800) #8, !srcloc !295
  %min_sample_rate = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 1
  %34 = ptrtoint ptr %min_sample_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %min_sample_rate, align 4
  tail call fastcc void @at91_adc_setup_samp_freq(ptr noundef %indio_dev, i32 noundef %35)
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %38 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %EMR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %EMR.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %EMR.i, align 2
  %conv.i = zext i16 %43 to i32
  %add.ptr.i = getelementptr i8, ptr %37, i32 %conv.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !294
  %45 = and i32 %44, -4865
  %46 = or i32 %45, 4096
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %oversampling_ratio.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 12
  %48 = ptrtoint ptr %oversampling_ratio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %oversampling_ratio.i, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %if.end.at91_adc_config_emr.exit_crit_edge [
    i32 16, label %sw.bb4.i
    i32 4, label %sw.bb2.i
  ]

if.end.at91_adc_config_emr.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_config_emr.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or3.i = or i32 %47, 65536
  br label %at91_adc_config_emr.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or5.i = or i32 %47, 131072
  br label %at91_adc_config_emr.exit

at91_adc_config_emr.exit:                         ; preds = %sw.bb4.i, %sw.bb2.i, %if.end.at91_adc_config_emr.exit_crit_edge
  %emr.0.i = phi i32 [ %or5.i, %sw.bb4.i ], [ %or3.i, %sw.bb2.i ], [ %47, %if.end.at91_adc_config_emr.exit_crit_edge ]
  %51 = tail call i32 @llvm.bswap.i32(i32 %emr.0.i) #8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %54 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %platform, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %EMR10.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %EMR10.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %EMR10.i, align 2
  %conv11.i = zext i16 %59 to i32
  %add.ptr12.i = getelementptr i8, ptr %53, i32 %conv11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %51) #8, !srcloc !295
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_buffer_and_trigger_init(ptr noundef %dev, ptr noundef %indio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %selected_trig = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %selected_trig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %selected_trig, align 8
  %hw_trig = getelementptr inbounds %struct.at91_adc_trigger, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_trig to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_trig, align 4, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %.at91_adc_fifo_attributes = select i1 %tobool.not, ptr null, ptr @at91_adc_fifo_attributes
  %dev1 = getelementptr inbounds %struct.iio_dev, ptr %indio, i32 0, i32 2
  %call2 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev1, ptr noundef %indio, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @at91_adc_trigger_handler, i32 noundef 0, ptr noundef nonnull @at91_buffer_setup_ops, ptr noundef %.at91_adc_fifo_attributes) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %6 = ptrtoint ptr %selected_trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %selected_trig, align 8
  %hw_trig6 = getelementptr inbounds %struct.at91_adc_trigger, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hw_trig6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_trig6, align 4, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %name.i = getelementptr inbounds %struct.iio_dev, ptr %indio, i32 0, i32 15
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 8
  %call.i = tail call i32 @iio_device_id(ptr noundef %indio) #8
  %call1.i = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev1, ptr noundef nonnull @.str.93, ptr noundef %13, i32 noundef %call.i, ptr noundef %11) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %at91_adc_allocate_trigger.exit.thread, label %at91_adc_allocate_trigger.exit

at91_adc_allocate_trigger.exit.thread:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %trig35 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %trig35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %trig35, align 4
  br label %if.end20

at91_adc_allocate_trigger.exit:                   ; preds = %if.end9
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  %parent4.i = getelementptr inbounds %struct.iio_trigger, ptr %call1.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %parent4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %parent4.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call1.i, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %indio, ptr %driver_data.i.i.i, align 4
  %19 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at91_adc_trigger_ops, ptr %call1.i, align 8
  %call6.i = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev1, ptr noundef nonnull %call1.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  %20 = inttoptr i32 %call6.i to ptr
  %spec.select.i = select i1 %tobool7.not.i, ptr %call1.i, ptr %20
  %trig = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select.i, ptr %trig, align 4
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %at91_adc_allocate_trigger.exit.if.end20_crit_edge

at91_adc_allocate_trigger.exit.if.end20_crit_edge: ; preds = %at91_adc_allocate_trigger.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end17:                                         ; preds = %at91_adc_allocate_trigger.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #11
  %22 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trig, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end20:                                         ; preds = %at91_adc_allocate_trigger.exit.if.end20_crit_edge, %at91_adc_allocate_trigger.exit.thread
  %watermark = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 6
  %25 = ptrtoint ptr %watermark to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %watermark, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %24, %do.end17 ], [ 0, %if.end20 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.dma_set_mask_and_coherent.exit_crit_edge

entry.dma_set_mask_and_coherent.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %entry.dma_set_mask_and_coherent.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_adc_dma_disable(ptr nocapture noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_st = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 15
  %0 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_st, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform, align 4
  %nr_channels = getelementptr inbounds %struct.at91_adc_platform, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_channels, align 4
  %mul3 = shl i32 %5, 9
  %sub = add i32 %mul3, 4095
  %div26 = and i32 %sub, -4096
  %indio_dev = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 17
  %6 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %indio_dev, align 8
  %dev1 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.end.dmaengine_terminate_sync.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.end
  %call.i.i = tail call i32 %11(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.92, i32 noundef 1169) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 48
  %14 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %15, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef nonnull %1) #8
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.end.dmaengine_terminate_sync.exit_crit_edge
  %16 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_st, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev8 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev8, align 4
  %rx_buf = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf, align 4
  %rx_dma_buf = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dma_buf, align 8
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %div26, ptr noundef %23, i32 noundef %25, i32 noundef 0) #8
  %26 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_st, align 8
  tail call void @dma_release_channel(ptr noundef %27) #8
  %28 = ptrtoint ptr %dma_st to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dma_st, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.62) #11
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_terminate_sync.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %tmp_val.i = alloca i16, align 2
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 12, label %sw.bb3
    i32 25, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp_val.i) #8
  %3 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %tmp_val.i, align 2, !annotation !291
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %5, label %if.end21.i [
    i32 32, label %if.then.i
    i32 17, label %if.then10.i
  ]

if.then.i:                                        ; preds = %sw.bb
  %call1.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.at91_adc_read_info_raw.exit_crit_edge

if.then.i.at91_adc_read_info_raw.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_read_info_raw.exit

if.end.i:                                         ; preds = %if.then.i
  %lock.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel.i, align 4
  call fastcc void @at91_adc_read_position(ptr noundef %1, i32 noundef %8, ptr noundef nonnull %tmp_val.i) #8
  %9 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tmp_val.i, align 2
  %conv.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  %oversampling_ratio.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %oversampling_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oversampling_ratio.i.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %13, label %if.end.i.at91_adc_read_info_raw.exit_crit_edge [
    i32 1, label %if.end.i.if.end5.sink.split.i.i_crit_edge
    i32 4, label %if.then3.i.i
  ]

if.end.i.if.end5.sink.split.i.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i.i

if.end.i.at91_adc_read_info_raw.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_read_info_raw.exit

if.then3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i.i

if.end5.sink.split.i.i:                           ; preds = %if.then3.i.i, %if.end.i.if.end5.sink.split.i.i_crit_edge
  %.sink1.i.i = phi i32 [ 1, %if.then3.i.i ], [ 2, %if.end.i.if.end5.sink.split.i.i_crit_edge ]
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %shl4.i.i = shl i32 %16, %.sink1.i.i
  store i32 %shl4.i.i, ptr %val, align 4
  br label %at91_adc_read_info_raw.exit

if.then10.i:                                      ; preds = %sw.bb
  %call11.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then10.i.at91_adc_read_info_raw.exit_crit_edge

if.then10.i.at91_adc_read_info_raw.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_read_info_raw.exit

if.end14.i:                                       ; preds = %if.then10.i
  %lock15.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock15.i, i32 noundef 0) #8
  %channel16.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel16.i, align 4
  %19 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %tmp_val.i, align 2
  %touching.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %touching.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %touching.i.i, align 2, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.end14.i.at91_adc_read_pressure.exit.i_crit_edge, label %if.end.i.i

if.end14.i.at91_adc_read_pressure.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_read_pressure.exit.i

if.end.i.i:                                       ; preds = %if.end14.i
  %platform.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %22 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform.i.i, align 4
  %touch_chan_p.i.i = getelementptr inbounds %struct.at91_adc_platform, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %touch_chan_p.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %touch_chan_p.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %18)
  %cmp.i.i = icmp eq i32 %25, %18
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.at91_adc_read_pressure.exit.i_crit_edge

if.end.i.i.at91_adc_read_pressure.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_read_pressure.exit.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 4
  %PRESSR.i.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %PRESSR.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %PRESSR.i.i.i, align 2
  %conv.i.i.i = zext i16 %31 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %conv.i.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !294
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %and.i.i.i = and i32 %33, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then1.i.i.at91_adc_touch_pressure.exit.i.i_crit_edge, label %if.then.i.i.i

if.then1.i.i.at91_adc_touch_pressure.exit.i.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_touch_pressure.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i = lshr i32 %33, 16
  %and1.i.i.i = and i32 %shr.i.i.i, 4095
  %x_pos.i.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 2
  %34 = ptrtoint ptr %x_pos.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %x_pos.i.i.i, align 4
  %conv3.i.i.i = zext i16 %35 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv3.i.i.i, 1000
  %div18.i.i.i = lshr i32 %mul.i.i.i, 10
  %mul5.i.i.i = mul nuw nsw i32 %and1.i.i.i, 1000
  %div6.i.i.i = udiv i32 %mul5.i.i.i, %and.i.i.i
  %sub.i.i.i = add nsw i32 %div6.i.i.i, -1000
  %mul7.i.i.i = mul i32 %div18.i.i.i, %sub.i.i.i
  %div8.i.i.i = udiv i32 %mul7.i.i.i, 1000
  %36 = trunc i32 %div8.i.i.i to i16
  %phi.cast.i.i.i = xor i16 %36, -1
  br label %at91_adc_touch_pressure.exit.i.i

at91_adc_touch_pressure.exit.i.i:                 ; preds = %if.then.i.i.i, %if.then1.i.i.at91_adc_touch_pressure.exit.i.i_crit_edge
  %pres.0.i.i.i = phi i16 [ %phi.cast.i.i.i, %if.then.i.i.i ], [ 0, %if.then1.i.i.at91_adc_touch_pressure.exit.i.i_crit_edge ]
  %37 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %pres.0.i.i.i, ptr %tmp_val.i, align 2
  br label %at91_adc_read_pressure.exit.i

at91_adc_read_pressure.exit.i:                    ; preds = %at91_adc_touch_pressure.exit.i.i, %if.end.i.i.at91_adc_read_pressure.exit.i_crit_edge, %if.end14.i.at91_adc_read_pressure.exit.i_crit_edge
  %38 = ptrtoint ptr %tmp_val.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tmp_val.i, align 2
  %conv18.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv18.i, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock15.i) #8
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  %oversampling_ratio.i194.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %oversampling_ratio.i194.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %oversampling_ratio.i194.i, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %42, label %at91_adc_read_pressure.exit.i.at91_adc_read_info_raw.exit_crit_edge [
    i32 1, label %at91_adc_read_pressure.exit.i.if.end5.sink.split.i198.i_crit_edge
    i32 4, label %if.then3.i195.i
  ]

at91_adc_read_pressure.exit.i.if.end5.sink.split.i198.i_crit_edge: ; preds = %at91_adc_read_pressure.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i198.i

at91_adc_read_pressure.exit.i.at91_adc_read_info_raw.exit_crit_edge: ; preds = %at91_adc_read_pressure.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_read_info_raw.exit

if.then3.i195.i:                                  ; preds = %at91_adc_read_pressure.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i198.i

if.end5.sink.split.i198.i:                        ; preds = %if.then3.i195.i, %at91_adc_read_pressure.exit.i.if.end5.sink.split.i198.i_crit_edge
  %.sink1.i196.i = phi i32 [ 1, %if.then3.i195.i ], [ 2, %at91_adc_read_pressure.exit.i.if.end5.sink.split.i198.i_crit_edge ]
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %shl4.i197.i = shl i32 %45, %.sink1.i196.i
  store i32 %shl4.i197.i, ptr %val, align 4
  br label %at91_adc_read_info_raw.exit

if.end21.i:                                       ; preds = %sw.bb
  %call22.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.at91_adc_read_info_raw.exit_crit_edge

if.end21.i.at91_adc_read_info_raw.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_read_info_raw.exit

if.end25.i:                                       ; preds = %if.end21.i
  %lock26.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock26.i, i32 noundef 0) #8
  %chan27.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %chan27.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %chan, ptr %chan27.i, align 4
  %channel.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %47 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel.i.i, align 4
  %shl.i200.i = shl nuw i32 1, %48
  %channel2.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %49 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel2.i.i, align 4
  %shl1.i.i = shl nuw i32 1, %50
  %or.i.i = or i32 %shl1.i.i, %shl.i200.i
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %platform.i201.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %53 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %platform.i201.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %COR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %COR.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %COR.i.i, align 2
  %conv.i202.i = zext i16 %58 to i32
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %conv.i202.i
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !294
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %platform.i201.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %COR_diff_offset.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %COR_diff_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %COR_diff_offset.i.i, align 2
  %conv5.i.i = zext i16 %66 to i32
  %shl6.i.i = shl i32 %or.i.i, %conv5.i.i
  %differential.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %67 = ptrtoint ptr %differential.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i.i = load i8, ptr %differential.i.i, align 4
  %68 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i203.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i203.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %or7.i.i = or i32 %shl6.i.i, %60
  %69 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %COR12.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %64, i32 0, i32 22
  %72 = ptrtoint ptr %COR12.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %COR12.i.i, align 2
  %conv13.i.i = zext i16 %73 to i32
  %add.ptr14.i.i = getelementptr i8, ptr %71, i32 %conv13.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %69) #8, !srcloc !295
  br label %at91_adc_cor.exit.i

if.else.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i.i = xor i32 %shl6.i.i, -1
  %and.i.i = and i32 %60, %neg.i.i
  %74 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %COR19.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %64, i32 0, i32 22
  %77 = ptrtoint ptr %COR19.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %COR19.i.i, align 2
  %conv20.i.i = zext i16 %78 to i32
  %add.ptr21.i.i = getelementptr i8, ptr %76, i32 %conv20.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %74) #8, !srcloc !295
  br label %at91_adc_cor.exit.i

at91_adc_cor.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %79 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %channel.i.i, align 4
  %shl.i = shl nuw i32 1, %80
  %81 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %84 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %platform.i201.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %CHER.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %CHER.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %CHER.i, align 2
  %conv29.i = zext i16 %89 to i32
  %add.ptr.i = getelementptr i8, ptr %83, i32 %conv29.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %81) #8, !srcloc !295
  %90 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %channel.i.i, align 4
  %92 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %platform.i201.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %EOC_IDR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %EOC_IDR.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %EOC_IDR.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.not.i206.i = icmp eq i16 %97, 0
  %shl.i207.i = shl nuw i32 1, %91
  %98 = tail call i32 @llvm.bswap.i32(i32 %shl.i207.i) #8
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  br i1 %tobool.not.i206.i, label %if.then.i210.i, label %if.else.i211.i

if.then.i210.i:                                   ; preds = %at91_adc_cor.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %IER.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %95, i32 0, i32 8
  %101 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %IER.i.i, align 2
  %conv.i208.i = zext i16 %102 to i32
  %add.ptr.i209.i = getelementptr i8, ptr %100, i32 %conv.i208.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209.i, i32 %98) #8, !srcloc !295
  br label %at91_adc_eoc_ena.exit.i

if.else.i211.i:                                   ; preds = %at91_adc_cor.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %EOC_IER.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %95, i32 0, i32 12
  %103 = ptrtoint ptr %EOC_IER.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %EOC_IER.i.i, align 2
  %conv9.i.i = zext i16 %104 to i32
  %add.ptr10.i.i = getelementptr i8, ptr %100, i32 %conv9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %98) #8, !srcloc !295
  br label %at91_adc_eoc_ena.exit.i

at91_adc_eoc_ena.exit.i:                          ; preds = %if.else.i211.i, %if.then.i210.i
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 8
  %107 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %platform.i201.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %110, align 2
  %conv35.i = zext i16 %112 to i32
  %add.ptr36.i = getelementptr i8, ptr %106, i32 %conv35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 33554432) #8, !srcloc !295
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1581) #8
  %conversion_done.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 10
  %113 = ptrtoint ptr %conversion_done.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %conversion_done.i, align 8, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool41.not.i = icmp eq i8 %114, 0
  br i1 %tobool41.not.i, label %if.then51.i, label %at91_adc_eoc_ena.exit.i.if.then90.i_crit_edge

at91_adc_eoc_ena.exit.i.if.then90.i_crit_edge:    ; preds = %at91_adc_eoc_ena.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i

if.then51.i:                                      ; preds = %at91_adc_eoc_ena.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %115 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %wq_data_available.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 14
  %call54245.i = call i32 @prepare_to_wait_event(ptr noundef %wq_data_available.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %116 = ptrtoint ptr %conversion_done.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %conversion_done.i, align 8, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool57.not246.not.i = icmp eq i8 %117, 0
  br i1 %tobool57.not246.not.i, label %if.then51.i.if.end75.i_crit_edge, label %.thread.i

if.then51.i.if.end75.i_crit_edge:                 ; preds = %if.then51.i
  br label %if.end75.i

.thread.i:                                        ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wq_data_available.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.then90.i

if.end75.i:                                       ; preds = %cleanup.i.if.end75.i_crit_edge, %if.then51.i.if.end75.i_crit_edge
  %__ret52.1249.i = phi i32 [ %__ret52.1.i, %cleanup.i.if.end75.i_crit_edge ], [ 100, %if.then51.i.if.end75.i_crit_edge ]
  %call54248.i = phi i32 [ %call54.i, %cleanup.i.if.end75.i_crit_edge ], [ %call54245.i, %if.then51.i.if.end75.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54248.i)
  %tobool76.not.i = icmp eq i32 %call54248.i, 0
  br i1 %tobool76.not.i, label %cleanup.i, label %if.end82.thread236.i

if.end82.thread236.i:                             ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %121

cleanup.i:                                        ; preds = %if.end75.i
  %call79.i = call i32 @schedule_timeout(i32 noundef %__ret52.1249.i) #8
  %call54.i = call i32 @prepare_to_wait_event(ptr noundef %wq_data_available.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %118 = ptrtoint ptr %conversion_done.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %conversion_done.i, align 8, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool57.not.i = icmp eq i8 %119, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool62.not.i = icmp eq i32 %call79.i, 0
  %spec.store.select124.i = select i1 %tobool62.not.i, i32 1, i32 %call79.i
  %__ret52.1.i = select i1 %tobool57.not.i, i32 %call79.i, i32 %spec.store.select124.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret52.1.i)
  %tobool69.not.i = icmp eq i32 %__ret52.1.i, 0
  %not.tobool57.not.i = xor i1 %tobool57.not.i, true
  %120 = select i1 %not.tobool57.not.i, i1 true, i1 %tobool69.not.i
  br i1 %120, label %if.end82.i, label %cleanup.i.if.end75.i_crit_edge

cleanup.i.if.end75.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.end82.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wq_data_available.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br i1 %tobool69.not.i, label %if.end82.i.if.end101.i_crit_edge, label %if.end82.i._crit_edge

if.end82.i._crit_edge:                            ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %121

if.end82.i.if.end101.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

121:                                              ; preds = %if.end82.i._crit_edge, %if.end82.thread236.i
  %122 = phi i32 [ %__ret52.1.i, %if.end82.i._crit_edge ], [ %call54248.i, %if.end82.thread236.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp88.i = icmp sgt i32 %122, 0
  br i1 %cmp88.i, label %.if.then90.i_crit_edge, label %.if.end101.i_crit_edge

.if.end101.i_crit_edge:                           ; preds = %121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

.if.then90.i_crit_edge:                           ; preds = %121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i

if.then90.i:                                      ; preds = %.if.then90.i_crit_edge, %.thread.i, %at91_adc_eoc_ena.exit.i.if.then90.i_crit_edge
  %conversion_value.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 11
  %123 = ptrtoint ptr %conversion_value.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %conversion_value.i, align 4
  %125 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %val, align 4
  %oversampling_ratio.i213.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 12
  %126 = ptrtoint ptr %oversampling_ratio.i213.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %oversampling_ratio.i213.i, align 8
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %127, label %if.then90.i.at91_adc_adjust_val_osr.exit218.i_crit_edge [
    i32 1, label %if.then90.i.if.end5.sink.split.i217.i_crit_edge
    i32 4, label %if.then3.i214.i
  ]

if.then90.i.if.end5.sink.split.i217.i_crit_edge:  ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i217.i

if.then90.i.at91_adc_adjust_val_osr.exit218.i_crit_edge: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_adjust_val_osr.exit218.i

if.then3.i214.i:                                  ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i217.i

if.end5.sink.split.i217.i:                        ; preds = %if.then3.i214.i, %if.then90.i.if.end5.sink.split.i217.i_crit_edge
  %.sink1.i215.i = phi i32 [ 1, %if.then3.i214.i ], [ 2, %if.then90.i.if.end5.sink.split.i217.i_crit_edge ]
  %shl4.i216.i = shl i32 %124, %.sink1.i215.i
  %129 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %shl4.i216.i, ptr %val, align 4
  br label %at91_adc_adjust_val_osr.exit218.i

at91_adc_adjust_val_osr.exit218.i:                ; preds = %if.end5.sink.split.i217.i, %if.then90.i.at91_adc_adjust_val_osr.exit218.i_crit_edge
  %scan_type.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5
  %130 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %scan_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %131)
  %cmp93.i = icmp eq i8 %131, 115
  br i1 %cmp93.i, label %if.then95.i, label %at91_adc_adjust_val_osr.exit218.i.if.end99.i_crit_edge

at91_adc_adjust_val_osr.exit218.i.if.end99.i_crit_edge: ; preds = %at91_adc_adjust_val_osr.exit218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then95.i:                                      ; preds = %at91_adc_adjust_val_osr.exit218.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val, align 4
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %134 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %realbits.i, align 1
  %136 = sub i8 32, %135
  %conv1.i.i = zext i8 %136 to i32
  %shl.i.i = shl i32 %133, %conv1.i.i
  %shr.i.i = ashr i32 %shl.i.i, %conv1.i.i
  store i32 %shr.i.i, ptr %val, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then95.i, %at91_adc_adjust_val_osr.exit218.i.if.end99.i_crit_edge
  %137 = ptrtoint ptr %conversion_done.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %conversion_done.i, align 8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.end99.i, %.if.end101.i_crit_edge, %if.end82.i.if.end101.i_crit_edge
  %ret.0.i = phi i32 [ 1, %if.end99.i ], [ %122, %.if.end101.i_crit_edge ], [ -110, %if.end82.i.if.end101.i_crit_edge ]
  %138 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %platform.i201.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %EOC_IDR.i220.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %141, i32 0, i32 13
  %142 = ptrtoint ptr %EOC_IDR.i220.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %EOC_IDR.i220.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool.not.i221.i = icmp eq i16 %143, 0
  br i1 %tobool.not.i221.i, label %if.then.i225.i, label %if.end101.i.at91_adc_eoc_dis.exit.i_crit_edge

if.end101.i.at91_adc_eoc_dis.exit.i_crit_edge:    ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_eoc_dis.exit.i

if.then.i225.i:                                   ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %chan27.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %chan27.i, align 4
  %channel103.i = getelementptr inbounds %struct.iio_chan_spec, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %channel103.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %channel103.i, align 4
  %shl.i222.i = shl nuw i32 1, %147
  %148 = call i32 @llvm.bswap.i32(i32 %shl.i222.i) #8
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 8
  %IDR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %141, i32 0, i32 9
  %151 = ptrtoint ptr %IDR.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %IDR.i.i, align 2
  %conv.i223.i = zext i16 %152 to i32
  %add.ptr.i224.i = getelementptr i8, ptr %150, i32 %conv.i223.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224.i, i32 %148) #8, !srcloc !295
  br label %at91_adc_eoc_dis.exit.i

at91_adc_eoc_dis.exit.i:                          ; preds = %if.then.i225.i, %if.end101.i.at91_adc_eoc_dis.exit.i_crit_edge
  %153 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %channel.i.i, align 4
  %shl105.i = shl nuw i32 1, %154
  %155 = call i32 @llvm.bswap.i32(i32 %shl105.i) #8
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 8
  %158 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %platform.i201.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %CHDR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %161, i32 0, i32 5
  %162 = ptrtoint ptr %CHDR.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %CHDR.i, align 2
  %conv110.i = zext i16 %163 to i32
  %add.ptr111.i = getelementptr i8, ptr %157, i32 %conv110.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.i, i32 %155) #8, !srcloc !295
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 8
  %166 = ptrtoint ptr %platform.i201.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %platform.i201.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %LCDR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %169, i32 0, i32 7
  %170 = ptrtoint ptr %LCDR.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %LCDR.i, align 2
  %conv116.i = zext i16 %171 to i32
  %add.ptr117.i = getelementptr i8, ptr %165, i32 %conv116.i
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117.i) #8, !srcloc !294
  call void @mutex_unlock(ptr noundef %lock26.i) #8
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %at91_adc_read_info_raw.exit

at91_adc_read_info_raw.exit:                      ; preds = %at91_adc_eoc_dis.exit.i, %if.end21.i.at91_adc_read_info_raw.exit_crit_edge, %if.end5.sink.split.i198.i, %at91_adc_read_pressure.exit.i.at91_adc_read_info_raw.exit_crit_edge, %if.then10.i.at91_adc_read_info_raw.exit_crit_edge, %if.end5.sink.split.i.i, %if.end.i.at91_adc_read_info_raw.exit_crit_edge, %if.then.i.at91_adc_read_info_raw.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %at91_adc_eoc_dis.exit.i ], [ %call1.i, %if.then.i.at91_adc_read_info_raw.exit_crit_edge ], [ %call11.i, %if.then10.i.at91_adc_read_info_raw.exit_crit_edge ], [ %call22.i, %if.end21.i.at91_adc_read_info_raw.exit_crit_edge ], [ 1, %if.end.i.at91_adc_read_info_raw.exit_crit_edge ], [ 1, %if.end5.sink.split.i.i ], [ 1, %at91_adc_read_pressure.exit.i.at91_adc_read_info_raw.exit_crit_edge ], [ 1, %if.end5.sink.split.i198.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_val.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %vref_uv = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 5
  %173 = ptrtoint ptr %vref_uv to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %vref_uv, align 4
  %div = sdiv i32 %174, 1000
  %175 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %div, ptr %val, align 4
  %differential = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %176 = ptrtoint ptr %differential to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load = load i8, ptr %differential, align 4
  %177 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not = icmp eq i8 %177, 0
  br i1 %tobool.not, label %sw.bb2.if.end_crit_edge, label %if.then

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl nsw i32 %div, 1
  %178 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %mul, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2.if.end_crit_edge
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %179 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %realbits, align 1
  %conv = zext i8 %180 to i32
  %181 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_sample_rate.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 6
  %182 = ptrtoint ptr %current_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %current_sample_rate.i, align 8
  %184 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %oversampling_ratio = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 12
  %185 = ptrtoint ptr %oversampling_ratio to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %oversampling_ratio, align 8
  %187 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb3, %if.end, %at91_adc_read_info_raw.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb5 ], [ 1, %sw.bb3 ], [ 11, %if.end ], [ %retval.0.i, %at91_adc_read_info_raw.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 25, label %sw.bb
    i32 12, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %val, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.if.end_crit_edge
    i32 4, label %sw.bb.if.end_crit_edge26
    i32 16, label %sw.bb.if.end_crit_edge27
  ]

sw.bb.if.end_crit_edge27:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb.if.end_crit_edge26:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge26, %sw.bb.if.end_crit_edge27
  %oversampling_ratio = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %oversampling_ratio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oversampling_ratio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %val)
  %cmp4 = icmp eq i32 %5, %val
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %oversampling_ratio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %oversampling_ratio, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %platform.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %EMR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %EMR.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %EMR.i, align 2
  %conv.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !294
  %16 = and i32 %15, -4865
  %17 = or i32 %16, 4096
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = ptrtoint ptr %oversampling_ratio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oversampling_ratio, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %20, label %if.end6.at91_adc_config_emr.exit_crit_edge [
    i32 16, label %sw.bb4.i
    i32 4, label %sw.bb2.i
  ]

if.end6.at91_adc_config_emr.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_config_emr.exit

sw.bb2.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %or3.i = or i32 %18, 65536
  br label %at91_adc_config_emr.exit

sw.bb4.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %or5.i = or i32 %18, 131072
  br label %at91_adc_config_emr.exit

at91_adc_config_emr.exit:                         ; preds = %sw.bb4.i, %sw.bb2.i, %if.end6.at91_adc_config_emr.exit_crit_edge
  %emr.0.i = phi i32 [ %or5.i, %sw.bb4.i ], [ %or3.i, %sw.bb2.i ], [ %18, %if.end6.at91_adc_config_emr.exit_crit_edge ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %emr.0.i) #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %25 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %platform.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %EMR10.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %EMR10.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %EMR10.i, align 2
  %conv11.i = zext i16 %30 to i32
  %add.ptr12.i = getelementptr i8, ptr %24, i32 %conv11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %22) #8, !srcloc !295
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %min_sample_rate = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %min_sample_rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_sample_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %val)
  %cmp9 = icmp ugt i32 %32, %val
  br i1 %cmp9, label %sw.bb8.cleanup_crit_edge, label %lor.lhs.false

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb8
  %max_sample_rate = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %max_sample_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_sample_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %val)
  %cmp11 = icmp ult i32 %34, %val
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @at91_adc_setup_samp_freq(ptr noundef %indio_dev, i32 noundef %val)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %at91_adc_config_emr.exit, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %at91_adc_config_emr.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channels_bitmask = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 3
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform, align 4
  %max_index = getelementptr inbounds %struct.at91_adc_platform, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %max_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_index, align 4
  %add = add i32 %5, 1
  %call.i = tail call i32 @__bitmap_subset(ptr noundef %scan_mask, ptr noundef %channels_bitmask, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else.i23, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i23:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform, align 4
  %max_index6 = getelementptr inbounds %struct.at91_adc_platform, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %max_index6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_index6, align 4
  %add7 = add i32 %9, 1
  %call.i22 = tail call i32 @__bitmap_intersects(ptr noundef %channels_bitmask, ptr noundef %scan_mask, i32 noundef %add7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool9.not = icmp eq i32 %call.i22, 0
  %. = select i1 %tobool9.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.else.i23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.else.i23 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_of_xlate(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %iiospec) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.i = icmp sgt i32 %3, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %entry.at91_adc_chan_xlate.exit_crit_edge

entry.at91_adc_chan_xlate.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_chan_xlate.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %4 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %scan_index.i = getelementptr %struct.iio_chan_spec, ptr %5, i32 %i.07.i, i32 4
  %6 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp1.i = icmp eq i32 %7, %1
  br i1 %cmp1.i, label %for.body.i.at91_adc_chan_xlate.exit_crit_edge, label %for.inc.i

for.body.i.at91_adc_chan_xlate.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_chan_xlate.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.at91_adc_chan_xlate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.at91_adc_chan_xlate.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_chan_xlate.exit

at91_adc_chan_xlate.exit:                         ; preds = %for.inc.i.at91_adc_chan_xlate.exit_crit_edge, %for.body.i.at91_adc_chan_xlate.exit_crit_edge, %entry.at91_adc_chan_xlate.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.at91_adc_chan_xlate.exit_crit_edge ], [ %i.07.i, %for.body.i.at91_adc_chan_xlate.exit_crit_edge ], [ -22, %for.inc.i.at91_adc_chan_xlate.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_set_watermark(ptr noundef %indio_dev, i32 noundef %val) #2 align 64 {
entry:
  %config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %val)
  %cmp = icmp ugt i32 %val, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %selected_trig = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %selected_trig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %selected_trig, align 8
  %hw_trig = getelementptr inbounds %struct.at91_adc_trigger, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_trig to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_trig, align 4, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %do.body9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_set_watermark.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_set_watermark, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !292

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_set_watermark.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.47) #8
  br label %cleanup

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_set_watermark.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_set_watermark, %if.then21)) #8
          to label %do.end25 [label %if.then21], !srcloc !292

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_set_watermark.__UNIQUE_ID_ddebug294, ptr noundef %dev22, ptr noundef nonnull @.str.48, i32 noundef %val) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %watermark = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 6
  %6 = ptrtoint ptr %watermark to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %watermark, align 8
  %7 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %val, label %if.then29 [
    i32 1, label %if.then27
    i32 0, label %do.end25.if.end31_crit_edge
  ]

do.end25.if.end31_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @at91_adc_dma_disable(ptr noundef %1)
  br label %if.end31

if.then29:                                        ; preds = %do.end25
  %indio_dev.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %indio_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %indio_dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i) #8
  %10 = call ptr @memset(ptr %config.i, i32 0, i32 48)
  %platform.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %11 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform.i, align 4
  %nr_channels.i = getelementptr inbounds %struct.at91_adc_platform, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_channels.i, align 4
  %mul3.i = shl i32 %14, 9
  %sub.i = add i32 %mul3.i, 4095
  %div90.i = and i32 %sub.i, -4096
  %dma_st.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_st.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then29.at91_adc_dma_init.exit_crit_edge

if.then29.at91_adc_dma_init.exit_crit_edge:       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_dma_init.exit

if.end.i:                                         ; preds = %if.then29
  %call.i = tail call ptr @dma_request_chan(ptr noundef %dev1.i, ptr noundef nonnull @.str.49) #8
  %17 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %dma_st.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.50) #11
  br label %do.end62.i

if.end12.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %dev15.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15.i, align 4
  %rx_dma_buf.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %21, i32 noundef %div90.i, ptr noundef %rx_dma_buf.i, i32 noundef 3264, i32 noundef 0) #8
  %rx_buf.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %rx_buf.i, align 4
  %tobool22.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end27.i

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.53) #11
  br label %dma_chan_disable.i

if.end27.i:                                       ; preds = %if.end12.i
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %config.i, align 4
  %phys_addr.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 3
  %24 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys_addr.i, align 4
  %26 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platform.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %LCDR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %LCDR.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %LCDR.i, align 2
  %conv.i = zext i16 %31 to i32
  %add31.i = add i32 %25, %conv.i
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 1
  %32 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add31.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 3
  %33 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %src_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 5
  %34 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 6
  %35 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %dst_maxburst.i, align 4
  %36 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_st.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end27.i.do.end39.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end27.i.do.end39.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end27.i
  %call.i91.i = call i32 %41(ptr noundef %37, ptr noundef nonnull %config.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool35.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool35.not.i, label %do.end43.i, label %dmaengine_slave_config.exit.i.do.end39.i_crit_edge

dmaengine_slave_config.exit.i.do.end39.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

do.end39.i:                                       ; preds = %dmaengine_slave_config.exit.i.do.end39.i_crit_edge, %if.end27.i.do.end39.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.56) #11
  %42 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_st.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dev50.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %dev50.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev50.i, align 4
  %48 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_buf.i, align 4
  %50 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_dma_buf.i, align 8
  call void @dma_free_attrs(ptr noundef %47, i32 noundef %div90.i, ptr noundef %49, i32 noundef %51, i32 noundef 0) #8
  br label %dma_chan_disable.i

do.end43.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %52 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_st.i, align 8
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end43.i.dma_chan_name.exit.i_crit_edge

do.end43.i.dma_chan_name.exit.i_crit_edge:        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_chan_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device.i.i, align 4
  br label %dma_chan_name.exit.i

dma_chan_name.exit.i:                             ; preds = %if.end.i.i.i, %do.end43.i.dma_chan_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %59, %if.end.i.i.i ], [ %57, %do.end43.i.dma_chan_name.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.59, ptr noundef %retval.0.i.i.i) #11
  br label %at91_adc_dma_init.exit

dma_chan_disable.i:                               ; preds = %do.end39.i, %do.end26.i
  %60 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_st.i, align 8
  call void @dma_release_channel(ptr noundef %61) #8
  br label %do.end62.i

do.end62.i:                                       ; preds = %dma_chan_disable.i, %do.end.i
  %62 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %dma_st.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.62) #11
  br label %at91_adc_dma_init.exit

at91_adc_dma_init.exit:                           ; preds = %do.end62.i, %dma_chan_name.exit.i, %if.then29.at91_adc_dma_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #8
  br label %if.end31

if.end31:                                         ; preds = %at91_adc_dma_init.exit, %if.then27, %do.end25.if.end31_crit_edge
  %63 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv.i, align 8
  %active_scan_mask.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %platform.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %64, i32 0, i32 13, i32 3
  %65 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %platform.i.i, align 4
  %max_index.i.i = getelementptr inbounds %struct.at91_adc_platform, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %max_index.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_index.i.i, align 4
  %add.i.i = add i32 %68, 1
  %channels_bitmask.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %64, i32 0, i32 16, i32 3
  %69 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %active_scan_mask.i.i, align 4
  %call.i.i.i = call i32 @__bitmap_subset(ptr noundef %70, ptr noundef %channels_bitmask.i.i, i32 noundef %add.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i55, label %if.then.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %current_sample_rate.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %64, i32 0, i32 6
  %71 = ptrtoint ptr %current_sample_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %current_sample_rate.i.i, align 8
  %div.i.i = udiv i32 %72, 1000
  %div7.i.i = udiv i32 %72, 5000
  %conv9.i.i = and i32 %div7.i.i, 65535
  %conv9.numleadingzeros.i.i = call i32 @llvm.ctlz.i32(i32 %conv9.i.i, i1 false) #8, !range !296
  %.neg.i.i = mul i32 %conv9.numleadingzeros.i.i, -268435456
  %or17.i.i = add i32 %.neg.i.i, 289407522
  %73 = call i32 @llvm.bswap.i32(i32 %or17.i.i) #8
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %64, align 8
  %76 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %platform.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %TSMR22.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %79, i32 0, i32 25
  %80 = ptrtoint ptr %TSMR22.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %TSMR22.i.i, align 2
  %conv23.i.i = zext i16 %81 to i32
  %add.ptr24.i.i = getelementptr i8, ptr %75, i32 %conv23.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 %73) #8, !srcloc !295
  %82 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %64, align 8
  %84 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %platform.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %ACR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %87, i32 0, i32 24
  %88 = ptrtoint ptr %ACR.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ACR.i.i, align 2
  %conv29.i.i = zext i16 %89 to i32
  %add.ptr30.i.i = getelementptr i8, ptr %83, i32 %conv29.i.i
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i.i) #8, !srcloc !294
  %91 = and i32 %90, -50331649
  %92 = or i32 %91, 33554432
  %93 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %64, align 8
  %95 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %platform.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %ACR37.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %98, i32 0, i32 24
  %99 = ptrtoint ptr %ACR37.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ACR37.i.i, align 2
  %conv38.i.i = zext i16 %100 to i32
  %add.ptr39.i.i = getelementptr i8, ptr %94, i32 %conv38.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i.i, i32 %92) #8, !srcloc !295
  %mul40.i.i = mul i32 %div.i.i, 2000
  %div41.i.i = udiv i32 %mul40.i.i, 1000
  %101 = trunc i32 %div41.i.i to i16
  %conv46.i.i = add i16 %101, -1
  %touch_st.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %64, i32 0, i32 16
  %102 = ptrtoint ptr %touch_st.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv46.i.i, ptr %touch_st.i.i, align 8
  %103 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %64, align 8
  %105 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %platform.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %IER.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %IER.i.i, align 2
  %conv51.i.i = zext i16 %110 to i32
  %add.ptr52.i.i = getelementptr i8, ptr %104, i32 %conv51.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i.i, i32 32) #8, !srcloc !295
  br label %cleanup

if.end.i55:                                       ; preds = %if.end31
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %111 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %112, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i54 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i54, label %if.end.i55.if.then34_crit_edge, label %if.end4.i

if.end.i55.if.then34_crit_edge:                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end4.i:                                        ; preds = %if.end.i55
  %call5.i = call fastcc i32 @at91_adc_dma_start(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %do.end.i56

do.end.i56:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.64) #11
  br label %if.then34

if.end8.i:                                        ; preds = %if.end4.i
  %113 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %active_scan_mask.i.i, align 4
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %115 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_channels.i, align 4
  %call9.i = call i32 @_find_next_bit_be(ptr noundef %114, i32 noundef %116, i32 noundef 0) #8
  %conv1078.i = and i32 %call9.i, 255
  %117 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1078.i, i32 %118)
  %cmp79.i = icmp slt i32 %conv1078.i, %118
  br i1 %cmp79.i, label %for.body.lr.ph.i, label %if.end8.i.for.end.i_crit_edge

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %channels.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %119 = phi i32 [ %118, %for.body.lr.ph.i ], [ %175, %cleanup.i.for.body.i_crit_edge ]
  %conv1080.i = phi i32 [ %conv1078.i, %for.body.lr.ph.i ], [ %conv10.i, %cleanup.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp6.i.i.i = icmp sgt i32 %119, 0
  br i1 %cmp6.i.i.i, label %for.body.lr.ph.i.i.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body.i
  %120 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %channels.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.07.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %scan_index.i.i.i = getelementptr %struct.iio_chan_spec, ptr %121, i32 %i.07.i.i.i, i32 4
  %122 = ptrtoint ptr %scan_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %scan_index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %conv1080.i)
  %cmp1.i.i.i = icmp eq i32 %123, %conv1080.i
  br i1 %cmp1.i.i.i, label %at91_adc_chan_get.exit.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %119
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cleanup.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.cleanup.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

at91_adc_chan_get.exit.i:                         ; preds = %for.body.i.i.i
  %add.ptr.i.i = getelementptr %struct.iio_chan_spec, ptr %121, i32 %i.07.i.i.i
  %tobool15.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool15.not.i, label %at91_adc_chan_get.exit.i.cleanup.i_crit_edge, label %if.end17.i

at91_adc_chan_get.exit.i.cleanup.i_crit_edge:     ; preds = %at91_adc_chan_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end17.i:                                       ; preds = %at91_adc_chan_get.exit.i
  %124 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i.i, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %125, label %if.end24.i [
    i32 32, label %if.end17.i.cleanup.i_crit_edge
    i32 17, label %if.end17.i.cleanup.i_crit_edge70
  ]

if.end17.i.cleanup.i_crit_edge70:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end17.i.cleanup.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end24.i:                                       ; preds = %if.end17.i
  %channel.i.i = getelementptr %struct.iio_chan_spec, ptr %121, i32 %i.07.i.i.i, i32 1
  %127 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %channel.i.i, align 4
  %shl.i67.i = shl nuw i32 1, %128
  %channel2.i.i = getelementptr %struct.iio_chan_spec, ptr %121, i32 %i.07.i.i.i, i32 2
  %129 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %channel2.i.i, align 4
  %shl1.i.i = shl nuw i32 1, %130
  %or.i.i = or i32 %shl1.i.i, %shl.i67.i
  %131 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %64, align 8
  %133 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %platform.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %COR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %136, i32 0, i32 22
  %137 = ptrtoint ptr %COR.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %COR.i.i, align 2
  %conv.i.i = zext i16 %138 to i32
  %add.ptr.i69.i = getelementptr i8, ptr %132, i32 %conv.i.i
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #8, !srcloc !294
  %140 = call i32 @llvm.bswap.i32(i32 %139) #8
  %141 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %platform.i.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %COR_diff_offset.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %144, i32 0, i32 23
  %145 = ptrtoint ptr %COR_diff_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %COR_diff_offset.i.i, align 2
  %conv5.i.i = zext i16 %146 to i32
  %shl6.i.i = shl i32 %or.i.i, %conv5.i.i
  %differential.i.i = getelementptr %struct.iio_chan_spec, ptr %121, i32 %i.07.i.i.i, i32 19
  %147 = ptrtoint ptr %differential.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load.i.i = load i8, ptr %differential.i.i, align 4
  %148 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i.i57 = icmp eq i8 %148, 0
  br i1 %tobool.not.i.i57, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %or7.i.i = or i32 %shl6.i.i, %140
  %149 = call i32 @llvm.bswap.i32(i32 %or7.i.i) #8
  %150 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %64, align 8
  %COR12.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %144, i32 0, i32 22
  %152 = ptrtoint ptr %COR12.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %COR12.i.i, align 2
  %conv13.i.i = zext i16 %153 to i32
  %add.ptr14.i.i = getelementptr i8, ptr %151, i32 %conv13.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %149) #8, !srcloc !295
  br label %at91_adc_cor.exit.i

if.else.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i.i = xor i32 %shl6.i.i, -1
  %and.i.i = and i32 %140, %neg.i.i
  %154 = call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %155 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %64, align 8
  %COR19.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %144, i32 0, i32 22
  %157 = ptrtoint ptr %COR19.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %COR19.i.i, align 2
  %conv20.i.i = zext i16 %158 to i32
  %add.ptr21.i.i = getelementptr i8, ptr %156, i32 %conv20.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %154) #8, !srcloc !295
  br label %at91_adc_cor.exit.i

at91_adc_cor.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %159 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %channel.i.i, align 4
  %shl.i = shl nuw i32 1, %160
  %161 = call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %162 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %64, align 8
  %164 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %platform.i.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %CHER.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %CHER.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %CHER.i, align 2
  %conv25.i = zext i16 %169 to i32
  %add.ptr.i = getelementptr i8, ptr %163, i32 %conv25.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %161) #8, !srcloc !295
  br label %cleanup.i

cleanup.i:                                        ; preds = %at91_adc_cor.exit.i, %if.end17.i.cleanup.i_crit_edge, %if.end17.i.cleanup.i_crit_edge70, %at91_adc_chan_get.exit.i.cleanup.i_crit_edge, %for.inc.i.i.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %170 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %active_scan_mask.i.i, align 4
  %172 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %num_channels.i, align 4
  %add.i = add nuw nsw i32 %conv1080.i, 1
  %call29.i = call i32 @_find_next_bit_be(ptr noundef %171, i32 noundef %173, i32 noundef %add.i) #8
  %conv10.i = and i32 %call29.i, 255
  %174 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_channels.i, align 4
  %cmp.i = icmp slt i32 %conv10.i, %175
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %dma_st.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %64, i32 0, i32 15
  %176 = ptrtoint ptr %dma_st.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dma_st.i.i, align 8
  %tobool.not.i71.i = icmp eq ptr %177, null
  br i1 %tobool.not.i71.i, label %at91_adc_buffer_check_use_irq.exit.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

at91_adc_buffer_check_use_irq.exit.i:             ; preds = %for.end.i
  %trig.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %178 = ptrtoint ptr %trig.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %trig.i.i, align 4
  %call.i.i58 = call i32 @iio_trigger_validate_own_device(ptr noundef %179, ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool1.not.i.i = icmp eq i32 %call.i.i58, 0
  br i1 %tobool1.not.i.i, label %if.then32.i, label %at91_adc_buffer_check_use_irq.exit.i.cleanup_crit_edge

at91_adc_buffer_check_use_irq.exit.i.cleanup_crit_edge: ; preds = %at91_adc_buffer_check_use_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32.i:                                      ; preds = %at91_adc_buffer_check_use_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %64, align 8
  %182 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %platform.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %IER.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %185, i32 0, i32 8
  %186 = ptrtoint ptr %IER.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %IER.i, align 2
  %conv37.i = zext i16 %187 to i32
  %add.ptr38.i = getelementptr i8, ptr %181, i32 %conv37.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 1) #8, !srcloc !295
  br label %cleanup

if.then34:                                        ; preds = %do.end.i56, %if.end.i55.if.then34_crit_edge
  %retval.0.i59 = phi i32 [ %call5.i, %do.end.i56 ], [ -22, %if.end.i55.if.then34_crit_edge ]
  call fastcc void @at91_adc_dma_disable(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then32.i, %at91_adc_buffer_check_use_irq.exit.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then.i, %if.then6, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ %retval.0.i59, %if.then34 ], [ 0, %do.body ], [ 0, %if.then.i ], [ 0, %if.then32.i ], [ 0, %at91_adc_buffer_check_use_irq.exit.i.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_adc_read_position(ptr nocapture noundef %st, i32 noundef %chan, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %val, align 2
  %touching = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %touching to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %touching, align 2, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 13, i32 3
  %3 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform, align 4
  %touch_chan_x = getelementptr inbounds %struct.at91_adc_platform, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %touch_chan_x to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %touch_chan_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %chan)
  %cmp = icmp eq i32 %6, %chan
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %XPOSR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %XPOSR.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %XPOSR.i, align 2
  %conv.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !294
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then1.if.end33.i.i_crit_edge

if.then1.if.end33.i.i_crit_edge:                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i

do.body.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_touch_pos.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_read_position, %if.end33.thread.i.i)) #8
          to label %if.end33.i.i [label %if.end33.thread.i.i], !srcloc !292

if.end33.thread.i.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %indio_dev.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 17
  %15 = ptrtoint ptr %indio_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %indio_dev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_touch_pos.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i, ptr noundef nonnull @.str.42) #8
  br label %do.end40.i.i

if.end33.i.i:                                     ; preds = %do.body.i.i, %if.then1.if.end33.i.i_crit_edge
  %val.063.i.i = phi i32 [ %14, %if.then1.if.end33.i.i_crit_edge ], [ 0, %do.body.i.i ]
  %shr.i.i = lshr i32 %val.063.i.i, 16
  %and34.i.i = and i32 %shr.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %cmp35.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %cmp35.i.i, label %if.end33.i.i.do.end40.i.i_crit_edge, label %if.end43.i.i

if.end33.i.i.do.end40.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.end33.i.i.do.end40.i.i_crit_edge, %if.end33.thread.i.i
  %indio_dev41.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 17
  %17 = ptrtoint ptr %indio_dev41.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %indio_dev41.i.i, align 8
  %dev42.i.i = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i.i, ptr noundef nonnull @.str.43) #11
  br label %at91_adc_touch_x_pos.exit

if.end43.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %val.063.i.i, 4095
  %sub.i.i = mul nuw nsw i32 %and.i.i, 4095
  %div.i.i = udiv i32 %sub.i.i, %and34.i.i
  %conv44.i.i = trunc i32 %div.i.i to i16
  br label %at91_adc_touch_x_pos.exit

at91_adc_touch_x_pos.exit:                        ; preds = %if.end43.i.i, %do.end40.i.i
  %retval.0.i.i = phi i16 [ 0, %do.end40.i.i ], [ %conv44.i.i, %if.end43.i.i ]
  %x_pos.i = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 16, i32 2
  %19 = ptrtoint ptr %x_pos.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %retval.0.i.i, ptr %x_pos.i, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %touch_chan_y = getelementptr inbounds %struct.at91_adc_platform, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %touch_chan_y to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %touch_chan_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %chan)
  %cmp4 = icmp eq i32 %21, %chan
  br i1 %cmp4, label %if.then5, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then5:                                         ; preds = %if.else
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %YPOSR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %YPOSR.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %YPOSR.i, align 2
  %conv.i2 = zext i16 %25 to i32
  %26 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %st, align 8
  %add.ptr.i.i3 = getelementptr i8, ptr %27, i32 %conv.i2
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i4 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i4, label %do.body.i.i5, label %if.then5.if.end33.i.i13_crit_edge

if.then5.if.end33.i.i13_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i13

do.body.i.i5:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_touch_pos.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_read_position, %if.end33.thread.i.i8)) #8
          to label %if.end33.i.i13 [label %if.end33.thread.i.i8], !srcloc !292

if.end33.thread.i.i8:                             ; preds = %do.body.i.i5
  call void @__sanitizer_cov_trace_pc() #10
  %indio_dev.i.i6 = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 17
  %30 = ptrtoint ptr %indio_dev.i.i6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %indio_dev.i.i6, align 8
  %dev.i.i7 = getelementptr inbounds %struct.iio_dev, ptr %31, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_touch_pos.__UNIQUE_ID_ddebug290, ptr noundef %dev.i.i7, ptr noundef nonnull @.str.42) #8
  br label %do.end40.i.i16

if.end33.i.i13:                                   ; preds = %do.body.i.i5, %if.then5.if.end33.i.i13_crit_edge
  %val.063.i.i9 = phi i32 [ %29, %if.then5.if.end33.i.i13_crit_edge ], [ 0, %do.body.i.i5 ]
  %shr.i.i10 = lshr i32 %val.063.i.i9, 16
  %and34.i.i11 = and i32 %shr.i.i10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i11)
  %cmp35.i.i12 = icmp eq i32 %and34.i.i11, 0
  br i1 %cmp35.i.i12, label %if.end33.i.i13.do.end40.i.i16_crit_edge, label %if.end43.i.i21

if.end33.i.i13.do.end40.i.i16_crit_edge:          ; preds = %if.end33.i.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i16

do.end40.i.i16:                                   ; preds = %if.end33.i.i13.do.end40.i.i16_crit_edge, %if.end33.thread.i.i8
  %indio_dev41.i.i14 = getelementptr inbounds %struct.at91_adc_state, ptr %st, i32 0, i32 17
  %32 = ptrtoint ptr %indio_dev41.i.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %indio_dev41.i.i14, align 8
  %dev42.i.i15 = getelementptr inbounds %struct.iio_dev, ptr %33, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i.i15, ptr noundef nonnull @.str.43) #11
  br label %if.end9

if.end43.i.i21:                                   ; preds = %if.end33.i.i13
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i17 = and i32 %val.063.i.i9, 4095
  %sub.i.i18 = mul nuw nsw i32 %and.i.i17, 4095
  %div.i.i19 = udiv i32 %sub.i.i18, %and34.i.i11
  %conv44.i.i20 = trunc i32 %div.i.i19 to i16
  br label %if.end9

if.end9:                                          ; preds = %if.end43.i.i21, %do.end40.i.i16, %at91_adc_touch_x_pos.exit
  %storemerge = phi i16 [ %retval.0.i.i, %at91_adc_touch_x_pos.exit ], [ 0, %do.end40.i.i16 ], [ %conv44.i.i20, %if.end43.i.i21 ]
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %storemerge, ptr %val, align 2
  br label %return

return:                                           ; preds = %if.end9, %if.else.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_adc_setup_samp_freq(ptr noundef %indio_dev, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %per_clk = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %per_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %per_clk, align 8
  %call1 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %mul = shl i32 %freq, 1
  %div = udiv i32 %call1, %mul
  %sub = add i32 %div, -1
  %soc_info = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %soc_info, align 4
  %div2 = udiv i32 %freq, 1000
  %mul.i = mul i32 %5, %div2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %mul.i)
  %cmp1.1.i = icmp ult i32 %mul.i, 8000
  br i1 %cmp1.1.i, label %entry.at91_adc_startup_time.exit_crit_edge, label %for.inc.1.i

entry.at91_adc_startup_time.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.1.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %mul.i)
  %cmp1.2.i = icmp ult i32 %mul.i, 16000
  br i1 %cmp1.2.i, label %for.inc.1.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %mul.i)
  %cmp1.3.i = icmp ult i32 %mul.i, 24000
  br i1 %cmp1.3.i, label %for.inc.2.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %mul.i)
  %cmp1.4.i = icmp ult i32 %mul.i, 64000
  br i1 %cmp1.4.i, label %for.inc.3.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %mul.i)
  %cmp1.5.i = icmp ult i32 %mul.i, 80000
  br i1 %cmp1.5.i, label %for.inc.4.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %mul.i)
  %cmp1.6.i = icmp ult i32 %mul.i, 96000
  br i1 %cmp1.6.i, label %for.inc.5.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 112000, i32 %mul.i)
  %cmp1.7.i = icmp ult i32 %mul.i, 112000
  br i1 %cmp1.7.i, label %for.inc.6.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512000, i32 %mul.i)
  %cmp1.8.i = icmp ult i32 %mul.i, 512000
  br i1 %cmp1.8.i, label %for.inc.7.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 576000, i32 %mul.i)
  %cmp1.9.i = icmp ult i32 %mul.i, 576000
  br i1 %cmp1.9.i, label %for.inc.8.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640000, i32 %mul.i)
  %cmp1.10.i = icmp ult i32 %mul.i, 640000
  br i1 %cmp1.10.i, label %for.inc.9.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.10.i

for.inc.9.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 704000, i32 %mul.i)
  %cmp1.11.i = icmp ult i32 %mul.i, 704000
  br i1 %cmp1.11.i, label %for.inc.10.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.11.i

for.inc.10.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %mul.i)
  %cmp1.12.i = icmp ult i32 %mul.i, 768000
  br i1 %cmp1.12.i, label %for.inc.11.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.12.i

for.inc.11.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 832000, i32 %mul.i)
  %cmp1.13.i = icmp ult i32 %mul.i, 832000
  br i1 %cmp1.13.i, label %for.inc.12.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.13.i

for.inc.12.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 896000, i32 %mul.i)
  %cmp1.14.i = icmp ult i32 %mul.i, 896000
  br i1 %cmp1.14.i, label %for.inc.13.i.at91_adc_startup_time.exit_crit_edge, label %for.inc.14.i

for.inc.13.i.at91_adc_startup_time.exit_crit_edge: ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_startup_time.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 960000, i32 %mul.i)
  %cmp1.15.i = icmp ult i32 %mul.i, 960000
  %spec.select.i = select i1 %cmp1.15.i, i32 15, i32 16
  br label %at91_adc_startup_time.exit

at91_adc_startup_time.exit:                       ; preds = %for.inc.14.i, %for.inc.13.i.at91_adc_startup_time.exit_crit_edge, %for.inc.12.i.at91_adc_startup_time.exit_crit_edge, %for.inc.11.i.at91_adc_startup_time.exit_crit_edge, %for.inc.10.i.at91_adc_startup_time.exit_crit_edge, %for.inc.9.i.at91_adc_startup_time.exit_crit_edge, %for.inc.8.i.at91_adc_startup_time.exit_crit_edge, %for.inc.7.i.at91_adc_startup_time.exit_crit_edge, %for.inc.6.i.at91_adc_startup_time.exit_crit_edge, %for.inc.5.i.at91_adc_startup_time.exit_crit_edge, %for.inc.4.i.at91_adc_startup_time.exit_crit_edge, %for.inc.3.i.at91_adc_startup_time.exit_crit_edge, %for.inc.2.i.at91_adc_startup_time.exit_crit_edge, %for.inc.1.i.at91_adc_startup_time.exit_crit_edge, %entry.at91_adc_startup_time.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 1, %entry.at91_adc_startup_time.exit_crit_edge ], [ 2, %for.inc.1.i.at91_adc_startup_time.exit_crit_edge ], [ 3, %for.inc.2.i.at91_adc_startup_time.exit_crit_edge ], [ 4, %for.inc.3.i.at91_adc_startup_time.exit_crit_edge ], [ 5, %for.inc.4.i.at91_adc_startup_time.exit_crit_edge ], [ 6, %for.inc.5.i.at91_adc_startup_time.exit_crit_edge ], [ 7, %for.inc.6.i.at91_adc_startup_time.exit_crit_edge ], [ 8, %for.inc.7.i.at91_adc_startup_time.exit_crit_edge ], [ 9, %for.inc.8.i.at91_adc_startup_time.exit_crit_edge ], [ 10, %for.inc.9.i.at91_adc_startup_time.exit_crit_edge ], [ 11, %for.inc.10.i.at91_adc_startup_time.exit_crit_edge ], [ 12, %for.inc.11.i.at91_adc_startup_time.exit_crit_edge ], [ 13, %for.inc.12.i.at91_adc_startup_time.exit_crit_edge ], [ 14, %for.inc.13.i.at91_adc_startup_time.exit_crit_edge ], [ %spec.select.i, %for.inc.14.i ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %MR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %MR to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %MR, align 2
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !294
  %15 = and i32 %14, -16715521
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shl = shl nuw nsw i32 %i.0.lcssa.i, 16
  %shl6 = shl i32 %sub, 8
  %or = or i32 %shl, %shl6
  %or7 = or i32 %or, %16
  %17 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %MR12 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %MR12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %MR12, align 2
  %conv13 = zext i16 %25 to i32
  %add.ptr14 = getelementptr i8, ptr %19, i32 %conv13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %17) #8, !srcloc !295
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_setup_samp_freq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_setup_samp_freq, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %at91_adc_startup_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_setup_samp_freq.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %freq, i32 noundef %i.0.lcssa.i, i32 noundef %sub) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %at91_adc_startup_time.exit
  %current_sample_rate = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %current_sample_rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %freq, ptr %current_sample_rate, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_dma_start(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dma_st = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_st, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end:                                           ; preds = %entry
  %buf_idx = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %buf_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf_idx, align 8
  %rx_buf_sz = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 5
  %5 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx_buf_sz, align 4
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %6 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_channels, align 4
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %7, i32 noundef %9, i32 noundef 0) #8
  %conv4113 = and i32 %call3, 255
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4113, i32 %11)
  %cmp114 = icmp slt i32 %conv4113, %11
  br i1 %cmp114, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %channels.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %12 = phi i32 [ %11, %for.body.lr.ph ], [ %27, %cleanup.for.body_crit_edge ]
  %conv4115 = phi i32 [ %conv4113, %for.body.lr.ph ], [ %conv4, %cleanup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.i.i = icmp sgt i32 %12, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %for.body
  %13 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %scan_index.i.i = getelementptr %struct.iio_chan_spec, ptr %14, i32 %i.07.i.i, i32 4
  %15 = ptrtoint ptr %scan_index.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv4115)
  %cmp1.i.i = icmp eq i32 %16, %conv4115
  br i1 %cmp1.i.i, label %at91_adc_chan_get.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

at91_adc_chan_get.exit:                           ; preds = %for.body.i.i
  %add.ptr.i = getelementptr %struct.iio_chan_spec, ptr %14, i32 %i.07.i.i
  %tobool9.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool9.not, label %at91_adc_chan_get.exit.cleanup_crit_edge, label %if.end11

at91_adc_chan_get.exit.cleanup_crit_edge:         ; preds = %at91_adc_chan_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %at91_adc_chan_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %storagebits = getelementptr %struct.iio_chan_spec, ptr %14, i32 %i.07.i.i, i32 5, i32 2
  %17 = ptrtoint ptr %storagebits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %storagebits, align 2
  %19 = lshr i8 %18, 3
  %div = zext i8 %19 to i32
  %20 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_buf_sz, align 4
  %add = add i32 %21, %div
  store i32 %add, ptr %rx_buf_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %at91_adc_chan_get.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %22 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_scan_mask, align 4
  %24 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_channels, align 4
  %add18 = add nuw nsw i32 %conv4115, 1
  %call19 = tail call i32 @_find_next_bit_be(ptr noundef %23, i32 noundef %25, i32 noundef %add18) #8
  %conv4 = and i32 %call19, 255
  %26 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_channels, align 4
  %cmp = icmp slt i32 %conv4, %27
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %watermark = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 6
  %28 = ptrtoint ptr %watermark to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %watermark, align 8
  %30 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buf_sz, align 4
  %mul = mul i32 %31, %29
  store i32 %mul, ptr %rx_buf_sz, align 4
  %32 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_st, align 8
  %rx_dma_buf = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 2
  %34 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_dma_buf, align 8
  %div31 = sdiv i32 %mul, 2
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %for.end.do.end_crit_edge, label %lor.lhs.false.i

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %for.end
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 40
  %38 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %39(ptr noundef nonnull %33, i32 noundef %35, i32 noundef %mul, i32 noundef %div31, i32 noundef 2, i32 noundef 1) #8
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %dmaengine_prep_dma_cyclic.exit.do.end_crit_edge, label %if.end35

dmaengine_prep_dma_cyclic.exit.do.end_crit_edge:  ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_dma_cyclic.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %for.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #11
  br label %cleanup63

if.end35:                                         ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @at91_dma_buffer_done, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %indio_dev, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_submit.i, align 4
  %call.i103 = tail call i32 %43(ptr noundef nonnull %call.i) #8
  %44 = tail call i32 @llvm.smin.i32(i32 %call.i103, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i103)
  %tobool38.not = icmp sgt i32 %call.i103, -1
  br i1 %tobool38.not, label %if.end47, label %do.end42

do.end42:                                         ; preds = %if.end35
  %dev43 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.69) #11
  %45 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_st, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 47
  %49 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i104 = icmp eq ptr %50, null
  br i1 %tobool.not.i104, label %do.end42.cleanup63_crit_edge, label %if.then.i

do.end42.cleanup63_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.then.i:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call.i105 = tail call i32 %50(ptr noundef %46) #8
  br label %cleanup63

if.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %53 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %platform, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %IER = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %IER to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %IER, align 2
  %conv48 = zext i16 %58 to i32
  %add.ptr = getelementptr i8, ptr %52, i32 %conv48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2) #8, !srcloc !295
  %59 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_st, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 50
  %63 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %64(ptr noundef %60) #8
  %call51 = tail call i64 @iio_get_time_ns(ptr noundef %indio_dev) #8
  %dma_ts = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 7
  %65 = ptrtoint ptr %dma_ts to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %call51, ptr %dma_ts, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_adc_dma_start.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at91_adc_dma_start, %if.then58)) #8
          to label %cleanup63 [label %if.then58], !srcloc !292

if.then58:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %dev59 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_adc_dma_start.__UNIQUE_ID_ddebug291, ptr noundef %dev59, ptr noundef nonnull @.str.71) #8
  br label %cleanup63

cleanup63:                                        ; preds = %if.then58, %if.end47, %if.then.i, %do.end42.cleanup63_crit_edge, %do.end, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.cleanup63_crit_edge ], [ 0, %if.then58 ], [ %44, %do.end42.cleanup63_crit_edge ], [ %44, %if.then.i ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_dma_buffer_done(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trig = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll_chained(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_adc_touch_data_handler(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !291
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %3 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %active_scan_mask, align 4
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform, align 4
  %max_index = getelementptr inbounds %struct.at91_adc_platform, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %max_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_index, align 4
  %add = add i32 %8, 1
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %4, i32 noundef %add, i32 noundef 0) #8
  %conv248 = and i32 %call1, 255
  %9 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform, align 4
  %max_index549 = getelementptr inbounds %struct.at91_adc_platform, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %max_index549 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_index549, align 4
  %add650 = add i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv248, i32 %add650)
  %cmp51 = icmp ult i32 %conv248, %add650
  br i1 %cmp51, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_channels.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %channels.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %touching.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 1
  %x_pos.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %13 = phi ptr [ %10, %for.body.lr.ph ], [ %54, %cleanup.for.body_crit_edge ]
  %conv253 = phi i32 [ %conv248, %for.body.lr.ph ], [ %conv2, %cleanup.for.body_crit_edge ]
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %cleanup.for.body_crit_edge ]
  %14 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.i.i = icmp sgt i32 %15, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %for.body.at91_adc_chan_get.exit_crit_edge

for.body.at91_adc_chan_get.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_chan_get.exit

for.body.lr.ph.i.i:                               ; preds = %for.body
  %16 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %scan_index.i.i = getelementptr %struct.iio_chan_spec, ptr %17, i32 %i.07.i.i, i32 4
  %18 = ptrtoint ptr %scan_index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv253)
  %cmp1.i.i = icmp eq i32 %19, %conv253
  br i1 %cmp1.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %for.inc.i.i.at91_adc_chan_get.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.at91_adc_chan_get.exit_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_chan_get.exit

if.end.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr %struct.iio_chan_spec, ptr %17, i32 %i.07.i.i
  br label %at91_adc_chan_get.exit

at91_adc_chan_get.exit:                           ; preds = %if.end.i, %for.inc.i.i.at91_adc_chan_get.exit_crit_edge, %for.body.at91_adc_chan_get.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ null, %for.body.at91_adc_chan_get.exit_crit_edge ], [ null, %for.inc.i.i.at91_adc_chan_get.exit_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %retval.0.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %21, label %at91_adc_chan_get.exit.cleanup_crit_edge [
    i32 32, label %if.then
    i32 17, label %if.then16
  ]

at91_adc_chan_get.exit.cleanup_crit_edge:         ; preds = %at91_adc_chan_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %at91_adc_chan_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %retval.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel, align 4
  call fastcc void @at91_adc_read_position(ptr noundef %1, i32 noundef %24, ptr noundef nonnull %val)
  br label %if.end20

if.then16:                                        ; preds = %at91_adc_chan_get.exit
  %channel17 = getelementptr inbounds %struct.iio_chan_spec, ptr %retval.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %channel17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel17, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %val, align 2
  %28 = ptrtoint ptr %touching.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %touching.i, align 2, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.then16.if.end20_crit_edge, label %if.end.i46

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end.i46:                                       ; preds = %if.then16
  %touch_chan_p.i = getelementptr inbounds %struct.at91_adc_platform, ptr %13, i32 0, i32 5
  %30 = ptrtoint ptr %touch_chan_p.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %touch_chan_p.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %26)
  %cmp.i = icmp eq i32 %31, %26
  br i1 %cmp.i, label %if.then1.i, label %if.end.i46.if.end20_crit_edge

if.end.i46.if.end20_crit_edge:                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then1.i:                                       ; preds = %if.end.i46
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %13, align 4
  %PRESSR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %35, i32 0, i32 28
  %36 = ptrtoint ptr %PRESSR.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %PRESSR.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !294
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %and.i.i = and i32 %39, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.then1.i.at91_adc_touch_pressure.exit.i_crit_edge, label %if.then.i.i

if.then1.i.at91_adc_touch_pressure.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_touch_pressure.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i32 %39, 16
  %and1.i.i = and i32 %shr.i.i, 4095
  %40 = ptrtoint ptr %x_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %x_pos.i.i, align 4
  %conv3.i.i = zext i16 %41 to i32
  %mul.i.i = mul nuw nsw i32 %conv3.i.i, 1000
  %div18.i.i = lshr i32 %mul.i.i, 10
  %mul5.i.i = mul nuw nsw i32 %and1.i.i, 1000
  %div6.i.i = udiv i32 %mul5.i.i, %and.i.i
  %sub.i.i = add nsw i32 %div6.i.i, -1000
  %mul7.i.i = mul i32 %div18.i.i, %sub.i.i
  %div8.i.i = udiv i32 %mul7.i.i, 1000
  %42 = trunc i32 %div8.i.i to i16
  %phi.cast.i.i = xor i16 %42, -1
  br label %at91_adc_touch_pressure.exit.i

at91_adc_touch_pressure.exit.i:                   ; preds = %if.then.i.i, %if.then1.i.at91_adc_touch_pressure.exit.i_crit_edge
  %pres.0.i.i = phi i16 [ %phi.cast.i.i, %if.then.i.i ], [ 0, %if.then1.i.at91_adc_touch_pressure.exit.i_crit_edge ]
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %pres.0.i.i, ptr %val, align 2
  br label %if.end20

if.end20:                                         ; preds = %at91_adc_touch_pressure.exit.i, %if.end.i46.if.end20_crit_edge, %if.then16.if.end20_crit_edge, %if.then
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %val, align 2
  %arrayidx = getelementptr %struct.at91_adc_state, ptr %1, i32 0, i32 19, i32 %i.052
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx, align 2
  %inc = add i32 %i.052, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %at91_adc_chan_get.exit.cleanup_crit_edge
  %i.1 = phi i32 [ %inc, %if.end20 ], [ %i.052, %at91_adc_chan_get.exit.cleanup_crit_edge ]
  %47 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_scan_mask, align 4
  %49 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %platform, align 4
  %max_index24 = getelementptr inbounds %struct.at91_adc_platform, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %max_index24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_index24, align 4
  %add25 = add i32 %52, 1
  %add27 = add nuw nsw i32 %conv253, 1
  %call28 = tail call i32 @_find_next_bit_be(ptr noundef %48, i32 noundef %add25, i32 noundef %add27) #8
  %conv2 = and i32 %call28, 255
  %53 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %platform, align 4
  %max_index5 = getelementptr inbounds %struct.at91_adc_platform, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %max_index5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_index5, align 4
  %add6 = add i32 %56, 1
  %cmp = icmp ult i32 %conv2, %add6
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %workq = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %workq) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %remainder.i77.i = alloca i32, align 4
  %remainder.i75.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %state.i.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 4
  %call2 = tail call i32 @iio_trigger_validate_own_device(ptr noundef %5, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !295
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_st = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_st, align 8
  %tobool3.not = icmp eq ptr %15, null
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i.i) #8
  %dma_st.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15
  %18 = call ptr @memset(ptr %state.i.i, i32 255, i32 16)
  %19 = ptrtoint ptr %dma_st.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_st.i.i, align 8
  %cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cookie.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %device_tx_status.i.i.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 49
  %25 = ptrtoint ptr %device_tx_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_tx_status.i.i.i, align 4
  %call.i.i.i = call i32 %26(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then4.at91_adc_dma_size_done.exit.i_crit_edge

if.then4.at91_adc_dma_size_done.exit.i_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_dma_size_done.exit.i

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %27 = getelementptr inbounds %struct.dma_tx_state, ptr %state.i.i, i32 0, i32 2
  %rx_buf_sz.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15, i32 5
  %28 = ptrtoint ptr %rx_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_buf_sz.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %sub.i.i = sub i32 %29, %31
  %buf_idx.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15, i32 4
  %32 = ptrtoint ptr %buf_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %33)
  %cmp5.not.i.i = icmp slt i32 %sub.i.i, %33
  %add.i.i = select i1 %cmp5.not.i.i, i32 %29, i32 0
  %sub.pn.i.i = sub i32 %sub.i.i, %33
  %size.0.i.i = add i32 %sub.pn.i.i, %add.i.i
  br label %at91_adc_dma_size_done.exit.i

at91_adc_dma_size_done.exit.i:                    ; preds = %if.end.i.i, %if.then4.at91_adc_dma_size_done.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %size.0.i.i, %if.end.i.i ], [ 0, %if.then4.at91_adc_dma_size_done.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i.i) #8
  %call2.i = call i64 @iio_get_time_ns(ptr noundef %1) #8
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %17, align 8
  %platform.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 13, i32 3
  %36 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %ISR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %ISR.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ISR.i, align 2
  %conv.i = zext i16 %41 to i32
  %add.ptr.i = getelementptr i8, ptr %35, i32 %conv.i
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !294
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %at91_adc_dma_size_done.exit.i.if.end9.i_crit_edge, label %if.then.i

at91_adc_dma_size_done.exit.i.if.end9.i_crit_edge: ; preds = %at91_adc_dma_size_done.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %at91_adc_dma_size_done.exit.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @at91_adc_trigger_handler_dma._rs, ptr noundef nonnull @__func__.at91_adc_trigger_handler_dma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end9.i_crit_edge, label %do.end.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %45) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.then.i.if.end9.i_crit_edge, %at91_adc_dma_size_done.exit.i.if.end9.i_crit_edge
  %rx_buf_sz.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15, i32 5
  %46 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_buf_sz.i, align 4
  %conv10.i = sext i32 %47 to i64
  %watermark.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15, i32 6
  %48 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %watermark.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %50 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !291
  %call.i.i = call i64 @div_s64_rem(i64 noundef %conv10.i, i32 noundef %49, ptr noundef nonnull %remainder.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %conv13.i = trunc i64 %call.i.i to i32
  %conv14.i = sext i32 %retval.0.i.i to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i75.i) #8
  %51 = ptrtoint ptr %remainder.i75.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %remainder.i75.i, align 4, !annotation !291
  %call.i76.i = call i64 @div_s64_rem(i64 noundef %conv14.i, i32 noundef %conv13.i, ptr noundef nonnull %remainder.i75.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i75.i) #8
  %conv16.i = trunc i64 %call.i76.i to i32
  %dma_ts.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15, i32 7
  %52 = ptrtoint ptr %dma_ts.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %dma_ts.i, align 8
  %sub.i = sub i64 %call2.i, %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i77.i) #8
  %54 = ptrtoint ptr %remainder.i77.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %remainder.i77.i, align 4, !annotation !291
  %call.i78.i = call i64 @div_s64_rem(i64 noundef %sub.i, i32 noundef %conv16.i, ptr noundef nonnull %remainder.i77.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i77.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv13.i)
  %cmp.not83.i = icmp slt i32 %retval.0.i.i, %conv13.i
  br i1 %cmp.not83.i, label %if.end9.i.at91_adc_trigger_handler_dma.exit_crit_edge, label %while.body.lr.ph.i

if.end9.i.at91_adc_trigger_handler_dma.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_trigger_handler_dma.exit

while.body.lr.ph.i:                               ; preds = %if.end9.i
  %rx_buf.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15, i32 1
  %buf_idx.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 15, i32 4
  %div.i.i = sdiv i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv13.i)
  %cmp8.i.i = icmp sgt i32 %conv13.i, 1
  %oversampling_ratio.i.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 12
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %iio_push_to_buffers_with_timestamp.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %transferred_len.085.i = phi i32 [ %retval.0.i.i, %while.body.lr.ph.i ], [ %sub31.i, %iio_push_to_buffers_with_timestamp.exit.i.while.body.i_crit_edge ]
  %sample_index.084.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %iio_push_to_buffers_with_timestamp.exit.i.while.body.i_crit_edge ]
  %55 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf.i, align 4
  %57 = ptrtoint ptr %buf_idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_idx.i, align 8
  %arrayidx.i = getelementptr i8, ptr %56, i32 %58
  br i1 %cmp8.i.i, label %while.body.i.while.body.i.i_crit_edge, label %while.body.i.at91_adc_adjust_val_osr_array.exit.i_crit_edge

while.body.i.at91_adc_adjust_val_osr_array.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_adjust_val_osr_array.exit.i

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %at91_adc_adjust_val_osr.exit.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %at91_adc_adjust_val_osr.exit.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %arrayidx.i, i32 %i.09.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i.i, align 2
  %61 = ptrtoint ptr %oversampling_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %oversampling_ratio.i.i.i, align 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %62, label %while.body.i.i.at91_adc_adjust_val_osr.exit.i.i_crit_edge [
    i32 1, label %while.body.i.i.if.end5.sink.split.i.i.i_crit_edge
    i32 4, label %if.then3.i.i.i
  ]

while.body.i.i.if.end5.sink.split.i.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i.i.i

while.body.i.i.at91_adc_adjust_val_osr.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_adjust_val_osr.exit.i.i

if.then3.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i.i.i

if.end5.sink.split.i.i.i:                         ; preds = %if.then3.i.i.i, %while.body.i.i.if.end5.sink.split.i.i.i_crit_edge
  %.sink1.i.i.i = phi i16 [ 1, %if.then3.i.i.i ], [ 2, %while.body.i.i.if.end5.sink.split.i.i.i_crit_edge ]
  %shl4.i.i.i = shl i16 %60, %.sink1.i.i.i
  br label %at91_adc_adjust_val_osr.exit.i.i

at91_adc_adjust_val_osr.exit.i.i:                 ; preds = %if.end5.sink.split.i.i.i, %while.body.i.i.at91_adc_adjust_val_osr.exit.i.i_crit_edge
  %val.0.i.i = phi i16 [ %60, %while.body.i.i.at91_adc_adjust_val_osr.exit.i.i_crit_edge ], [ %shl4.i.i.i, %if.end5.sink.split.i.i.i ]
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %val.0.i.i, ptr %arrayidx.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div.i.i
  br i1 %exitcond.not.i.i, label %at91_adc_adjust_val_osr.exit.i.i.at91_adc_adjust_val_osr_array.exit.i_crit_edge, label %at91_adc_adjust_val_osr.exit.i.i.while.body.i.i_crit_edge

at91_adc_adjust_val_osr.exit.i.i.while.body.i.i_crit_edge: ; preds = %at91_adc_adjust_val_osr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

at91_adc_adjust_val_osr.exit.i.i.at91_adc_adjust_val_osr_array.exit.i_crit_edge: ; preds = %at91_adc_adjust_val_osr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_adjust_val_osr_array.exit.i

at91_adc_adjust_val_osr_array.exit.i:             ; preds = %at91_adc_adjust_val_osr.exit.i.i.at91_adc_adjust_val_osr_array.exit.i_crit_edge, %while.body.i.at91_adc_adjust_val_osr_array.exit.i_crit_edge
  %65 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_buf.i, align 4
  %67 = ptrtoint ptr %buf_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buf_idx.i, align 8
  %add.ptr26.i = getelementptr i8, ptr %66, i32 %68
  %69 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %scan_timestamp.i.i, align 8, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i, label %at91_adc_adjust_val_osr_array.exit.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge, label %if.then.i.i

at91_adc_adjust_val_osr_array.exit.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge: ; preds = %at91_adc_adjust_val_osr_array.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit.i

if.then.i.i:                                      ; preds = %at91_adc_adjust_val_osr_array.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %dma_ts.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %dma_ts.i, align 8
  %conv29.i = sext i32 %sample_index.084.i to i64
  %mul.i = mul i64 %call.i78.i, %conv29.i
  %add.i = add i64 %72, %mul.i
  %73 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scan_bytes.i.i, align 4
  %div1.i.i = lshr i32 %74, 3
  %sub.i79.i = add nsw i32 %div1.i.i, -1
  %arrayidx.i80.i = getelementptr i64, ptr %add.ptr26.i, i32 %sub.i79.i
  %75 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add.i, ptr %arrayidx.i80.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i

iio_push_to_buffers_with_timestamp.exit.i:        ; preds = %if.then.i.i, %at91_adc_adjust_val_osr_array.exit.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge
  %call.i81.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %add.ptr26.i) #8
  %sub31.i = sub i32 %transferred_len.085.i, %conv13.i
  %76 = ptrtoint ptr %buf_idx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buf_idx.i, align 8
  %add34.i = add i32 %77, %conv13.i
  %78 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_buf_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i, i32 %79)
  %cmp39.not.i = icmp slt i32 %add34.i, %79
  %spec.store.select.i = select i1 %cmp39.not.i, i32 %add34.i, i32 0
  %80 = ptrtoint ptr %buf_idx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.store.select.i, ptr %buf_idx.i, align 8
  %inc.i = add i32 %sample_index.084.i, 1
  %cmp.not.i = icmp slt i32 %sub31.i, %conv13.i
  br i1 %cmp.not.i, label %iio_push_to_buffers_with_timestamp.exit.i.at91_adc_trigger_handler_dma.exit_crit_edge, label %iio_push_to_buffers_with_timestamp.exit.i.while.body.i_crit_edge

iio_push_to_buffers_with_timestamp.exit.i.while.body.i_crit_edge: ; preds = %iio_push_to_buffers_with_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

iio_push_to_buffers_with_timestamp.exit.i.at91_adc_trigger_handler_dma.exit_crit_edge: ; preds = %iio_push_to_buffers_with_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_trigger_handler_dma.exit

at91_adc_trigger_handler_dma.exit:                ; preds = %iio_push_to_buffers_with_timestamp.exit.i.at91_adc_trigger_handler_dma.exit_crit_edge, %if.end9.i.at91_adc_trigger_handler_dma.exit_crit_edge
  %call45.i = call i64 @iio_get_time_ns(ptr noundef %1) #8
  %81 = ptrtoint ptr %dma_ts.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %call45.i, ptr %dma_ts.i, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %active_scan_mask.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %active_scan_mask.i.i, align 4
  %num_channels.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 14
  %84 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_channels.i.i, align 4
  %call1.i.i = tail call i32 @_find_next_bit_be(ptr noundef %83, i32 noundef %85, i32 noundef 0) #8
  %conv224.i.i = and i32 %call1.i.i, 255
  %86 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv224.i.i, i32 %87)
  %cmp25.i.i = icmp slt i32 %conv224.i.i, %87
  br i1 %cmp25.i.i, label %for.body.lr.ph.i.i, label %if.else.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge

if.else.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_active_scan_mask_to_reg.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else
  %channels.i.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %at91_adc_chan_get.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %88 = phi i32 [ %87, %for.body.lr.ph.i.i ], [ %98, %at91_adc_chan_get.exit.i.i.for.body.i.i_crit_edge ]
  %conv227.i.i = phi i32 [ %conv224.i.i, %for.body.lr.ph.i.i ], [ %conv2.i.i, %at91_adc_chan_get.exit.i.i.for.body.i.i_crit_edge ]
  %mask.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or.i.i, %at91_adc_chan_get.exit.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp6.i.i.i.i = icmp sgt i32 %88, 0
  br i1 %cmp6.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %for.body.i.i.at91_adc_chan_get.exit.i.i_crit_edge

for.body.i.i.at91_adc_chan_get.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_chan_get.exit.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %for.body.i.i
  %89 = ptrtoint ptr %channels.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %channels.i.i.i.i, align 8
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.07.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %scan_index.i.i.i.i = getelementptr %struct.iio_chan_spec, ptr %90, i32 %i.07.i.i.i.i, i32 4
  %91 = ptrtoint ptr %scan_index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %scan_index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %conv227.i.i)
  %cmp1.i.i.i.i = icmp eq i32 %92, %conv227.i.i
  br i1 %cmp1.i.i.i.i, label %if.end.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.07.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %88
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.at91_adc_chan_get.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.at91_adc_chan_get.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_chan_get.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr %struct.iio_chan_spec, ptr %90, i32 %i.07.i.i.i.i
  br label %at91_adc_chan_get.exit.i.i

at91_adc_chan_get.exit.i.i:                       ; preds = %if.end.i.i.i, %for.inc.i.i.i.i.at91_adc_chan_get.exit.i.i_crit_edge, %for.body.i.i.at91_adc_chan_get.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end.i.i.i ], [ null, %for.body.i.i.at91_adc_chan_get.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i.i.at91_adc_chan_get.exit.i.i_crit_edge ]
  %channel.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %retval.0.i.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %channel.i.i, align 4
  %shl.i.i = shl nuw i32 1, %94
  %or.i.i = or i32 %shl.i.i, %mask.026.i.i
  %95 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %active_scan_mask.i.i, align 4
  %add.i.i16 = add nuw nsw i32 %conv227.i.i, 1
  %call10.i.i = tail call i32 @_find_next_bit_be(ptr noundef %96, i32 noundef %88, i32 noundef %add.i.i16) #8
  %conv2.i.i = and i32 %call10.i.i, 255
  %97 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_channels.i.i, align 4
  %cmp.i.i = icmp slt i32 %conv2.i.i, %98
  br i1 %cmp.i.i, label %at91_adc_chan_get.exit.i.i.for.body.i.i_crit_edge, label %at91_adc_chan_get.exit.i.i.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge

at91_adc_chan_get.exit.i.i.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge: ; preds = %at91_adc_chan_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_active_scan_mask_to_reg.exit.i

at91_adc_chan_get.exit.i.i.for.body.i.i_crit_edge: ; preds = %at91_adc_chan_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

at91_adc_active_scan_mask_to_reg.exit.i:          ; preds = %at91_adc_chan_get.exit.i.i.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge, %if.else.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge
  %mask.0.lcssa.i.i = phi i32 [ 0, %if.else.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge ], [ %or.i.i, %at91_adc_chan_get.exit.i.i.at91_adc_active_scan_mask_to_reg.exit.i_crit_edge ]
  %platform.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 13, i32 3
  %99 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %platform.i.i, align 4
  %nr_channels.i.i = getelementptr inbounds %struct.at91_adc_platform, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %nr_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_channels.i.i, align 4
  %sub.i.i17 = sub i32 31, %102
  %shr.i.i = lshr i32 -1, %sub.i.i17
  %and13.i.i = and i32 %shr.i.i, %mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %cmp.not102.i = icmp eq i32 %and13.i.i, 0
  br i1 %cmp.not102.i, label %at91_adc_active_scan_mask_to_reg.exit.i.if.end.i_crit_edge, label %at91_adc_active_scan_mask_to_reg.exit.i.while.body.i19_crit_edge

at91_adc_active_scan_mask_to_reg.exit.i.while.body.i19_crit_edge: ; preds = %at91_adc_active_scan_mask_to_reg.exit.i
  br label %while.body.i19

at91_adc_active_scan_mask_to_reg.exit.i.if.end.i_crit_edge: ; preds = %at91_adc_active_scan_mask_to_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i19:                                   ; preds = %at91_adc_irq_mask.exit.i.while.body.i19_crit_edge, %at91_adc_active_scan_mask_to_reg.exit.i.while.body.i19_crit_edge
  %timeout.0103.i = phi i32 [ %dec.i, %at91_adc_irq_mask.exit.i.while.body.i19_crit_edge ], [ 50, %at91_adc_active_scan_mask_to_reg.exit.i.while.body.i19_crit_edge ]
  %103 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %17, align 8
  %105 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %platform.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %ISR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %ISR.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %ISR.i.i, align 2
  %conv.i.i = zext i16 %110 to i32
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 %conv.i.i
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !294
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #8
  %113 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %platform.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %EOC_ISR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %116, i32 0, i32 15
  %117 = ptrtoint ptr %EOC_ISR.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %EOC_ISR.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool.not.i.i18 = icmp eq i16 %118, 0
  br i1 %tobool.not.i.i18, label %while.body.i19.at91_adc_irq_status.exit.i_crit_edge, label %if.then.i.i20

while.body.i19.at91_adc_irq_status.exit.i_crit_edge: ; preds = %while.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_irq_status.exit.i

if.then.i.i20:                                    ; preds = %while.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %17, align 8
  %conv10.i.i = zext i16 %118 to i32
  %add.ptr11.i.i = getelementptr i8, ptr %120, i32 %conv10.i.i
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #8, !srcloc !294
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #8
  br label %at91_adc_irq_status.exit.i

at91_adc_irq_status.exit.i:                       ; preds = %if.then.i.i20, %while.body.i19.at91_adc_irq_status.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %122, %if.then.i.i20 ], [ %112, %while.body.i19.at91_adc_irq_status.exit.i_crit_edge ]
  %123 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %17, align 8
  %125 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %platform.i.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %IMR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %128, i32 0, i32 10
  %129 = ptrtoint ptr %IMR.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %IMR.i.i, align 2
  %conv.i85.i = zext i16 %130 to i32
  %add.ptr.i86.i = getelementptr i8, ptr %124, i32 %conv.i85.i
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i) #8, !srcloc !294
  %132 = ptrtoint ptr %platform.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %platform.i.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %EOC_IMR.i.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %135, i32 0, i32 14
  %136 = ptrtoint ptr %EOC_IMR.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %EOC_IMR.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool.not.i87.i = icmp eq i16 %137, 0
  br i1 %tobool.not.i87.i, label %at91_adc_irq_status.exit.i.at91_adc_irq_mask.exit.i_crit_edge, label %if.then.i90.i

at91_adc_irq_status.exit.i.at91_adc_irq_mask.exit.i_crit_edge: ; preds = %at91_adc_irq_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_irq_mask.exit.i

if.then.i90.i:                                    ; preds = %at91_adc_irq_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %17, align 8
  %conv10.i88.i = zext i16 %137 to i32
  %add.ptr11.i89.i = getelementptr i8, ptr %139, i32 %conv10.i88.i
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i89.i) #8, !srcloc !294
  br label %at91_adc_irq_mask.exit.i

at91_adc_irq_mask.exit.i:                         ; preds = %if.then.i90.i, %at91_adc_irq_status.exit.i.at91_adc_irq_mask.exit.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #8
  %dec.i = add nsw i32 %timeout.0103.i, -1
  %and.i = and i32 %storemerge.i.i, %and13.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and13.i.i)
  %cmp.not.i21 = icmp eq i32 %and.i, %and13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i22 = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.not.i21, i1 true, i1 %tobool.not.i22
  br i1 %or.cond.i, label %while.end.i, label %at91_adc_irq_mask.exit.i.while.body.i19_crit_edge

at91_adc_irq_mask.exit.i.while.body.i19_crit_edge: ; preds = %at91_adc_irq_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i19

while.end.i:                                      ; preds = %at91_adc_irq_mask.exit.i
  br i1 %tobool.not.i22, label %while.end.i.if.end5_crit_edge, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.end.i.if.end5_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i:                                         ; preds = %while.end.i.if.end.i_crit_edge, %at91_adc_active_scan_mask_to_reg.exit.i.if.end.i_crit_edge
  %141 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %active_scan_mask.i.i, align 4
  %143 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_channels.i.i, align 4
  %call3.i = tail call i32 @_find_next_bit_be(ptr noundef %142, i32 noundef %144, i32 noundef 0) #8
  %conv4104.i = and i32 %call3.i, 255
  %145 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4104.i, i32 %146)
  %cmp6105.i = icmp slt i32 %conv4104.i, %146
  br i1 %cmp6105.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %channels.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %oversampling_ratio.i.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %147 = phi i32 [ %146, %for.body.lr.ph.i ], [ %170, %cleanup.i.for.body.i_crit_edge ]
  %conv4108.i = phi i32 [ %conv4104.i, %for.body.lr.ph.i ], [ %conv4.i, %cleanup.i.for.body.i_crit_edge ]
  %i.0106.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %cleanup.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp6.i.i.i = icmp sgt i32 %147, 0
  br i1 %cmp6.i.i.i, label %for.body.lr.ph.i.i.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body.i
  %148 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %channels.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.07.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %scan_index.i.i.i = getelementptr %struct.iio_chan_spec, ptr %149, i32 %i.07.i.i.i, i32 4
  %150 = ptrtoint ptr %scan_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %scan_index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %conv4108.i)
  %cmp1.i.i.i = icmp eq i32 %151, %conv4108.i
  br i1 %cmp1.i.i.i, label %at91_adc_chan_get.exit.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %147
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cleanup.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.cleanup.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

at91_adc_chan_get.exit.i:                         ; preds = %for.body.i.i.i
  %add.ptr.i92.i = getelementptr %struct.iio_chan_spec, ptr %149, i32 %i.07.i.i.i
  %tobool10.not.i = icmp eq ptr %add.ptr.i92.i, null
  br i1 %tobool10.not.i, label %at91_adc_chan_get.exit.i.cleanup.i_crit_edge, label %if.end12.i

at91_adc_chan_get.exit.i.cleanup.i_crit_edge:     ; preds = %at91_adc_chan_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end12.i:                                       ; preds = %at91_adc_chan_get.exit.i
  %152 = ptrtoint ptr %add.ptr.i92.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %add.ptr.i92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp13.i = icmp eq i32 %153, 0
  br i1 %cmp13.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end12.i
  %154 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %17, align 8
  %address.i = getelementptr %struct.iio_chan_spec, ptr %149, i32 %i.07.i.i.i, i32 3
  %156 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %address.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %155, i32 %157
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #8, !srcloc !294
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #8
  %160 = ptrtoint ptr %oversampling_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %oversampling_ratio.i.i, align 8
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %161, label %if.then15.i.at91_adc_adjust_val_osr.exit.i_crit_edge [
    i32 1, label %if.then15.i.if.end5.sink.split.i.i_crit_edge
    i32 4, label %if.then3.i.i
  ]

if.then15.i.if.end5.sink.split.i.i_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i.i

if.then15.i.at91_adc_adjust_val_osr.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_adc_adjust_val_osr.exit.i

if.then3.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split.i.i

if.end5.sink.split.i.i:                           ; preds = %if.then3.i.i, %if.then15.i.if.end5.sink.split.i.i_crit_edge
  %.sink1.i.i = phi i32 [ 1, %if.then3.i.i ], [ 2, %if.then15.i.if.end5.sink.split.i.i_crit_edge ]
  %shl4.i.i = shl i32 %159, %.sink1.i.i
  br label %at91_adc_adjust_val_osr.exit.i

at91_adc_adjust_val_osr.exit.i:                   ; preds = %if.end5.sink.split.i.i, %if.then15.i.at91_adc_adjust_val_osr.exit.i_crit_edge
  %val.0.i = phi i32 [ %159, %if.then15.i.at91_adc_adjust_val_osr.exit.i_crit_edge ], [ %shl4.i.i, %if.end5.sink.split.i.i ]
  %conv18.i = trunc i32 %val.0.i to i16
  %arrayidx.i24 = getelementptr %struct.at91_adc_state, ptr %17, i32 0, i32 19, i32 %i.0106.i
  %163 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv18.i, ptr %arrayidx.i24, align 2
  br label %if.end39.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx20.i = getelementptr %struct.at91_adc_state, ptr %17, i32 0, i32 19, i32 %i.0106.i
  %164 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %arrayidx20.i, align 2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1276, i32 noundef 9, ptr noundef nonnull @.str.91) #8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i, %at91_adc_adjust_val_osr.exit.i
  %inc.i25 = add i32 %i.0106.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end39.i, %at91_adc_chan_get.exit.i.cleanup.i_crit_edge, %for.inc.i.i.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %i.1.i = phi i32 [ %inc.i25, %if.end39.i ], [ %i.0106.i, %at91_adc_chan_get.exit.i.cleanup.i_crit_edge ], [ %i.0106.i, %for.body.i.cleanup.i_crit_edge ], [ %i.0106.i, %for.inc.i.i.i.cleanup.i_crit_edge ]
  %165 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %active_scan_mask.i.i, align 4
  %167 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_channels.i.i, align 4
  %add.i26 = add nuw nsw i32 %conv4108.i, 1
  %call43.i = tail call i32 @_find_next_bit_be(ptr noundef %166, i32 noundef %168, i32 noundef %add.i26) #8
  %conv4.i = and i32 %call43.i, 255
  %169 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_channels.i.i, align 4
  %cmp6.i = icmp slt i32 %conv4.i, %170
  br i1 %cmp6.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %buffer45.i = getelementptr inbounds %struct.at91_adc_state, ptr %17, i32 0, i32 19
  %scan_timestamp.i.i27 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %171 = ptrtoint ptr %scan_timestamp.i.i27 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %scan_timestamp.i.i27, align 8, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i93.i = icmp eq i8 %172, 0
  br i1 %tobool.not.i93.i, label %for.end.i.iio_push_to_buffers_with_timestamp.exit.i32_crit_edge, label %if.then.i95.i

for.end.i.iio_push_to_buffers_with_timestamp.exit.i32_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit.i32

if.then.i95.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %timestamp.i = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %173 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %timestamp.i, align 8
  %scan_bytes.i.i28 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %175 = ptrtoint ptr %scan_bytes.i.i28 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %scan_bytes.i.i28, align 4
  %div1.i.i29 = lshr i32 %176, 3
  %sub.i94.i = add nsw i32 %div1.i.i29, -1
  %arrayidx.i.i30 = getelementptr i64, ptr %buffer45.i, i32 %sub.i94.i
  %177 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %174, ptr %arrayidx.i.i30, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i32

iio_push_to_buffers_with_timestamp.exit.i32:      ; preds = %if.then.i95.i, %for.end.i.iio_push_to_buffers_with_timestamp.exit.i32_crit_edge
  %call.i.i31 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer45.i) #8
  br label %if.end5

if.end5:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit.i32, %while.end.i.if.end5_crit_edge, %at91_adc_trigger_handler_dma.exit
  %178 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %179) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_get_watermark(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %watermark = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15, i32 6
  %2 = ptrtoint ptr %watermark to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %watermark, align 8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.87, i32 noundef %3) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_get_fifo_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dma_st = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_st, align 8
  %tobool = icmp ne ptr %3, null
  %lnot.ext = zext i1 %tobool to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.87, i32 noundef %lnot.ext) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_buffer_postdisable(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %platform.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform.i, align 4
  %max_index.i = getelementptr inbounds %struct.at91_adc_platform, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %max_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_index.i, align 4
  %add.i = add i32 %5, 1
  %channels_bitmask.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask.i, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %7, ptr noundef %channels_bitmask.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %IDR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %IDR.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %IDR.i, align 2
  %conv.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 96) #8, !srcloc !295
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %TSMR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %TSMR.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %TSMR.i, align 2
  %conv5.i = zext i16 %23 to i32
  %add.ptr6.i = getelementptr i8, ptr %17, i32 %conv5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !295
  br label %cleanup59

if.end:                                           ; preds = %entry
  %currentmode = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %24 = ptrtoint ptr %currentmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %currentmode, align 4
  %and = and i32 %25, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup59_crit_edge, label %if.end4

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.end4:                                          ; preds = %if.end
  %26 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %active_scan_mask.i, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %28 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_channels, align 4
  %call5 = tail call i32 @_find_next_bit_be(ptr noundef %27, i32 noundef %29, i32 noundef 0) #8
  %conv6100 = and i32 %call5, 255
  %30 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6100, i32 %31)
  %cmp101 = icmp slt i32 %conv6100, %31
  br i1 %cmp101, label %for.body.lr.ph, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %channels.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %dma_st = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %32 = phi i32 [ %31, %for.body.lr.ph ], [ %63, %cleanup.for.body_crit_edge ]
  %conv6102 = phi i32 [ %conv6100, %for.body.lr.ph ], [ %conv6, %cleanup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.i.i = icmp sgt i32 %32, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %for.body
  %33 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channels.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %scan_index.i.i = getelementptr %struct.iio_chan_spec, ptr %34, i32 %i.07.i.i, i32 4
  %35 = ptrtoint ptr %scan_index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scan_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv6102)
  %cmp1.i.i = icmp eq i32 %36, %conv6102
  br i1 %cmp1.i.i, label %at91_adc_chan_get.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

at91_adc_chan_get.exit:                           ; preds = %for.body.i.i
  %add.ptr.i89 = getelementptr %struct.iio_chan_spec, ptr %34, i32 %i.07.i.i
  %tobool11.not = icmp eq ptr %add.ptr.i89, null
  br i1 %tobool11.not, label %at91_adc_chan_get.exit.cleanup_crit_edge, label %if.end13

at91_adc_chan_get.exit.cleanup_crit_edge:         ; preds = %at91_adc_chan_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %at91_adc_chan_get.exit
  %37 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i89, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %38, label %if.end20 [
    i32 32, label %if.end13.cleanup_crit_edge
    i32 17, label %if.end13.cleanup_crit_edge109
  ]

if.end13.cleanup_crit_edge109:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %channel = getelementptr %struct.iio_chan_spec, ptr %34, i32 %i.07.i.i, i32 1
  %40 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %41
  %42 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %45 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %CHDR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %CHDR to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %CHDR, align 2
  %conv21 = zext i16 %50 to i32
  %add.ptr = getelementptr i8, ptr %44, i32 %conv21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %42) #8, !srcloc !295
  %51 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_st, align 8
  %tobool22.not = icmp eq ptr %52, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %address = getelementptr %struct.iio_chan_spec, ptr %34, i32 %i.07.i.i, i32 3
  %55 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %address, align 4
  %add.ptr25 = getelementptr i8, ptr %54, i32 %56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !294
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end13.cleanup_crit_edge109, %at91_adc_chan_get.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %58 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %active_scan_mask.i, align 4
  %60 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_channels, align 4
  %add = add nuw nsw i32 %conv6102, 1
  %call31 = tail call i32 @_find_next_bit_be(ptr noundef %59, i32 noundef %61, i32 noundef %add) #8
  %conv6 = and i32 %call31, 255
  %62 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_channels, align 4
  %cmp = icmp slt i32 %conv6, %63
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end4.for.end_crit_edge
  %dma_st.i = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 15
  %64 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_st.i, align 8
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %at91_adc_buffer_check_use_irq.exit, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

at91_adc_buffer_check_use_irq.exit:               ; preds = %for.end
  %trig.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %66 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %trig.i, align 4
  %call.i = tail call i32 @iio_trigger_validate_own_device(ptr noundef %67, ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then34, label %at91_adc_buffer_check_use_irq.exit.if.end41_crit_edge

at91_adc_buffer_check_use_irq.exit.if.end41_crit_edge: ; preds = %at91_adc_buffer_check_use_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then34:                                        ; preds = %at91_adc_buffer_check_use_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %70 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %platform.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %IDR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %IDR to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %IDR, align 2
  %conv39 = zext i16 %75 to i32
  %add.ptr40 = getelementptr i8, ptr %69, i32 %conv39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 1) #8, !srcloc !295
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %at91_adc_buffer_check_use_irq.exit.if.end41_crit_edge, %for.end.if.end41_crit_edge
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %78 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %platform.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %OVER = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %81, i32 0, i32 18
  %82 = ptrtoint ptr %OVER to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %OVER, align 2
  %conv47 = zext i16 %83 to i32
  %add.ptr48 = getelementptr i8, ptr %77, i32 %conv47
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #8, !srcloc !294
  %85 = ptrtoint ptr %dma_st.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dma_st.i, align 8
  %tobool53.not = icmp eq ptr %86, null
  br i1 %tobool53.not, label %if.end41.cleanup59_crit_edge, label %if.then54

if.end41.cleanup59_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.then54:                                        ; preds = %if.end41
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 47
  %89 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i92 = icmp eq ptr %90, null
  br i1 %tobool.not.i.i92, label %if.then54.cleanup59_crit_edge, label %dmaengine_terminate_async.exit.i

if.then54.cleanup59_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

dmaengine_terminate_async.exit.i:                 ; preds = %if.then54
  %call.i.i93 = tail call i32 %90(ptr noundef nonnull %86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool.not.i94 = icmp eq i32 %call.i.i93, 0
  br i1 %tobool.not.i94, label %if.end.i95, label %dmaengine_terminate_async.exit.i.cleanup59_crit_edge

dmaengine_terminate_async.exit.i.cleanup59_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.end.i95:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.92, i32 noundef 1169) #8
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %86, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %92, i32 0, i32 48
  %93 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %94, null
  br i1 %tobool.not.i1.i, label %if.end.i95.cleanup59_crit_edge, label %if.then.i2.i

if.end.i95.cleanup59_crit_edge:                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59

if.then.i2.i:                                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %94(ptr noundef nonnull %86) #8
  br label %cleanup59

cleanup59:                                        ; preds = %if.then.i2.i, %if.end.i95.cleanup59_crit_edge, %dmaengine_terminate_async.exit.i.cleanup59_crit_edge, %if.then54.cleanup59_crit_edge, %if.end41.cleanup59_crit_edge, %if.end.cleanup59_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.end.cleanup59_crit_edge ], [ 0, %if.end41.cleanup59_crit_edge ], [ 0, %if.then54.cleanup59_crit_edge ], [ 0, %dmaengine_terminate_async.exit.i.cleanup59_crit_edge ], [ 0, %if.end.i95.cleanup59_crit_edge ], [ 0, %if.then.i2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_configure_trigger(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %TRGR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %TRGR to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %TRGR, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !294
  %13 = and i32 %12, -117440513
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  br i1 %state, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %selected_trig = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %selected_trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %selected_trig, align 8
  %trgmod_value = getelementptr inbounds %struct.at91_adc_trigger, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %trgmod_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trgmod_value, align 4
  %or = or i32 %18, %14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %or, %if.then ], [ %14, %entry.if.end_crit_edge ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %status.0)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %22 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %TRGR7 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %25, i32 0, i32 29
  %26 = ptrtoint ptr %TRGR7 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %TRGR7, align 2
  %conv8 = zext i16 %27 to i32
  %add.ptr9 = getelementptr i8, ptr %21, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %19) #8, !srcloc !295
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_adc_reenable_trigger(ptr nocapture noundef readonly %trig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dma_st = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dma_st to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_st, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %7) #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %LCDR = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %LCDR to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %LCDR, align 2
  %conv = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !294
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %5 = load ptr, ptr %3, align 8
  %platform = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !295
  %per_clk = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %per_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %per_clk, align 8
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  %vref = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vref, align 8
  %call2 = tail call i32 @regulator_disable(ptr noundef %15) #8
  %reg = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %17) #8
  %call4 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_adc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end6:                                          ; preds = %if.end
  %vref = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref, align 8
  %call7 = tail call i32 @regulator_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.reg_disable_resume_crit_edge

if.end6.reg_disable_resume_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_disable_resume

if.end10:                                         ; preds = %if.end6
  %per_clk = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %per_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %per_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.vref_disable_resume_crit_edge

if.end10.vref_disable_resume_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %vref_disable_resume

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end14, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %vref_disable_resume

if.end14:                                         ; preds = %if.end.i
  tail call fastcc void @at91_adc_hw_init(ptr noundef %1)
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %11, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end14.cleanup_crit_edge, label %if.else.i.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end14
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %platform.i = getelementptr inbounds %struct.at91_adc_state, ptr %13, i32 0, i32 13, i32 3
  %14 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform.i, align 4
  %max_index.i = getelementptr inbounds %struct.at91_adc_platform, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %max_index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_index.i, align 4
  %add.i = add i32 %17, 1
  %channels_bitmask.i = getelementptr inbounds %struct.at91_adc_state, ptr %13, i32 0, i32 16, i32 3
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_scan_mask.i, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %19, ptr noundef %channels_bitmask.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i44.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i44.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %current_sample_rate.i = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %current_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_sample_rate.i, align 8
  %div.i = udiv i32 %21, 1000
  %div7.i = udiv i32 %21, 5000
  %conv9.i = and i32 %div7.i, 65535
  %conv9.numleadingzeros.i = tail call i32 @llvm.ctlz.i32(i32 %conv9.i, i1 false) #8, !range !296
  %.neg.i = mul i32 %conv9.numleadingzeros.i, -268435456
  %or17.i = add i32 %.neg.i, 289407522
  %22 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %platform20.i = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %25 = ptrtoint ptr %platform20.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %platform20.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %TSMR22.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %TSMR22.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %TSMR22.i, align 2
  %conv23.i = zext i16 %30 to i32
  %add.ptr24.i = getelementptr i8, ptr %24, i32 %conv23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %22) #8, !srcloc !295
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 8
  %33 = ptrtoint ptr %platform20.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform20.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %ACR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %ACR.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ACR.i, align 2
  %conv29.i = zext i16 %38 to i32
  %add.ptr30.i = getelementptr i8, ptr %32, i32 %conv29.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !294
  %40 = and i32 %39, -50331649
  %41 = or i32 %40, 33554432
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %44 = ptrtoint ptr %platform20.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %platform20.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %ACR37.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %47, i32 0, i32 24
  %48 = ptrtoint ptr %ACR37.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ACR37.i, align 2
  %conv38.i = zext i16 %49 to i32
  %add.ptr39.i = getelementptr i8, ptr %43, i32 %conv38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %41) #8, !srcloc !295
  %mul40.i = mul i32 %div.i, 2000
  %div41.i = udiv i32 %mul40.i, 1000
  %50 = trunc i32 %div41.i to i16
  %conv46.i = add i16 %50, -1
  %touch_st.i = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16
  %51 = ptrtoint ptr %touch_st.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv46.i, ptr %touch_st.i, align 8
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 8
  %54 = ptrtoint ptr %platform20.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %platform20.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %IER.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %IER.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %IER.i, align 2
  %conv51.i = zext i16 %59 to i32
  %add.ptr52.i = getelementptr i8, ptr %53, i32 %conv51.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 32) #8, !srcloc !295
  br label %cleanup

if.else:                                          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %trig = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 7
  %60 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trig, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %61, i32 0, i32 4, i32 8
  %62 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv.i.i46 = getelementptr inbounds %struct.iio_dev, ptr %63, i32 0, i32 19
  %64 = ptrtoint ptr %priv.i.i46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i.i46, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %platform.i47 = getelementptr inbounds %struct.at91_adc_state, ptr %65, i32 0, i32 13, i32 3
  %68 = ptrtoint ptr %platform.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platform.i47, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %TRGR.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %71, i32 0, i32 29
  %72 = ptrtoint ptr %TRGR.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %TRGR.i, align 2
  %conv.i = zext i16 %73 to i32
  %add.ptr.i = getelementptr i8, ptr %67, i32 %conv.i
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !294
  %75 = and i32 %74, -117440513
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  %selected_trig.i = getelementptr inbounds %struct.at91_adc_state, ptr %65, i32 0, i32 8
  %77 = ptrtoint ptr %selected_trig.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %selected_trig.i, align 8
  %trgmod_value.i = getelementptr inbounds %struct.at91_adc_trigger, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %trgmod_value.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %trgmod_value.i, align 4
  %or.i = or i32 %80, %76
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %82 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %65, align 8
  %84 = ptrtoint ptr %platform.i47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %platform.i47, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %TRGR7.i = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %87, i32 0, i32 29
  %88 = ptrtoint ptr %TRGR7.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %TRGR7.i, align 2
  %conv8.i = zext i16 %89 to i32
  %add.ptr9.i = getelementptr i8, ptr %83, i32 %conv8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %81) #8, !srcloc !295
  br label %cleanup

vref_disable_resume:                              ; preds = %if.then3.i, %if.end10.vref_disable_resume_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end10.vref_disable_resume_crit_edge ]
  %90 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vref, align 8
  %call23 = tail call i32 @regulator_disable(ptr noundef %91) #8
  br label %reg_disable_resume

reg_disable_resume:                               ; preds = %vref_disable_resume, %if.end6.reg_disable_resume_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.reg_disable_resume_crit_edge ], [ %retval.0.i.ph, %vref_disable_resume ]
  %92 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg, align 4
  %call25 = tail call i32 @regulator_disable(ptr noundef %93) #8
  br label %do.end

do.end:                                           ; preds = %reg_disable_resume, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.1 = phi i32 [ %call2, %entry.do.end_crit_edge ], [ %call3, %if.end.do.end_crit_edge ], [ %ret.0, %reg_disable_resume ]
  %dev26 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.122) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else, %if.then19, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end ], [ 0, %if.then19 ], [ 0, %if.else ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !176, !177, !178, !180, !181, !183, !185, !186, !188, !189, !190, !191, !192, !193, !195, !197, !199, !201, !203, !205, !206, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !280, !281}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !{ptr @__initcall__kmod_at91_sama5d2_adc__296_2196_at91_adc_driver_init6, !1, !"__initcall__kmod_at91_sama5d2_adc__296_2196_at91_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2196, i32 1}
!2 = !{ptr @__exitcall_at91_adc_driver_exit, !1, !"__exitcall_at91_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2198, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2199, i32 1}
!7 = !{ptr @__UNIQUE_ID_description299, !8, !"__UNIQUE_ID_description299", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2200, i32 1}
!9 = !{ptr @__UNIQUE_ID_file300, !10, !"__UNIQUE_ID_file300", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2201, i32 1}
!11 = !{ptr @__UNIQUE_ID_license301, !10, !"__UNIQUE_ID_license301", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2191, i32 11}
!14 = !{ptr @at91_adc_driver, !15, !"at91_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2187, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1954, i32 8}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1957, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @at91_adc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @at91_adc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1963, i32 8}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1966, i32 3}
!30 = !{ptr @at91_adc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @at91_adc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1971, i32 48}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1974, i32 3}
!36 = !{ptr @at91_adc_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @at91_adc_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1980, i32 8}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1982, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @at91_adc_probe.__UNIQUE_ID_ddebug295, !41, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1996, i32 3}
!46 = !{ptr @at91_adc_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @at91_adc_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @at91_adc_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2000, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @at91_adc_probe.__key.22, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2001, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @at91_adc_probe.__key.24, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2002, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2019, i32 41}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2023, i32 43}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2027, i32 44}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2063, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @at91_adc_probe._entry.29, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @at91_adc_probe._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2070, i32 3}
!70 = !{ptr @at91_adc_probe._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @at91_adc_probe._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2073, i32 2}
!74 = !{ptr @at91_adc_probe._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @at91_adc_probe._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @at91_adc_info, !77, !"at91_adc_info", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1874, i32 30}
!78 = !{ptr @at91_adc_attribute_group, !79, !"at91_adc_attribute_group", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1862, i32 37}
!80 = !{ptr @at91_adc_attributes, !81, !"at91_adc_attributes", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1857, i32 26}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1852, i32 8}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @iio_const_attr_oversampling_ratio_available, !83, !"iio_const_attr_oversampling_ratio_available", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 870, i32 3}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @at91_adc_touch_pos.__UNIQUE_ID_ddebug290, !87, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 876, i32 3}
!92 = !{ptr @at91_adc_touch_pos._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @at91_adc_touch_pos._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1397, i32 2}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @at91_adc_setup_samp_freq.__UNIQUE_ID_ddebug292, !95, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!98 = distinct !{null, !99, !"startup_lookup", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1359, i32 28}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1758, i32 3}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @at91_adc_set_watermark.__UNIQUE_ID_ddebug293, !101, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1762, i32 2}
!106 = !{ptr @at91_adc_set_watermark.__UNIQUE_ID_ddebug294, !105, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1682, i32 46}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1684, i32 3}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @at91_adc_dma_init._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @at91_adc_dma_init._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1694, i32 3}
!116 = !{ptr @at91_adc_dma_init._entry.52, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @at91_adc_dma_init._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1707, i32 3}
!120 = !{ptr @at91_adc_dma_init._entry.55, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @at91_adc_dma_init._entry_ptr.57, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1711, i32 2}
!124 = !{ptr @at91_adc_dma_init._entry.58, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @at91_adc_dma_init._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1723, i32 2}
!128 = !{ptr @at91_adc_dma_init._entry.61, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @at91_adc_dma_init._entry_ptr.63, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1126, i32 3}
!132 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @at91_adc_buffer_prepare._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @at91_adc_buffer_prepare._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1060, i32 3}
!137 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @at91_adc_dma_start._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @at91_adc_dma_start._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1070, i32 3}
!142 = !{ptr @at91_adc_dma_start._entry.68, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @at91_adc_dma_start._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1083, i32 2}
!146 = !{ptr @at91_adc_dma_start.__UNIQUE_ID_ddebug291, !145, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 517, i32 11}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 523, i32 11}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 529, i32 11}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 535, i32 11}
!155 = !{ptr @at91_adc_trigger_list, !156, !"at91_adc_trigger_list", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 515, i32 38}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1515, i32 3}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1899, i32 3}
!161 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @at91_adc_buffer_and_trigger_init._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @at91_adc_buffer_and_trigger_init._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1908, i32 3}
!166 = !{ptr @at91_adc_buffer_and_trigger_init._entry.79, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @at91_adc_buffer_and_trigger_init._entry_ptr.81, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @at91_adc_fifo_attributes, !169, !"at91_adc_fifo_attributes", i1 false, i1 false}
!169 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1866, i32 32}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1849, i32 8}
!172 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @iio_const_attr_hwfifo_watermark_min, !171, !"iio_const_attr_hwfifo_watermark_min", i1 false, i1 false}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1850, i32 8}
!176 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @iio_const_attr_hwfifo_watermark_max, !175, !"iio_const_attr_hwfifo_watermark_max", i1 false, i1 false}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1846, i32 8}
!180 = !{ptr @iio_dev_attr_hwfifo_watermark, !179, !"iio_dev_attr_hwfifo_watermark", i1 false, i1 false}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1841, i32 35}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1844, i32 8}
!185 = !{ptr @iio_dev_attr_hwfifo_enabled, !184, !"iio_dev_attr_hwfifo_enabled", i1 false, i1 false}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1295, i32 3}
!188 = !{ptr @at91_adc_trigger_handler_dma._rs, !187, !"_rs", i1 false, i1 false}
!189 = !{ptr @__func__.at91_adc_trigger_handler_dma, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @at91_adc_trigger_handler_dma._entry, !187, !"_entry", i1 false, i1 false}
!192 = !{ptr @at91_adc_trigger_handler_dma._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1276, i32 4}
!195 = !{ptr @at91_buffer_setup_ops, !196, !"at91_buffer_setup_ops", i1 false, i1 false}
!196 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1202, i32 42}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1212, i32 45}
!201 = !{ptr @at91_adc_trigger_ops, !202, !"at91_adc_trigger_ops", i1 false, i1 false}
!202 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 984, i32 37}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 1746, i32 2}
!205 = !{ptr @at91_adc_dma_disable._entry, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @at91_adc_dma_disable._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @at91_adc_dt_match, !208, !"at91_adc_dt_match", i1 false, i1 false}
!208 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2174, i32 34}
!209 = !{ptr @sama5d2_platform, !210, !"sama5d2_platform", i1 false, i1 false}
!210 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 596, i32 39}
!211 = !{ptr @sama5d2_layout, !212, !"sama5d2_layout", i1 false, i1 false}
!212 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 231, i32 41}
!213 = !{ptr @.str.95, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 543, i32 2}
!215 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 544, i32 2}
!217 = !{ptr @.str.97, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 545, i32 2}
!219 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 546, i32 2}
!221 = !{ptr @.str.99, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 547, i32 2}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 548, i32 2}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 549, i32 2}
!227 = !{ptr @.str.102, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 550, i32 2}
!229 = !{ptr @.str.103, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 551, i32 2}
!231 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 552, i32 2}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 553, i32 2}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 554, i32 2}
!237 = !{ptr @.str.107, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 556, i32 2}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 557, i32 2}
!241 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 558, i32 2}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 559, i32 2}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 560, i32 2}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 561, i32 2}
!249 = !{ptr @.str.113, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 563, i32 2}
!251 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 564, i32 2}
!253 = !{ptr @.str.115, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 565, i32 2}
!255 = !{ptr @at91_sama5d2_adc_channels, !256, !"at91_sama5d2_adc_channels", i1 false, i1 false}
!256 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 542, i32 35}
!257 = !{ptr @sama7g5_platform, !258, !"sama7g5_platform", i1 false, i1 false}
!258 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 617, i32 39}
!259 = !{ptr @sama7g5_layout, !260, !"sama7g5_layout", i1 false, i1 false}
!260 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 266, i32 41}
!261 = !{ptr @.str.116, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 581, i32 2}
!263 = !{ptr @.str.117, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 582, i32 2}
!265 = !{ptr @.str.118, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 583, i32 2}
!267 = !{ptr @.str.119, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 584, i32 2}
!269 = !{ptr @.str.120, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 591, i32 2}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 592, i32 2}
!273 = !{ptr @at91_sama7g5_adc_channels, !274, !"at91_sama7g5_adc_channels", i1 false, i1 false}
!274 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 568, i32 35}
!275 = !{ptr @at91_adc_pm_ops, !276, !"at91_adc_pm_ops", i1 false, i1 false}
!276 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2172, i32 8}
!277 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/iio/adc/at91-sama5d2_adc.c", i32 2168, i32 2}
!279 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @at91_adc_resume._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @at91_adc_resume._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{i32 1, !"wchar_size", i32 2}
!283 = !{i32 1, !"min_enum_size", i32 4}
!284 = !{i32 8, !"branch-target-enforcement", i32 0}
!285 = !{i32 8, !"sign-return-address", i32 0}
!286 = !{i32 8, !"sign-return-address-all", i32 0}
!287 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!288 = !{i32 7, !"uwtable", i32 1}
!289 = !{i32 7, !"frame-pointer", i32 2}
!290 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!291 = !{!"auto-init"}
!292 = !{i64 2148782540, i64 2148782545, i64 2148782558, i64 2148782602, i64 2148782636, i64 2148782657}
!293 = !{i8 0, i8 2}
!294 = !{i64 6317106}
!295 = !{i64 6316688}
!296 = !{i32 16, i32 33}
