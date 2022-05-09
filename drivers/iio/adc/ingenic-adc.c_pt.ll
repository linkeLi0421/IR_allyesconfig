; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ingenic-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/ingenic-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ingenic_adc_soc_data = type { i32, i32, ptr, i32, ptr, i32, i8, ptr, i32, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.ingenic_adc = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_ingenic_adc__195_931_ingenic_adc_driver_init6 = internal global ptr @ingenic_adc_driver_init, section ".initcall6.init", align 4
@ingenic_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ingenic_adc_driver_exit = internal global ptr @ingenic_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file196 = internal constant [45 x i8] c"ingenic_adc.file=drivers/iio/adc/ingenic-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [27 x i8] c"ingenic_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic-adc\00", [20 x i8] zeroinitializer }, align 32
@ingenic_adc_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_adc_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_adc_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_adc_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760b-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_adc_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4770_adc_soc_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@ingenic_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@ingenic_adc_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&adc->aux_lock\00", [17 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 851, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ingenic_adc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/adc/ingenic-adc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry_ptr = internal global ptr @ingenic_adc_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 861, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unable to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry_ptr.12 = internal global ptr @ingenic_adc_probe._entry.10, section ".printk_index", align 4
@ingenic_adc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 867, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry_ptr.15 = internal global ptr @ingenic_adc_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ingenic,use-internal-divider\00", [35 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 896, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to add action\0A\00", [42 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry_ptr.19 = internal global ptr @ingenic_adc_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jz-adc\00", [25 x i8] zeroinitializer }, align 32
@ingenic_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @ingenic_adc_buffer_enable, ptr @ingenic_adc_buffer_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ingenic_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ingenic_adc_read_raw, ptr null, ptr @ingenic_adc_read_avail, ptr @ingenic_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_adc_of_xlate, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 909, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_adc_probe._entry_ptr.23 = internal global ptr @ingenic_adc_probe._entry.21, section ".printk_index", align 4
@ingenic_adc_buffer_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 755, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ingenic_adc_buffer_enable\00", [38 x i8] zeroinitializer }, align 32
@ingenic_adc_buffer_enable._entry_ptr = internal global ptr @ingenic_adc_buffer_enable._entry, section ".printk_index", align 4
@ingenic_adc_read_chan_info_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.6, i32 639, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ingenic_adc_read_chan_info_raw\00", [33 x i8] zeroinitializer }, align 32
@ingenic_adc_read_chan_info_raw._entry_ptr = internal global ptr @ingenic_adc_read_chan_info_raw._entry, section ".printk_index", align 4
@ingenic_adc_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.6, i32 255, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ingenic_adc_write_raw\00", [42 x i8] zeroinitializer }, align 32
@ingenic_adc_write_raw._entry_ptr = internal global ptr @ingenic_adc_write_raw._entry, section ".printk_index", align 4
@jz4725b_adc_soc_data = internal constant { %struct.ingenic_adc_soc_data, [56 x i8] } { %struct.ingenic_adc_soc_data { i32 7500, i32 10, ptr @jz4725b_adc_battery_raw_avail, i32 3, ptr @jz4725b_adc_battery_scale_avail, i32 4, i8 -128, ptr @jz4740_channels, i32 2, ptr @jz4725b_adc_init_clk_div }, [56 x i8] zeroinitializer }, align 32
@jz4740_adc_soc_data = internal constant { %struct.ingenic_adc_soc_data, [56 x i8] } { %struct.ingenic_adc_soc_data { i32 7395, i32 12, ptr @jz4740_adc_battery_raw_avail, i32 3, ptr @jz4740_adc_battery_scale_avail, i32 4, i8 -128, ptr @jz4740_channels, i32 2, ptr null }, [56 x i8] zeroinitializer }, align 32
@jz4760_adc_soc_data = internal constant { %struct.ingenic_adc_soc_data, [56 x i8] } { %struct.ingenic_adc_soc_data { i32 2500, i32 12, ptr @jz4770_adc_battery_raw_avail, i32 3, ptr @jz4760_adc_battery_scale_avail, i32 2, i8 64, ptr @jz4760_channels, i32 4, ptr @jz4770_adc_init_clk_div }, [56 x i8] zeroinitializer }, align 32
@jz4770_adc_soc_data = internal constant { %struct.ingenic_adc_soc_data, [56 x i8] } { %struct.ingenic_adc_soc_data { i32 1200, i32 12, ptr @jz4770_adc_battery_raw_avail, i32 3, ptr @jz4770_adc_battery_scale_avail, i32 2, i8 64, ptr @jz4770_channels, i32 9, ptr @jz4770_adc_init_clk_div }, [56 x i8] zeroinitializer }, align 32
@jz4725b_adc_battery_raw_avail = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 4095], [20 x i8] zeroinitializer }, align 32
@jz4725b_adc_battery_scale_avail = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7500, i32 10, i32 2500, i32 12], [16 x i8] zeroinitializer }, align 32
@jz4740_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.28, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.29, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@jz4725b_adc_init_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 320, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC clock has no parent\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"jz4725b_adc_init_clk_div\00", [39 x i8] zeroinitializer }, align 32
@jz4725b_adc_init_clk_div._entry_ptr = internal global ptr @jz4725b_adc_init_clk_div._entry, section ".printk_index", align 4
@jz4725b_adc_init_clk_div._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.6, i32 334, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No valid divider for ADC main clock\0A\00", [59 x i8] zeroinitializer }, align 32
@jz4725b_adc_init_clk_div._entry_ptr.34 = internal global ptr @jz4725b_adc_init_clk_div._entry.32, section ".printk_index", align 4
@jz4740_adc_battery_raw_avail = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 4095], [20 x i8] zeroinitializer }, align 32
@jz4740_adc_battery_scale_avail = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7395, i32 12, i32 2500, i32 12], [16 x i8] zeroinitializer }, align 32
@jz4770_adc_battery_raw_avail = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 4095], [20 x i8] zeroinitializer }, align 32
@jz4760_adc_battery_scale_avail = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2500, i32 12], [24 x i8] zeroinitializer }, align 32
@jz4760_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.28, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.35, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.36, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.29, ptr null, i8 64 }], [64 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aux1\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aux2\00", [27 x i8] zeroinitializer }, align 32
@jz4770_adc_init_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.37, ptr @.str.6, i32 356, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jz4770_adc_init_clk_div\00", [40 x i8] zeroinitializer }, align 32
@jz4770_adc_init_clk_div._entry_ptr = internal global ptr @jz4770_adc_init_clk_div._entry, section ".printk_index", align 4
@jz4770_adc_init_clk_div._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.37, ptr @.str.6, i32 369, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@jz4770_adc_init_clk_div._entry_ptr.39 = internal global ptr @jz4770_adc_init_clk_div._entry.38, section ".printk_index", align 4
@jz4770_adc_battery_scale_avail = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1200, i32 12], [24 x i8] zeroinitializer }, align 32
@jz4770_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 1, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 2, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 3, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 4, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 5, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.28, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.29, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 -1, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.36, ptr null, i8 64 }], [200 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 9]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"ingenic_adc_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 924, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 926, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"ingenic_adc_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 914, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 840, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 841, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 851, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 859, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 861, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 867, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 885, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 896, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 900, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"ingenic_buffer_setup_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 797, i32 42 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"ingenic_adc_info\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 740, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 909, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 754, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 638, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 254, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"jz4725b_adc_soc_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 548, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"jz4740_adc_soc_data\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 562, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c"jz4760_adc_soc_data\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 576, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"jz4770_adc_soc_data\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 590, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant [30 x i8] c"jz4725b_adc_battery_raw_avail\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 282, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant [32 x i8] c"jz4725b_adc_battery_scale_avail\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 286, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"jz4740_channels\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 386, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 388, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 397, i32 18 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 320, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 334, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [29 x i8] c"jz4740_adc_battery_raw_avail\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 291, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant [31 x i8] c"jz4740_adc_battery_scale_avail\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 295, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant [29 x i8] c"jz4770_adc_battery_raw_avail\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 304, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"jz4760_adc_battery_scale_avail\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 300, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"jz4760_channels\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 409, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 420, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 429, i32 18 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 356, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 369, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [31 x i8] c"jz4770_adc_battery_scale_avail\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 308, i32 18 }
@___asan_gen_.218 = private unnamed_addr constant [16 x i8] c"jz4770_channels\00", align 1
@___asan_gen_.219 = private constant [33 x i8] c"../drivers/iio/adc/ingenic-adc.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 450, i32 35 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__exitcall_ingenic_adc_driver_exit, ptr @__initcall__kmod_ingenic_adc__195_931_ingenic_adc_driver_init6, ptr @ingenic_adc_buffer_enable._entry, ptr @ingenic_adc_buffer_enable._entry_ptr, ptr @ingenic_adc_driver_exit, ptr @ingenic_adc_probe._entry, ptr @ingenic_adc_probe._entry.10, ptr @ingenic_adc_probe._entry.13, ptr @ingenic_adc_probe._entry.17, ptr @ingenic_adc_probe._entry.21, ptr @ingenic_adc_probe._entry_ptr, ptr @ingenic_adc_probe._entry_ptr.12, ptr @ingenic_adc_probe._entry_ptr.15, ptr @ingenic_adc_probe._entry_ptr.19, ptr @ingenic_adc_probe._entry_ptr.23, ptr @ingenic_adc_read_chan_info_raw._entry, ptr @ingenic_adc_read_chan_info_raw._entry_ptr, ptr @ingenic_adc_write_raw._entry, ptr @ingenic_adc_write_raw._entry_ptr, ptr @jz4725b_adc_init_clk_div._entry, ptr @jz4725b_adc_init_clk_div._entry.32, ptr @jz4725b_adc_init_clk_div._entry_ptr, ptr @jz4725b_adc_init_clk_div._entry_ptr.34, ptr @jz4770_adc_init_clk_div._entry, ptr @jz4770_adc_init_clk_div._entry.38, ptr @jz4770_adc_init_clk_div._entry_ptr, ptr @jz4770_adc_init_clk_div._entry_ptr.39, ptr @ingenic_adc_driver, ptr @.str, ptr @ingenic_adc_of_match, ptr @ingenic_adc_probe.__key, ptr @.str.1, ptr @ingenic_adc_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @ingenic_buffer_setup_ops, ptr @ingenic_adc_info, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @jz4725b_adc_soc_data, ptr @jz4740_adc_soc_data, ptr @jz4760_adc_soc_data, ptr @jz4770_adc_soc_data, ptr @jz4725b_adc_battery_raw_avail, ptr @jz4725b_adc_battery_scale_avail, ptr @jz4740_channels, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @jz4740_adc_battery_raw_avail, ptr @jz4740_adc_battery_scale_avail, ptr @jz4770_adc_battery_raw_avail, ptr @jz4760_adc_battery_scale_avail, ptr @jz4760_channels, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @jz4770_adc_battery_scale_avail, ptr @jz4770_channels], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_buffer_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_read_chan_info_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_adc_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_adc_soc_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_adc_soc_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_adc_soc_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_adc_soc_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_adc_battery_raw_avail to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_adc_battery_scale_avail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_adc_init_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_adc_init_clk_div._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_adc_battery_raw_avail to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_adc_battery_scale_avail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_adc_battery_raw_avail to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_adc_battery_scale_avail to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_adc_init_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_adc_init_clk_div._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_adc_battery_scale_avail to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ingenic_adc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ingenic_adc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 200) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ingenic_adc_probe.__key) #8
  %aux_lock = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %aux_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ingenic_adc_probe.__key.2) #8
  %soc_data10 = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %soc_data10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %soc_data10, align 4
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %if.end13.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @ingenic_adc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %do.end20, label %if.end21

do.end20:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %cleanup

if.end21:                                         ; preds = %dev_name.exit
  %call22 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %clk = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call29, ptr %clk, align 4
  %cmp.i149 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %call.i150 = tail call i32 @clk_prepare(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.end.i152, label %if.end38.do.end45_crit_edge

if.end38.do.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end.i152:                                      ; preds = %if.end38
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call29) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i, %if.end38.do.end45_crit_edge
  %retval.0.i153.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i150, %if.end38.do.end45_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end.i152
  %init_clk_div = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %init_clk_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_clk_div, align 4
  %tobool47.not = icmp eq ptr %14, null
  br i1 %tobool47.not, label %if.end46.do.body56_crit_edge, label %if.then48

if.end46.do.body56_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.then48:                                        ; preds = %if.end46
  %call50 = tail call i32 %14(ptr noundef %dev1, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then48.do.body56_crit_edge, label %if.then52

if.then48.do.body56_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.then52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %cleanup

do.body56:                                        ; preds = %if.then48.do.body56_crit_edge, %if.end46.do.body56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 0) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr64 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr64, i8 -1) #8, !srcloc !127
  %call65 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %call65, label %if.then66, label %if.else

if.then66:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %24 = or i32 %23, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %24) #8, !srcloc !130
  br label %if.end67

if.else:                                          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %27 = and i32 %23, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr3.i157 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i157, i32 %27) #8, !srcloc !130
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then66
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  %call.i158 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @ingenic_adc_clk_cleanup, ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i159 = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i159, label %if.end76, label %do.end75

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %33) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end76:                                         ; preds = %if.end67
  %name = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %34 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.20, ptr %name, align 8
  %35 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %call2, align 8
  %setup_ops = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 18
  %36 = ptrtoint ptr %setup_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ingenic_buffer_setup_ops, ptr %setup_ops, align 4
  %channels = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %call, i32 0, i32 7
  %37 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %channels, align 4
  %channels77 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %39 = ptrtoint ptr %channels77 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %channels77, align 8
  %num_channels = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %call, i32 0, i32 8
  %40 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_channels, align 4
  %num_channels78 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %42 = ptrtoint ptr %num_channels78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %num_channels78, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %43 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ingenic_adc_info, ptr %info, align 8
  %call79 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end76.cleanup_crit_edge, label %do.end84

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end76.cleanup_crit_edge, %do.end75, %if.then52, %do.end45, %do.end35, %if.then25, %do.end20, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end20 ], [ %8, %if.then25 ], [ %12, %do.end35 ], [ %retval.0.i153.ph, %do.end45 ], [ %call50, %if.then52 ], [ %call.i158, %do.end75 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end5.cleanup_crit_edge ], [ %call79, %do.end84 ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %tdat = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tdat) #8
  %6 = getelementptr inbounds [3 x i32], ptr %tdat, i32 0, i32 1
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !131
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %storemerge = phi i32 [ %10, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %11 = ptrtoint ptr %tdat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %tdat, align 4
  %12 = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1 = icmp eq i32 %12, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.1 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #8, !srcloc !131
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %.sink = phi i32 [ %16, %if.then.1 ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %6, align 4
  %18 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.2 = icmp eq i32 %18, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.2 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #8, !srcloc !131
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %.sink18 = phi i32 [ %22, %if.then.2 ], [ 0, %for.inc.1.for.inc.2_crit_edge ]
  %23 = getelementptr inbounds [3 x i32], ptr %tdat, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink18, ptr %23, align 4
  %call5 = call i32 @iio_push_to_buffers(ptr noundef %data, ptr noundef nonnull %tdat) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %26, i32 12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 4) #8, !srcloc !127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tdat) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_adc_clk_cleanup(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_unprepare(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_buffer_enable(ptr nocapture noundef readonly %iio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %clk = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %call1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 50) #8
  %lock.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %9 = and i32 %8, -16580481
  %10 = or i32 %9, 1049600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #8, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 20480) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 512) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 -5) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr19 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #8, !srcloc !130
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i34 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %24 = or i32 %23, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr3.i37 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i37, i32 %24) #8, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 8
  %27 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %active_scan_mask, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %lock.i38 = getelementptr inbounds %struct.ingenic_adc, ptr %32, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i38, i32 noundef 0) #8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr.i39 = getelementptr i8, ptr %34, i32 36
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %and.i40 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.body.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %32, align 4
  %add.ptr4.i = getelementptr i8, ptr %37, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 8463360) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %32, align 4
  %add.ptr9.i = getelementptr i8, ptr %39, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 8655104) #8, !srcloc !130
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end.if.end.i_crit_edge
  %and10.i = and i32 %30, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end23.i_crit_edge, label %do.body13.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

do.body13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %32, align 4
  %add.ptr17.i = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 -2139085824) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %32, align 4
  %add.ptr22.i = getelementptr i8, ptr %43, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 8524032) #8, !srcloc !130
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.body13.i, %if.end.i.if.end23.i_crit_edge
  %and24.i = and i32 %30, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.ingenic_adc_set_adcmd.exit_crit_edge, label %do.body27.i

if.end23.i.ingenic_adc_set_adcmd.exit_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_adc_set_adcmd.exit

do.body27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %32, align 4
  %add.ptr31.i = getelementptr i8, ptr %45, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 8454400) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %32, align 4
  %add.ptr36.i = getelementptr i8, ptr %47, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 8651776) #8, !srcloc !130
  br label %ingenic_adc_set_adcmd.exit

ingenic_adc_set_adcmd.exit:                       ; preds = %do.body27.i, %if.end23.i.ingenic_adc_set_adcmd.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %32, align 4
  %add.ptr42.i = getelementptr i8, ptr %49, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 0) #8, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock.i38) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %val.0.i.i = or i8 %52, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 %val.0.i.i) #8, !srcloc !127
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ingenic_adc_set_adcmd.exit, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_buffer_disable(ptr nocapture noundef readonly %iio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %conv5.i.i = and i8 %4, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %conv5.i.i) #8, !srcloc !127
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %10 = and i32 %9, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #8, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 -1) #8, !srcloc !127
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i25 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %20 = and i32 %19, -16580481
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr3.i27 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i27, i32 %20) #8, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr10 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 0) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 0) #8, !srcloc !136
  %clk = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %28) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_read_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  %conv.i = zext i1 %cmp.i to i32
  %clk.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %call1.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %aux_lock.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %aux_lock.i, i32 noundef 0) #8
  %soc_data.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %soc_data.i, align 4
  %has_aux_md.i = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %has_aux_md.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %has_aux_md.i, align 4
  %12 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  %brmerge.i = select i1 %tobool2.not.i, i1 true, i1 %cmp.i
  br i1 %brmerge.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %14, label %if.then5.i.sw.epilog.i_crit_edge [
    i32 9, label %sw.bb.i
    i32 0, label %sw.bb7.i
    i32 2, label %sw.bb8.i
  ]

if.then5.i.sw.epilog.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb.i, %if.then5.i.sw.epilog.i_crit_edge
  %cmd.0.i = phi i32 [ -1, %if.then5.i.sw.epilog.i_crit_edge ], [ 2, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 0, %sw.bb.i ]
  %lock.i.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %19 = and i32 %18, -50331649
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %or.i.i = or i32 %20, %cmd.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %21) #8, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %sw.epilog.i, %if.end.i.if.end9.i_crit_edge
  %lock.i51.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i51.i, i32 noundef 0) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %27 = and i32 %26, -16385
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr3.i53.i = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i53.i, i32 %27) #8, !srcloc !130
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %shl.i.i.i = shl nuw nsw i32 1, %conv.i
  %33 = trunc i32 %shl.i.i.i to i8
  %conv2.i.i.i = or i8 %32, %33
  %34 = xor i8 %33, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %conv2.i.i.i) #8, !srcloc !127
  %call4.i.i = tail call i64 @ktime_get() #8
  %add.i.i.i = add i64 %call4.i.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 225) #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %38) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv78.i.i = zext i8 %39 to i32
  %and2279.i.i = and i32 %shl.i.i.i, %conv78.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2279.i.i)
  %tobool.not80.i.i = icmp eq i32 %and2279.i.i, 0
  br i1 %tobool.not80.i.i, label %if.end9.i.ingenic_adc_capture.exit.i_crit_edge, label %if.end9.i.land.lhs.true.i.i_crit_edge

if.end9.i.land.lhs.true.i.i_crit_edge:            ; preds = %if.end9.i
  br label %land.lhs.true.i.i

if.end9.i.ingenic_adc_capture.exit.i_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_adc_capture.exit.i

land.lhs.true.i.i:                                ; preds = %if.then40.i.i.land.lhs.true.i.i_crit_edge, %if.end9.i.land.lhs.true.i.i_crit_edge
  %call26.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call26.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call26.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 63, i32 noundef 250, i32 noundef 2) #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv.i.i = zext i8 %42 to i32
  %and22.i.i = and i32 %shl.i.i.i, %conv.i.i
  %tobool.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool.not.i.i, label %if.then40.i.i.ingenic_adc_capture.exit.i_crit_edge, label %if.then40.i.i.land.lhs.true.i.i_crit_edge

if.then40.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

if.then40.i.i.ingenic_adc_capture.exit.i_crit_edge: ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_adc_capture.exit.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  %.pre.i.i = zext i8 %45 to i32
  %.pre81.i.i = and i32 %shl.i.i.i, %.pre.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre81.i.i)
  %tobool46.not.i.i = icmp eq i32 %.pre81.i.i, 0
  br i1 %tobool46.not.i.i, label %for.end.i.i.ingenic_adc_capture.exit.i_crit_edge, label %if.then48.i.i

for.end.i.i.ingenic_adc_capture.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ingenic_adc_capture.exit.i

if.then48.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %47) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %conv5.i76.i.i = and i8 %48, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 %conv5.i76.i.i) #8, !srcloc !127
  br label %ingenic_adc_capture.exit.i

ingenic_adc_capture.exit.i:                       ; preds = %if.then48.i.i, %for.end.i.i.ingenic_adc_capture.exit.i_crit_edge, %if.then40.i.i.ingenic_adc_capture.exit.i_crit_edge, %if.end9.i.ingenic_adc_capture.exit.i_crit_edge
  %tobool11.not.i = phi i1 [ true, %if.end9.i.ingenic_adc_capture.exit.i_crit_edge ], [ true, %for.end.i.i.ingenic_adc_capture.exit.i_crit_edge ], [ false, %if.then48.i.i ], [ true, %if.then40.i.i.ingenic_adc_capture.exit.i_crit_edge ]
  %cond.i.i = phi i32 [ 0, %if.end9.i.ingenic_adc_capture.exit.i_crit_edge ], [ 0, %for.end.i.i.ingenic_adc_capture.exit.i_crit_edge ], [ -110, %if.then48.i.i ], [ 0, %if.then40.i.i.ingenic_adc_capture.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %add.ptr54.i.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i.i, i32 %26) #8, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock.i51.i) #8
  br i1 %tobool11.not.i, label %if.end13.i, label %ingenic_adc_capture.exit.i.out.i_crit_edge

ingenic_adc_capture.exit.i.out.i_crit_edge:       ; preds = %ingenic_adc_capture.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end13.i:                                       ; preds = %ingenic_adc_capture.exit.i
  %53 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %54, label %if.end13.i.out.i_crit_edge [
    i32 9, label %if.end13.i.sw.bb15.i_crit_edge
    i32 0, label %if.end13.i.sw.bb15.i_crit_edge15
    i32 2, label %if.end13.i.sw.bb15.i_crit_edge16
    i32 1, label %sw.bb19.i
  ]

if.end13.i.sw.bb15.i_crit_edge16:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.end13.i.sw.bb15.i_crit_edge15:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.end13.i.sw.bb15.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.end13.i.out.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

sw.bb15.i:                                        ; preds = %if.end13.i.sw.bb15.i_crit_edge, %if.end13.i.sw.bb15.i_crit_edge15, %if.end13.i.sw.bb15.i_crit_edge16
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 32
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !160
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  br label %out.sink.split.i

sw.bb19.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %add.ptr23.i = getelementptr i8, ptr %61, i32 28
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23.i) #8, !srcloc !160
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %sw.bb19.i, %sw.bb15.i
  %.sink.i = phi i16 [ %59, %sw.bb15.i ], [ %63, %sw.bb19.i ]
  %conv18.i = zext i16 %.sink.i to i32
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv18.i, ptr %val, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end13.i.out.i_crit_edge, %ingenic_adc_capture.exit.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %cond.i.i, %ingenic_adc_capture.exit.i.out.i_crit_edge ], [ 1, %if.end13.i.out.i_crit_edge ], [ 1, %out.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %aux_lock.i) #8
  %65 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %66) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %67 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channel, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %68, label %sw.bb2.cleanup_crit_edge [
    i32 9, label %sw.bb2.sw.bb3_crit_edge
    i32 0, label %sw.bb2.sw.bb3_crit_edge17
    i32 2, label %sw.bb2.sw.bb3_crit_edge18
    i32 1, label %sw.bb4
  ]

sw.bb2.sw.bb3_crit_edge18:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

sw.bb2.sw.bb3_crit_edge17:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

sw.bb2.sw.bb3_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2.sw.bb3_crit_edge, %sw.bb2.sw.bb3_crit_edge17, %sw.bb2.sw.bb3_crit_edge18
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3300, ptr %val, align 4
  %71 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 12, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  %low_vref_mode = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 5
  %72 = ptrtoint ptr %low_vref_mode to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %low_vref_mode, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not = icmp eq i8 %73, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2500, ptr %val, align 4
  %75 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 12, ptr %val2, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %soc_data = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %soc_data, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %val, align 4
  %81 = load ptr, ptr %soc_data, align 4
  %battery_high_vref_bits = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %battery_high_vref_bits to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %battery_high_vref_bits, align 4
  %84 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %sw.bb3, %sw.bb2.cleanup_crit_edge, %out.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.then ], [ 11, %if.else ], [ 11, %sw.bb2.cleanup_crit_edge ], [ 11, %sw.bb3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1.i, %do.end.i ], [ %ret.0.i, %out.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingenic_adc_read_avail(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %m) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %soc_data = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data, align 4
  %battery_raw_avail_size = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %battery_raw_avail_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %battery_raw_avail_size, align 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %length, align 4
  %9 = load ptr, ptr %soc_data, align 4
  %battery_raw_avail = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %9, i32 0, i32 2
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %type, align 4
  %soc_data3 = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %soc_data3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc_data3, align 4
  %battery_scale_avail_size = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %battery_scale_avail_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %battery_scale_avail_size, align 4
  %15 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %length, align 4
  %16 = load ptr, ptr %soc_data3, align 4
  %battery_scale_avail = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %16, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %sw.bb
  %battery_scale_avail.sink = phi ptr [ %battery_scale_avail, %sw.bb2 ], [ %battery_raw_avail, %sw.bb ]
  %retval.0.ph = phi i32 [ 0, %sw.bb2 ], [ 1, %sw.bb ]
  %17 = ptrtoint ptr %battery_scale_avail.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %battery_scale_avail.sink, align 4
  %19 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %vals, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_write_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %m)
  %cond = icmp eq i32 %m, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond14 = icmp eq i32 %5, 1
  br i1 %cond14, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %soc_data = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_data, align 4
  %battery_vref_mode = getelementptr inbounds %struct.ingenic_adc_soc_data, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %battery_vref_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %battery_vref_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %clk = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %call3) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %val)
  %cmp = icmp sgt i32 %val, 2500
  %lock.i = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = and i32 %13, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #8, !srcloc !130
  br label %if.end9

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %17 = or i32 %13, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr3.i27 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i27, i32 %17) #8, !srcloc !130
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %.sink = phi i8 [ 0, %if.then7 ], [ 1, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %20 = getelementptr inbounds %struct.ingenic_adc, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %20, align 4
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end9 ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_adc_of_xlate(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %iiospec) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channels = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 8
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %channel = getelementptr %struct.iio_chan_spec, ptr %5, i32 %i.011, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp2 = icmp eq i32 %9, %7
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ %i.011, %for.body.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4725b_adc_init_clk_div(ptr noundef %dev, ptr nocapture noundef readonly %adc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.ingenic_adc, ptr %adc, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call ptr @clk_get_parent(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_get_rate(ptr noundef nonnull %call) #8
  %sub = add i32 %call1, 7999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 15999999, i32 %sub)
  %cmp = icmp ugt i32 %sub, 15999999
  %div = udiv i32 %sub, 8000000
  %2 = tail call i32 @llvm.umin.i32(i32 %div, i32 64)
  %3 = select i1 %cmp, i32 %2, i32 1
  %div8 = udiv i32 %call1, %3
  %4 = add i32 %div8, -8000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7500001, i32 %4)
  %5 = icmp ult i32 %4, -7500001
  br i1 %5, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub17 = add nuw nsw i32 %div8, 99999
  %div18 = udiv i32 %sub17, 100000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %sub22 = shl nuw nsw i32 %div18, 16
  %shl = add nsw i32 %sub22, -65536
  %sub23 = add nsw i32 %3, -1
  %or = or i32 %shl, %sub23
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adc, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %if.end15 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4770_adc_init_clk_div(ptr noundef %dev, ptr nocapture noundef readonly %adc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.ingenic_adc, ptr %adc, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call ptr @clk_get_parent(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_get_rate(ptr noundef nonnull %call) #8
  %sub = add i32 %call1, 199999
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999, i32 %sub)
  %cmp = icmp ugt i32 %sub, 399999
  %div = udiv i32 %sub, 200000
  %2 = tail call i32 @llvm.umin.i32(i32 %div, i32 256)
  %3 = select i1 %cmp, i32 %2, i32 1
  %div8 = udiv i32 %call1, %3
  %4 = add i32 %div8, -200001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -180001, i32 %4)
  %5 = icmp ult i32 %4, -180001
  br i1 %5, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub17 = add nuw nsw i32 %div8, 9999
  %div18 = udiv i32 %sub17, 10000
  %sub20 = add nuw nsw i32 %div8, 999
  %div21 = udiv i32 %sub20, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %sub25 = shl nuw nsw i32 %div21, 16
  %shl = add nsw i32 %sub25, -65536
  %sub26 = shl nuw nsw i32 %div18, 8
  %shl27 = add nsw i32 %sub26, -256
  %or = or i32 %shl, %shl27
  %sub28 = add nsw i32 %3, -1
  %or30 = or i32 %or, %sub28
  %6 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %7 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adc, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %if.end15 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !110, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_ingenic_adc__195_931_ingenic_adc_driver_init6, !1, !"__initcall__kmod_ingenic_adc__195_931_ingenic_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 931, i32 1}
!2 = !{ptr @__exitcall_ingenic_adc_driver_exit, !1, !"__exitcall_ingenic_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file196, !4, !"__UNIQUE_ID_file196", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 932, i32 1}
!5 = !{ptr @__UNIQUE_ID_license197, !4, !"__UNIQUE_ID_license197", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 926, i32 11}
!8 = !{ptr @ingenic_adc_driver, !9, !"ingenic_adc_driver", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 924, i32 31}
!10 = !{ptr @ingenic_adc_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 840, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ingenic_adc_probe.__key.2, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 841, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 851, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ingenic_adc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ingenic_adc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 859, i32 31}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 861, i32 3}
!28 = !{ptr @ingenic_adc_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ingenic_adc_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 867, i32 3}
!32 = !{ptr @ingenic_adc_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ingenic_adc_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 885, i32 35}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 896, i32 3}
!38 = !{ptr @ingenic_adc_probe._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ingenic_adc_probe._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 900, i32 18}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 909, i32 3}
!44 = !{ptr @ingenic_adc_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ingenic_adc_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ingenic_buffer_setup_ops, !47, !"ingenic_buffer_setup_ops", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 797, i32 42}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 754, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ingenic_adc_buffer_enable._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ingenic_adc_buffer_enable._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ingenic_adc_info, !54, !"ingenic_adc_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 740, i32 30}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 638, i32 3}
!57 = !{ptr @ingenic_adc_read_chan_info_raw._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ingenic_adc_read_chan_info_raw._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 254, i32 5}
!61 = !{ptr @ingenic_adc_write_raw._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ingenic_adc_write_raw._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @ingenic_adc_of_match, !64, !"ingenic_adc_of_match", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 914, i32 34}
!65 = !{ptr @jz4725b_adc_soc_data, !66, !"jz4725b_adc_soc_data", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 548, i32 42}
!67 = !{ptr @jz4725b_adc_battery_raw_avail, !68, !"jz4725b_adc_battery_raw_avail", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 282, i32 18}
!69 = !{ptr @jz4725b_adc_battery_scale_avail, !70, !"jz4725b_adc_battery_scale_avail", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 286, i32 18}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 388, i32 18}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 397, i32 18}
!75 = !{ptr @jz4740_channels, !76, !"jz4740_channels", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 386, i32 35}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 320, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @jz4725b_adc_init_clk_div._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @jz4725b_adc_init_clk_div._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 334, i32 3}
!84 = !{ptr @jz4725b_adc_init_clk_div._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @jz4725b_adc_init_clk_div._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @jz4740_adc_soc_data, !87, !"jz4740_adc_soc_data", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 562, i32 42}
!88 = !{ptr @jz4740_adc_battery_raw_avail, !89, !"jz4740_adc_battery_raw_avail", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 291, i32 18}
!90 = !{ptr @jz4740_adc_battery_scale_avail, !91, !"jz4740_adc_battery_scale_avail", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 295, i32 18}
!92 = !{ptr @jz4760_adc_soc_data, !93, !"jz4760_adc_soc_data", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 576, i32 42}
!94 = !{ptr @jz4770_adc_battery_raw_avail, !95, !"jz4770_adc_battery_raw_avail", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 304, i32 18}
!96 = !{ptr @jz4760_adc_battery_scale_avail, !97, !"jz4760_adc_battery_scale_avail", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 300, i32 18}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 420, i32 18}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 429, i32 18}
!102 = !{ptr @jz4760_channels, !103, !"jz4760_channels", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 409, i32 35}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 356, i32 3}
!106 = !{ptr @jz4770_adc_init_clk_div._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @jz4770_adc_init_clk_div._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @jz4770_adc_init_clk_div._entry.38, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 369, i32 3}
!110 = !{ptr @jz4770_adc_init_clk_div._entry_ptr.39, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @jz4770_adc_soc_data, !112, !"jz4770_adc_soc_data", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 590, i32 42}
!113 = !{ptr @jz4770_adc_battery_scale_avail, !114, !"jz4770_adc_battery_scale_avail", i1 false, i1 false}
!114 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 308, i32 18}
!115 = !{ptr @jz4770_channels, !116, !"jz4770_channels", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/ingenic-adc.c", i32 450, i32 35}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2153254021}
!127 = !{i64 5068935}
!128 = !{i64 2153254293}
!129 = !{i64 2153192473}
!130 = !{i64 5069132}
!131 = !{i64 5069550}
!132 = !{i64 2153248329}
!133 = !{i64 2153248653}
!134 = !{i64 2153192255}
!135 = !{i64 2153243833}
!136 = !{i64 5068512}
!137 = !{i64 2153244220}
!138 = !{i64 2153244718}
!139 = !{i64 2153245016}
!140 = !{i64 2153184586}
!141 = !{i64 2153185255}
!142 = !{i64 2153186452}
!143 = !{i64 2153187649}
!144 = !{i64 2153188843}
!145 = !{i64 2153189922}
!146 = !{i64 2153190911}
!147 = !{i64 2153191562}
!148 = !{i64 5069330}
!149 = !{i64 2153192882}
!150 = !{i64 2153193260}
!151 = !{i64 2153245655}
!152 = !{i64 2153245927}
!153 = !{i64 2153246976}
!154 = !{i64 2153247360}
!155 = !{i64 2153193875}
!156 = !{i64 2153194210}
!157 = !{i64 2153195990}
!158 = !{i64 2153196220}
!159 = !{i64 2153196442}
!160 = !{i64 5068712}
!161 = !{i64 2153240622}
!162 = !{i64 2153241111}
!163 = !{i8 0, i8 2}
!164 = !{i64 2153215879}
!165 = !{i64 2153229553}
