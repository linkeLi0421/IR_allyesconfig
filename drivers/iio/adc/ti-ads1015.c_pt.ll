; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-ads1015.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-ads1015.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ads1015_data = type { ptr, %struct.mutex, [8 x %struct.ads1015_channel_data], i32, i32, [8 x %struct.ads1015_thresh_data], ptr, i8 }
%struct.ads1015_channel_data = type { i8, i32, i32 }
%struct.ads1015_thresh_data = type { i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.87 = type { i16, i64 }

@__initcall__kmod_ti_ads1015__291_1133_ads1015_driver_init6 = internal global ptr @ads1015_driver_init, section ".initcall6.init", align 4
@ads1015_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ads1015_probe, ptr @ads1015_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ads1015_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ads1015_pm_ops, ptr null, ptr null }, ptr @ads1015_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ads1015_driver_exit = internal global ptr @ads1015_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [58 x i8] c"ti_ads1015.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [60 x i8] c"ti_ads1015.description=Texas Instruments ADS1015 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"ti_ads1015.file=drivers/iio/adc/ti-ads1015\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"ti_ads1015.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ads1015\00", [24 x i8] zeroinitializer }, align 32
@ads1015_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads1015\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads1115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ads1015_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ads1015_runtime_suspend, ptr @ads1015_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ads1015_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ads1015\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ads1115\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ads1015_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@ads1015_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.17, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 3, i32 1, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.18, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 3, i32 2, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.19, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 3, i32 3, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.20, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 4, i32 4, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.21, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 5, i32 5, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.22, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 6, i32 6, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.23, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 7, i32 7, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ads1015_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ads1015_attribute_group, ptr @ads1015_read_raw, ptr null, ptr null, ptr @ads1015_write_raw, ptr null, ptr null, ptr @ads1015_read_event_config, ptr @ads1015_write_event_config, ptr @ads1015_read_event, ptr @ads1015_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ads1015_data_rate = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 250, i32 490, i32 920, i32 1600, i32 2400, i32 3300, i32 3300], [32 x i8] zeroinitializer }, align 32
@ads1115_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.17, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 3, i32 1, i32 1, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.18, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 3, i32 2, i32 2, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.19, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 3, i32 3, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.20, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 4, i32 4, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.21, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 5, i32 5, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.22, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 6, i32 6, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.23, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 7, i32 7, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 4101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ads1015_events, i32 3, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ads1115_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ads1115_attribute_group, ptr @ads1015_read_raw, ptr null, ptr null, ptr @ads1015_write_raw, ptr null, ptr null, ptr @ads1015_read_event_config, ptr @ads1015_write_event_config, ptr @ads1015_read_event, ptr @ads1015_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ads1115_data_rate = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 16, i32 32, i32 64, i32 128, i32 250, i32 475, i32 860], [32 x i8] zeroinitializer }, align 32
@ads1015_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 970, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown chip %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ads1015_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/ti-ads1015.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ads1015_probe._entry_ptr = internal global ptr @ads1015_probe._entry, section ".printk_index", align 4
@ads1015_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ads1015_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr @ads1015_is_writeable_reg, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ti_ads1015:989:(&ads1015_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@ads1015_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@ads1015_probe._entry_ptr.10 = internal global ptr @ads1015_probe._entry.8, section ".printk_index", align 4
@ads1015_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @ads1015_buffer_preenable, ptr null, ptr null, ptr @ads1015_buffer_postdisable, ptr @iio_validate_scan_mask_onehot }, [44 x i8] zeroinitializer }, align 32
@ads1015_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 999, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@ads1015_probe._entry_ptr.13 = internal global ptr @ads1015_probe._entry.11, section ".printk_index", align 4
@ads1015_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1053, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@ads1015_probe._entry_ptr.16 = internal global ptr @ads1015_probe._entry.14, section ".printk_index", align 4
@ads1015_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 9, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN0-AIN1\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN0-AIN3\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN1-AIN3\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN2-AIN3\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN0\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@ads1015_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ads1015_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ads1015_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_ads1015_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_ads1015_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_ads1015_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.25, %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_ads1015_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.27, %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"3 2 1 0.5 0.25 0.125\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scale_available\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"128 250 490 920 1600 2400 3300\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@ads1015_fullscale_range = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6144, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 256, i32 256], [32 x i8] zeroinitializer }, align 32
@ads1015_comp_queue = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@ads1115_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ads1115_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ads1115_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_ads1115_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_ads1115_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_ads1115_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.29, %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_ads1115_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.30, %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"0.1875 0.125 0.0625 0.03125 0.015625 0.007813\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"8 16 32 64 128 250 475 860\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ads1015_client_get_channels_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 870, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid reg on %pfw\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ads1015_client_get_channels_config\00", [61 x i8] zeroinitializer }, align 32
@ads1015_client_get_channels_config._entry_ptr = internal global ptr @ads1015_client_get_channels_config._entry, section ".printk_index", align 4
@ads1015_client_get_channels_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 877, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid channel index %d on %pfw\0A\00", [62 x i8] zeroinitializer }, align 32
@ads1015_client_get_channels_config._entry_ptr.36 = internal global ptr @ads1015_client_get_channels_config._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,gain\00", [24 x i8] zeroinitializer }, align 32
@ads1015_client_get_channels_config._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.4, i32 884, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gain on %pfw\0A\00", [42 x i8] zeroinitializer }, align 32
@ads1015_client_get_channels_config._entry_ptr.40 = internal global ptr @ads1015_client_get_channels_config._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,datarate\00", [20 x i8] zeroinitializer }, align 32
@ads1015_client_get_channels_config._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.33, ptr @.str.4, i32 893, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid data_rate on %pfw\0A\00", [37 x i8] zeroinitializer }, align 32
@ads1015_client_get_channels_config._entry_ptr.44 = internal global ptr @ads1015_client_get_channels_config._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 32, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 6144]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"ads1015_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1122, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1124, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"ads1015_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1109, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"ads1015_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1097, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"ads1015_id\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1102, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 948, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"ads1015_channels\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 295, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"ads1015_info\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 835, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"ads1015_data_rate\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 97, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"ads1115_channels\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 307, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"ads1115_info\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 845, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"ads1115_data_rate\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 101, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 970, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"ads1015_regmap_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 288, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 989, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 991, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"ads1015_buffer_setup_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 799, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 999, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1053, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"ads1015_events\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 119, i32 36 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 296, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 297, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 298, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 299, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 300, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 301, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 302, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 303, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"ads1015_attribute_group\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 821, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"ads1015_attributes\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 815, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant [39 x i8] c"iio_const_attr_ads1015_scale_available\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [52 x i8] c"iio_const_attr_ads1015_sampling_frequency_available\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 805, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 810, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"ads1015_fullscale_range\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 109, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"ads1015_comp_queue\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 117, i32 18 }
@___asan_gen_.196 = private unnamed_addr constant [24 x i8] c"ads1115_attribute_group\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 831, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"ads1115_attributes\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 825, i32 26 }
@___asan_gen_.202 = private unnamed_addr constant [39 x i8] c"iio_const_attr_ads1115_scale_available\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [52 x i8] c"iio_const_attr_ads1115_sampling_frequency_available\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 807, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 812, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 869, i32 38 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 870, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 876, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 881, i32 39 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 884, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 890, i32 39 }
@___asan_gen_.244 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [32 x i8] c"../drivers/iio/adc/ti-ads1015.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 893, i32 5 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ads1015_driver_exit, ptr @__initcall__kmod_ti_ads1015__291_1133_ads1015_driver_init6, ptr @ads1015_client_get_channels_config._entry, ptr @ads1015_client_get_channels_config._entry.34, ptr @ads1015_client_get_channels_config._entry.38, ptr @ads1015_client_get_channels_config._entry.42, ptr @ads1015_client_get_channels_config._entry_ptr, ptr @ads1015_client_get_channels_config._entry_ptr.36, ptr @ads1015_client_get_channels_config._entry_ptr.40, ptr @ads1015_client_get_channels_config._entry_ptr.44, ptr @ads1015_driver_exit, ptr @ads1015_probe._entry, ptr @ads1015_probe._entry.11, ptr @ads1015_probe._entry.14, ptr @ads1015_probe._entry.8, ptr @ads1015_probe._entry_ptr, ptr @ads1015_probe._entry_ptr.10, ptr @ads1015_probe._entry_ptr.13, ptr @ads1015_probe._entry_ptr.16, ptr @ads1015_driver, ptr @.str, ptr @ads1015_of_match, ptr @ads1015_pm_ops, ptr @ads1015_id, ptr @ads1015_probe.__key, ptr @.str.1, ptr @ads1015_channels, ptr @ads1015_info, ptr @ads1015_data_rate, ptr @ads1115_channels, ptr @ads1115_info, ptr @ads1115_data_rate, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ads1015_probe._key, ptr @ads1015_regmap_config, ptr @.str.7, ptr @.str.9, ptr @ads1015_buffer_setup_ops, ptr @.str.12, ptr @.str.15, ptr @ads1015_events, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ads1015_attribute_group, ptr @ads1015_attributes, ptr @iio_const_attr_ads1015_scale_available, ptr @iio_const_attr_ads1015_sampling_frequency_available, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ads1015_fullscale_range, ptr @ads1015_comp_queue, ptr @ads1115_attribute_group, ptr @ads1115_attributes, ptr @iio_const_attr_ads1115_scale_available, ptr @iio_const_attr_ads1115_sampling_frequency_available, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_data_rate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1115_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1115_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1115_data_rate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_ads1015_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_ads1015_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_fullscale_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_comp_queue to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1115_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1115_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_ads1115_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_ads1115_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_client_get_channels_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_client_get_channels_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_client_get_channels_config._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads1015_client_get_channels_config._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ads1015_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ads1015_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ads1015_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %pval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 304) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup92_crit_edge, label %if.end

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ads1015_probe.__key) #8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 8
  %call3 = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %5 = ptrtoint ptr %call3 to i32
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %chip.0 = phi i32 [ %7, %if.then4 ], [ %5, %if.end.if.end5_crit_edge ]
  %8 = zext i32 %chip.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %chip.0, label %do.end13 [
    i32 1, label %if.end5.sw.epilog_crit_edge
    i32 2, label %sw.bb6
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %chip.0) #11
  br label %cleanup92

sw.epilog:                                        ; preds = %sw.bb6, %if.end5.sw.epilog_crit_edge
  %ads1115_channels.sink = phi ptr [ @ads1115_channels, %sw.bb6 ], [ @ads1015_channels, %if.end5.sw.epilog_crit_edge ]
  %ads1115_info.sink = phi ptr [ @ads1115_info, %sw.bb6 ], [ @ads1015_info, %if.end5.sw.epilog_crit_edge ]
  %ads1115_data_rate.sink = phi ptr [ @ads1115_data_rate, %sw.bb6 ], [ @ads1015_data_rate, %if.end5.sw.epilog_crit_edge ]
  %channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %channels7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ads1115_channels.sink, ptr %channels7, align 8
  %num_channels8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9, ptr %num_channels8, align 4
  %info9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %11 = ptrtoint ptr %info9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ads1115_info.sink, ptr %info9, align 8
  %data_rate10 = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %data_rate10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ads1115_data_rate.sink, ptr %data_rate10, align 4
  %event_channel = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %event_channel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %event_channel, align 4
  %channels16 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %channels16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels16, align 8
  %realbits17 = getelementptr %struct.iio_chan_spec, ptr %15, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %realbits17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %realbits17, align 1
  %conv = zext i8 %17 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nsw i32 -1, %sub
  %low_thresh = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl, ptr %low_thresh, align 4
  %sub21 = xor i32 %shl, -1
  %high_thresh = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %high_thresh to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub21, ptr %high_thresh, align 4
  %20 = load ptr, ptr %channels16, align 8
  %realbits17.1 = getelementptr %struct.iio_chan_spec, ptr %20, i32 1, i32 5, i32 1
  %21 = ptrtoint ptr %realbits17.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %realbits17.1, align 1
  %conv.1 = zext i8 %22 to i32
  %sub.1 = add nsw i32 %conv.1, -1
  %shl.1 = shl nsw i32 -1, %sub.1
  %low_thresh.1 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 1, i32 2
  %23 = ptrtoint ptr %low_thresh.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl.1, ptr %low_thresh.1, align 4
  %sub21.1 = xor i32 %shl.1, -1
  %high_thresh.1 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 1, i32 1
  %24 = ptrtoint ptr %high_thresh.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub21.1, ptr %high_thresh.1, align 4
  %25 = load ptr, ptr %channels16, align 8
  %realbits17.2 = getelementptr %struct.iio_chan_spec, ptr %25, i32 2, i32 5, i32 1
  %26 = ptrtoint ptr %realbits17.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %realbits17.2, align 1
  %conv.2 = zext i8 %27 to i32
  %sub.2 = add nsw i32 %conv.2, -1
  %shl.2 = shl nsw i32 -1, %sub.2
  %low_thresh.2 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 2, i32 2
  %28 = ptrtoint ptr %low_thresh.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl.2, ptr %low_thresh.2, align 4
  %sub21.2 = xor i32 %shl.2, -1
  %high_thresh.2 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 2, i32 1
  %29 = ptrtoint ptr %high_thresh.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub21.2, ptr %high_thresh.2, align 4
  %30 = load ptr, ptr %channels16, align 8
  %realbits17.3 = getelementptr %struct.iio_chan_spec, ptr %30, i32 3, i32 5, i32 1
  %31 = ptrtoint ptr %realbits17.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %realbits17.3, align 1
  %conv.3 = zext i8 %32 to i32
  %sub.3 = add nsw i32 %conv.3, -1
  %shl.3 = shl nsw i32 -1, %sub.3
  %low_thresh.3 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 3, i32 2
  %33 = ptrtoint ptr %low_thresh.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl.3, ptr %low_thresh.3, align 4
  %sub21.3 = xor i32 %shl.3, -1
  %high_thresh.3 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 3, i32 1
  %34 = ptrtoint ptr %high_thresh.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub21.3, ptr %high_thresh.3, align 4
  %35 = load ptr, ptr %channels16, align 8
  %realbits17.4 = getelementptr %struct.iio_chan_spec, ptr %35, i32 4, i32 5, i32 1
  %36 = ptrtoint ptr %realbits17.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %realbits17.4, align 1
  %conv.4 = zext i8 %37 to i32
  %sub.4 = add nsw i32 %conv.4, -1
  %shl.4 = shl nsw i32 -1, %sub.4
  %low_thresh.4 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 4, i32 2
  %38 = ptrtoint ptr %low_thresh.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shl.4, ptr %low_thresh.4, align 4
  %sub21.4 = xor i32 %shl.4, -1
  %high_thresh.4 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 4, i32 1
  %39 = ptrtoint ptr %high_thresh.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub21.4, ptr %high_thresh.4, align 4
  %40 = load ptr, ptr %channels16, align 8
  %realbits17.5 = getelementptr %struct.iio_chan_spec, ptr %40, i32 5, i32 5, i32 1
  %41 = ptrtoint ptr %realbits17.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %realbits17.5, align 1
  %conv.5 = zext i8 %42 to i32
  %sub.5 = add nsw i32 %conv.5, -1
  %shl.5 = shl nsw i32 -1, %sub.5
  %low_thresh.5 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 5, i32 2
  %43 = ptrtoint ptr %low_thresh.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl.5, ptr %low_thresh.5, align 4
  %sub21.5 = xor i32 %shl.5, -1
  %high_thresh.5 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 5, i32 1
  %44 = ptrtoint ptr %high_thresh.5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub21.5, ptr %high_thresh.5, align 4
  %45 = load ptr, ptr %channels16, align 8
  %realbits17.6 = getelementptr %struct.iio_chan_spec, ptr %45, i32 6, i32 5, i32 1
  %46 = ptrtoint ptr %realbits17.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %realbits17.6, align 1
  %conv.6 = zext i8 %47 to i32
  %sub.6 = add nsw i32 %conv.6, -1
  %shl.6 = shl nsw i32 -1, %sub.6
  %low_thresh.6 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 6, i32 2
  %48 = ptrtoint ptr %low_thresh.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl.6, ptr %low_thresh.6, align 4
  %sub21.6 = xor i32 %shl.6, -1
  %high_thresh.6 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 6, i32 1
  %49 = ptrtoint ptr %high_thresh.6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub21.6, ptr %high_thresh.6, align 4
  %50 = load ptr, ptr %channels16, align 8
  %realbits17.7 = getelementptr %struct.iio_chan_spec, ptr %50, i32 7, i32 5, i32 1
  %51 = ptrtoint ptr %realbits17.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %realbits17.7, align 1
  %conv.7 = zext i8 %52 to i32
  %sub.7 = add nsw i32 %conv.7, -1
  %shl.7 = shl nsw i32 -1, %sub.7
  %low_thresh.7 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 7, i32 2
  %53 = ptrtoint ptr %low_thresh.7 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl.7, ptr %low_thresh.7, align 4
  %sub21.7 = xor i32 %shl.7, -1
  %high_thresh.7 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 7, i32 1
  %54 = ptrtoint ptr %high_thresh.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub21.7, ptr %high_thresh.7, align 4
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv.i.i, align 8
  %call3.i.i = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #8
  %tobool.not79.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not79.i.i, label %sw.epilog.ads1015_client_get_channels_config.exit.i_crit_edge, label %sw.epilog.for.body.i.i_crit_edge

sw.epilog.for.body.i.i_crit_edge:                 ; preds = %sw.epilog
  br label %for.body.i.i

sw.epilog.ads1015_client_get_channels_config.exit.i_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_client_get_channels_config.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.for.body.i.i_crit_edge
  %i.083.i.i = phi i32 [ %i.1.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -1, %sw.epilog.for.body.i.i_crit_edge ]
  %node.080.i.i = phi ptr [ %call38.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call3.i.i, %sw.epilog.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i.i) #8
  %59 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %pval.i.i, align 4, !annotation !138
  %call.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.080.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %pval.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull %node.080.i.i) #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %60 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pval.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %61)
  %cmp.i.i = icmp ugt i32 %61, 7
  br i1 %cmp.i.i, label %do.end9.i.i, label %if.end10.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %61, ptr noundef nonnull %node.080.i.i) #11
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %call.i70.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.080.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull %pval.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i70.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end10.i.i.if.end20.i.i_crit_edge

if.end10.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %62 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pval.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %63)
  %cmp14.i.i = icmp ugt i32 %63, 6
  br i1 %cmp14.i.i, label %if.then13.i.i.cleanup.i.i_crit_edge, label %if.then13.i.i.if.end20.i.i_crit_edge

if.then13.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then13.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.end20.i.i:                                     ; preds = %if.then13.i.i.if.end20.i.i_crit_edge, %if.end10.i.i.if.end20.i.i_crit_edge
  %pga.0.i.i = phi i32 [ 2, %if.end10.i.i.if.end20.i.i_crit_edge ], [ %63, %if.then13.i.i.if.end20.i.i_crit_edge ]
  %call.i71.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.080.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %pval.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i.i)
  %tobool22.not.i.i = icmp eq i32 %call.i71.i.i, 0
  br i1 %tobool22.not.i.i, label %if.then23.i.i, label %if.end20.i.i.if.end30.i.i_crit_edge

if.end20.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  %64 = ptrtoint ptr %pval.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pval.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %65)
  %cmp24.i.i = icmp ugt i32 %65, 7
  br i1 %cmp24.i.i, label %if.then23.i.i.cleanup.i.i_crit_edge, label %if.then23.i.i.if.end30.i.i_crit_edge

if.then23.i.i.if.end30.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.then23.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.end30.i.i:                                     ; preds = %if.then23.i.i.if.end30.i.i_crit_edge, %if.end20.i.i.if.end30.i.i_crit_edge
  %data_rate.0.i.i = phi i32 [ 4, %if.end20.i.i.if.end30.i.i_crit_edge ], [ %65, %if.then23.i.i.if.end30.i.i_crit_edge ]
  %pga31.i.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 %61, i32 1
  %66 = ptrtoint ptr %pga31.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %pga.0.i.i, ptr %pga31.i.i, align 4
  %data_rate34.i.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 %61, i32 2
  %67 = ptrtoint ptr %data_rate34.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %data_rate.0.i.i, ptr %data_rate34.i.i, align 4
  %inc.i.i = add i32 %i.083.i.i, 1
  br label %for.inc.i.i

cleanup.i.i:                                      ; preds = %if.then23.i.i.cleanup.i.i_crit_edge, %if.then13.i.i.cleanup.i.i_crit_edge
  %.str.43.sink = phi ptr [ @.str.39, %if.then13.i.i.cleanup.i.i_crit_edge ], [ @.str.43, %if.then23.i.i.cleanup.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.43.sink, ptr noundef nonnull %node.080.i.i) #11
  call void @fwnode_handle_put(ptr noundef nonnull %node.080.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i.i) #8
  br label %ads1015_client_get_channels_config.exit.i

for.inc.i.i:                                      ; preds = %if.end30.i.i, %do.end9.i.i, %do.end.i.i
  %i.1.ph.i.i = phi i32 [ %inc.i.i, %if.end30.i.i ], [ %i.083.i.i, %do.end9.i.i ], [ %i.083.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i.i) #8
  %call38.i.i = call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef nonnull %node.080.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call38.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.ph.i.i)
  %cmp39.i.i = icmp slt i32 %i.1.ph.i.i, 0
  br i1 %cmp39.i.i, label %for.end.i.i.ads1015_client_get_channels_config.exit.i_crit_edge, label %for.end.i.i.ads1015_get_channels_config.exit_crit_edge

for.end.i.i.ads1015_get_channels_config.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_get_channels_config.exit

for.end.i.i.ads1015_client_get_channels_config.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_client_get_channels_config.exit.i

ads1015_client_get_channels_config.exit.i:        ; preds = %for.end.i.i.ads1015_client_get_channels_config.exit.i_crit_edge, %cleanup.i.i, %sw.epilog.ads1015_client_get_channels_config.exit.i_crit_edge
  %pga.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 0, i32 1
  %68 = ptrtoint ptr %pga.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %pga.i, align 4
  %data_rate.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 0, i32 2
  %69 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 4, ptr %data_rate.i, align 4
  %pga.1.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 1, i32 1
  %70 = ptrtoint ptr %pga.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %pga.1.i, align 4
  %data_rate.1.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 1, i32 2
  %71 = ptrtoint ptr %data_rate.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %data_rate.1.i, align 4
  %pga.2.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 2, i32 1
  %72 = ptrtoint ptr %pga.2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %pga.2.i, align 4
  %data_rate.2.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 2, i32 2
  %73 = ptrtoint ptr %data_rate.2.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %data_rate.2.i, align 4
  %pga.3.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 3, i32 1
  %74 = ptrtoint ptr %pga.3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %pga.3.i, align 4
  %data_rate.3.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 3, i32 2
  %75 = ptrtoint ptr %data_rate.3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %data_rate.3.i, align 4
  %pga.4.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 4, i32 1
  %76 = ptrtoint ptr %pga.4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %pga.4.i, align 4
  %data_rate.4.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 4, i32 2
  %77 = ptrtoint ptr %data_rate.4.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %data_rate.4.i, align 4
  %pga.5.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 5, i32 1
  %78 = ptrtoint ptr %pga.5.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %pga.5.i, align 4
  %data_rate.5.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 5, i32 2
  %79 = ptrtoint ptr %data_rate.5.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %data_rate.5.i, align 4
  %pga.6.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 6, i32 1
  %80 = ptrtoint ptr %pga.6.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %pga.6.i, align 4
  %data_rate.6.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 6, i32 2
  %81 = ptrtoint ptr %data_rate.6.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %data_rate.6.i, align 4
  %pga.7.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 7, i32 1
  %82 = ptrtoint ptr %pga.7.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %pga.7.i, align 4
  %data_rate.7.i = getelementptr %struct.ads1015_data, ptr %58, i32 0, i32 2, i32 7, i32 2
  %83 = ptrtoint ptr %data_rate.7.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %data_rate.7.i, align 4
  br label %ads1015_get_channels_config.exit

ads1015_get_channels_config.exit:                 ; preds = %ads1015_client_get_channels_config.exit.i, %for.end.i.i.ads1015_get_channels_config.exit_crit_edge
  %call24 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ads1015_regmap_config, ptr noundef nonnull @ads1015_probe._key, ptr noundef nonnull @.str.7) #8
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call24, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end30, label %if.end34

do.end30:                                         ; preds = %ads1015_get_channels_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %87 = ptrtoint ptr %86 to i32
  br label %cleanup92

if.end34:                                         ; preds = %ads1015_get_channels_config.exit
  %call36 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ads1015_trigger_handler, i32 noundef 0, ptr noundef nonnull @ads1015_buffer_setup_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %cleanup92

if.end44:                                         ; preds = %if.end34
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %88 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool45.not = icmp eq i32 %89, 0
  br i1 %tobool45.not, label %if.end44.if.end70_crit_edge, label %if.then46

if.end44.if.end70_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then46:                                        ; preds = %if.end44
  %call48 = call ptr @irq_get_irq_data(i32 noundef %89) #8
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call48, i32 0, i32 3
  %90 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %common.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %and.i = and i32 %93, 15
  %94 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %and.i, label %if.then46.cleanup92_crit_edge [
    i32 8, label %if.then46.sw.epilog54_crit_edge
    i32 4, label %sw.bb51
  ]

if.then46.sw.epilog54_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog54

if.then46.cleanup92_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

sw.bb51:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.bb51, %if.then46.sw.epilog54_crit_edge
  %cfg_comp.0 = phi i32 [ 15, %sw.bb51 ], [ 7, %if.then46.sw.epilog54_crit_edge ]
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 1, i32 noundef 15, i32 noundef %cfg_comp.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %cleanup, label %sw.epilog54.cleanup92_crit_edge

sw.epilog54.cleanup92_crit_edge:                  ; preds = %sw.epilog54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

cleanup:                                          ; preds = %sw.epilog54
  %97 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq, align 4
  %or62 = or i32 %and.i, 8192
  %name63 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call64 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %98, ptr noundef null, ptr noundef nonnull @ads1015_event_handler, i32 noundef %or62, ptr noundef %name63, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup.if.end70_crit_edge, label %cleanup.cleanup92_crit_edge

cleanup.cleanup92_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

cleanup.if.end70_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end70:                                         ; preds = %cleanup.if.end70_crit_edge, %if.end44.if.end70_crit_edge
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 1, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool72.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.cleanup92_crit_edge

if.end70.cleanup92_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.end74:                                         ; preds = %if.end70
  %conv_invalid = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 7
  %101 = ptrtoint ptr %conv_invalid to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %conv_invalid, align 4
  %call.i162 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool77.not = icmp eq i32 %call.i162, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup92_crit_edge

if.end74.cleanup92_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.end79:                                         ; preds = %if.end74
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call83 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.end89, label %if.end79.cleanup92_crit_edge

if.end79.cleanup92_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

do.end89:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %cleanup92

cleanup92:                                        ; preds = %do.end89, %if.end79.cleanup92_crit_edge, %if.end74.cleanup92_crit_edge, %if.end70.cleanup92_crit_edge, %cleanup.cleanup92_crit_edge, %sw.epilog54.cleanup92_crit_edge, %if.then46.cleanup92_crit_edge, %do.end42, %do.end30, %do.end13, %entry.cleanup92_crit_edge
  %retval.1 = phi i32 [ -22, %do.end13 ], [ %87, %do.end30 ], [ %call36, %do.end42 ], [ %call83, %do.end89 ], [ %call64, %cleanup.cleanup92_crit_edge ], [ -12, %entry.cleanup92_crit_edge ], [ %call.i.i, %if.end70.cleanup92_crit_edge ], [ %call.i162, %if.end74.cleanup92_crit_edge ], [ 0, %if.end79.cleanup92_crit_edge ], [ %call.i, %sw.epilog54.cleanup92_crit_edge ], [ -22, %if.then46.cleanup92_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %scan = alloca %struct.anon.87, align 8
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %res, align 4, !annotation !138
  %5 = call ptr @memset(ptr %scan, i32 0, i32 16)
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_first_bit_be(ptr noundef %7, i32 noundef %9) #8
  %call3 = call fastcc i32 @ads1015_get_adc_result(ptr noundef %3, i32 noundef %call2, ptr noundef nonnull %res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %err

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res, align 4
  %conv = trunc i32 %11 to i16
  %12 = ptrtoint ptr %scan to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %scan, align 8
  call void @mutex_unlock(ptr noundef %lock) #8
  %call7 = call i64 @iio_get_time_ns(ptr noundef %1) #8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %scan_timestamp.i, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %16, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call7, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #8
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_event_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !138
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_channel.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %event_channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event_channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 8
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %comp_mode = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %comp_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %comp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %shl = select i1 %cmp, i64 281474976710656, i64 0
  %conv8.mask = and i32 %6, 65535
  %conv9 = zext i32 %conv8.mask to i64
  %or10 = or i64 %shl, %conv9
  %call11 = call i64 @iio_get_time_ns(ptr noundef %priv) #8
  %call12 = call i32 @iio_push_event(ptr noundef %priv, i64 noundef %or10, i64 noundef %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb23
    i32 12, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %event_channel.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %event_channel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 8
  br i1 %cmp.i.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.release_direct_crit_edge

land.lhs.true.release_direct_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_direct

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %8) #8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end8

if.then.i.i:                                      ; preds = %if.end4
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !141
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.release_direct_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.release_direct_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_direct

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %release_direct

if.end8:                                          ; preds = %if.end4
  %address9 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %address9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address9, align 4
  %call10 = tail call fastcc i32 @ads1015_get_adc_result(ptr noundef %1, i32 noundef %11, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @ads1015_set_power_state(ptr noundef %1, i1 noundef zeroext false)
  br label %release_direct

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 1
  %conv = zext i8 %15 to i32
  %shr = ashr i32 %13, %conv
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %realbits, align 1
  %18 = sub i8 32, %17
  %conv1.i = zext i8 %18 to i32
  %shl.i = shl i32 %shr, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  store i32 %shr.i, ptr %val, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i64 = tail call ptr @regmap_get_device(ptr noundef %20) #8
  %call.i6.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i64, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i6.i, ptr %last_busy.i.i, align 8
  %call.i7.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i64, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %cmp.i65 = icmp slt i32 %call.i7.i, 0
  %spec.select = select i1 %cmp.i65, i32 %call.i7.i, i32 1
  br label %release_direct

release_direct:                                   ; preds = %if.end14, %if.then12, %do.end11.i.i.i.i.i.i, %if.then.i.i.release_direct_crit_edge, %land.lhs.true.release_direct_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then12 ], [ -16, %land.lhs.true.release_direct_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i, %if.then.i.i.release_direct_crit_edge ], [ %spec.select, %if.end14 ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %address24 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %address24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %address24, align 4
  %pga = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 2, i32 %23, i32 1
  %24 = ptrtoint ptr %pga to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pga, align 4
  %arrayidx25 = getelementptr [8 x i32], ptr @ads1015_fullscale_range, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx25, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  %realbits27 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %realbits27 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %realbits27, align 1
  %conv28 = zext i8 %30 to i32
  %sub29 = add nsw i32 %conv28, -1
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub29, ptr %val2, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %address32 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %32 = ptrtoint ptr %address32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %address32, align 4
  %data_rate = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 2, i32 %33, i32 2
  %34 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_rate, align 4
  %data_rate34 = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %data_rate34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data_rate34, align 4
  %arrayidx35 = getelementptr i32, ptr %37, i32 %35
  %38 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx35, align 4
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb23, %release_direct, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 1, %sw.bb30 ], [ 11, %sw.bb23 ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ %ret.0, %release_direct ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %conv.i = sext i32 %val to i64
  %mul.i = mul nsw i64 %conv.i, 1000000
  %conv1.i = sext i32 %val2 to i64
  %add.i = add nsw i64 %mul.i, %conv1.i
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %realbits.i, align 1
  %conv2.i = zext i8 %4 to i32
  %sub.i = add nsw i32 %conv2.i, -1
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %add.i, %sh_prom.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %5 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !138
  %call.i.i = call i64 @div_s64_rem(i64 noundef %shl.i, i32 noundef 1000000, ptr noundef nonnull %remainder.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #8
  %conv3.i = trunc i64 %call.i.i to i32
  %6 = zext i32 %conv3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %conv3.i, label %sw.bb.sw.epilog_crit_edge [
    i32 6144, label %sw.bb.if.then.i_crit_edge
    i32 4096, label %if.then.fold.split.i
    i32 2048, label %if.then.fold.split16.i
    i32 1024, label %if.then.fold.split17.i
    i32 512, label %if.then.fold.split18.i
    i32 256, label %if.then.fold.split19.i
  ]

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.fold.split.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split.i, %sw.bb.if.then.i_crit_edge
  %i.014.lcssa.i = phi i32 [ 0, %sw.bb.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split16.i ], [ 3, %if.then.fold.split17.i ], [ 4, %if.then.fold.split18.i ], [ 5, %if.then.fold.split19.i ]
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address.i, align 4
  %pga.i = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 2, i32 %8, i32 1
  %9 = ptrtoint ptr %pga.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.014.lcssa.i, ptr %pga.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  %data_rate.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_rate.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %val)
  %cmp1.i = icmp eq i32 %15, %val
  br i1 %cmp1.i, label %sw.bb2.if.then.i10_crit_edge, label %for.inc.i

sw.bb2.if.then.i10_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

if.then.i10:                                      ; preds = %for.inc.6.i.if.then.i10_crit_edge, %for.inc.5.i.if.then.i10_crit_edge, %for.inc.4.i.if.then.i10_crit_edge, %for.inc.3.i.if.then.i10_crit_edge, %for.inc.2.i.if.then.i10_crit_edge, %for.inc.1.i.if.then.i10_crit_edge, %for.inc.i.if.then.i10_crit_edge, %sw.bb2.if.then.i10_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %sw.bb2.if.then.i10_crit_edge ], [ 1, %for.inc.i.if.then.i10_crit_edge ], [ 2, %for.inc.1.i.if.then.i10_crit_edge ], [ 3, %for.inc.2.i.if.then.i10_crit_edge ], [ 4, %for.inc.3.i.if.then.i10_crit_edge ], [ 5, %for.inc.4.i.if.then.i10_crit_edge ], [ 6, %for.inc.5.i.if.then.i10_crit_edge ], [ 7, %for.inc.6.i.if.then.i10_crit_edge ]
  %data_rate3.i = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 2, i32 %11, i32 2
  %16 = ptrtoint ptr %data_rate3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.09.lcssa.i, ptr %data_rate3.i, align 4
  br label %sw.epilog

for.inc.i:                                        ; preds = %sw.bb2
  %arrayidx.1.i = getelementptr i32, ptr %13, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.1.i = icmp eq i32 %18, %val
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i10_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i10_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr i32, ptr %13, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val)
  %cmp1.2.i = icmp eq i32 %20, %val
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i10_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i10_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr i32, ptr %13, i32 3
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %val)
  %cmp1.3.i = icmp eq i32 %22, %val
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i10_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i10_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr i32, ptr %13, i32 4
  %23 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %val)
  %cmp1.4.i = icmp eq i32 %24, %val
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i10_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i10_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr i32, ptr %13, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %val)
  %cmp1.5.i = icmp eq i32 %26, %val
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i10_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i10_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr i32, ptr %13, i32 6
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %val)
  %cmp1.6.i = icmp eq i32 %28, %val
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i10_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i10_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr i32, ptr %13, i32 7
  %29 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %val)
  %cmp1.7.i = icmp eq i32 %30, %val
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i10_crit_edge, label %for.inc.6.i.sw.epilog_crit_edge

for.inc.6.i.sw.epilog_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.6.i.if.then.i10_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i10

sw.epilog:                                        ; preds = %for.inc.6.i.sw.epilog_crit_edge, %if.then.i10, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then.i10 ], [ -22, %for.inc.6.i.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %event_channel = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %event_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_channel, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %dir, label %sw.default [
    i32 1, label %if.then.if.end_crit_edge
    i32 0, label %sw.bb1
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %comp_mode = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %comp_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %comp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2 = icmp eq i32 %8, 1
  %conv = zext i1 %cmp2 to i32
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb1, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %sw.default ], [ %conv, %sw.bb1 ], [ 0, %entry.if.end_crit_edge ], [ %dir, %if.then.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_write_event_config(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %cond = zext i1 %cmp to i32
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool3.not = icmp eq i32 %state, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address.i, align 4
  %low_thresh1.i = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %3, i32 2
  %4 = ptrtoint ptr %low_thresh1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %low_thresh1.i, align 4
  %high_thresh5.i = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %3, i32 1
  %6 = ptrtoint ptr %high_thresh5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %high_thresh5.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !138
  %event_channel.i.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %event_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, 8
  br i1 %cmp.i.not.i, label %if.end11.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp.not.i = icmp eq i32 %10, %3
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i.ads1015_enable_event_config.exit_crit_edge

if.then.i.ads1015_enable_event_config.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_enable_event_config.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %comp_mode7.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %comp_mode7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %comp_mode7.i, align 4
  %13 = or i32 %12, %dir
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %spec.select.i = select i1 %14, i32 -16, i32 0
  br label %ads1015_enable_event_config.exit

if.end11.i:                                       ; preds = %if.then4
  br i1 %cmp, label %if.end11.i.if.end17.i_crit_edge, label %if.then13.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %realbits.i, align 1
  %conv.i = zext i8 %16 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %shl.i = shl nsw i32 -1, %sub.i
  %sub14.i = add i32 %7, -1
  %17 = tail call i32 @llvm.smax.i32(i32 %shl.i, i32 %sub14.i) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end17.i_crit_edge
  %low_thresh.0.i = phi i32 [ %17, %if.then13.i ], [ %5, %if.end11.i.if.end17.i_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %shift.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift.i, align 1
  %conv19.i = zext i8 %21 to i32
  %shl20.i = shl i32 %low_thresh.0.i, %conv19.i
  %call21.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 2, i32 noundef %shl20.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %if.end23.i, label %if.end17.i.ads1015_enable_event_config.exit_crit_edge

if.end17.i.ads1015_enable_event_config.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_enable_event_config.exit

if.end23.i:                                       ; preds = %if.end17.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shift.i, align 1
  %conv27.i = zext i8 %25 to i32
  %shl28.i = shl i32 %7, %conv27.i
  %call29.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 3, i32 noundef %shl28.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end23.i.ads1015_enable_event_config.exit_crit_edge

if.end23.i.ads1015_enable_event_config.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_enable_event_config.exit

if.end32.i:                                       ; preds = %if.end23.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i.i = tail call ptr @regmap_get_device(ptr noundef %27) #8
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end37.i

if.then.i.i.i:                                    ; preds = %if.end32.i
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #8, !srcloc !141
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.ads1015_enable_event_config.exit_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.ads1015_enable_event_config.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_enable_event_config.exit

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %ads1015_enable_event_config.exit

if.end37.i:                                       ; preds = %if.end32.i
  %29 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %address.i, align 4
  %31 = ptrtoint ptr %event_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %event_channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %32)
  %cmp.i.not.i.i = icmp eq i32 %32, 8
  br i1 %cmp.i.not.i.i, label %if.end37.i.ads1015_event_channel_enable.exit.i_crit_edge, label %do.end.i.i, !prof !143

if.end37.i.ads1015_event_channel_enable.exit.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_event_channel_enable.exit.i

do.end.i.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 265, i32 noundef 9, ptr noundef null) #8
  br label %ads1015_event_channel_enable.exit.i

ads1015_event_channel_enable.exit.i:              ; preds = %do.end.i.i, %if.end37.i.ads1015_event_channel_enable.exit.i_crit_edge
  %33 = ptrtoint ptr %event_channel.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %event_channel.i.i, align 4
  %comp_mode19.i.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %comp_mode19.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %comp_mode19.i.i, align 4
  %35 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address.i, align 4
  %call40.i = call fastcc i32 @ads1015_get_adc_result(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %ads1015_event_channel_enable.exit.i.ads1015_enable_event_config.exit_crit_edge, label %if.then42.i

ads1015_event_channel_enable.exit.i.ads1015_enable_event_config.exit_crit_edge: ; preds = %ads1015_event_channel_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads1015_enable_event_config.exit

if.then42.i:                                      ; preds = %ads1015_event_channel_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %event_channel.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %event_channel.i.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i81.i = call ptr @regmap_get_device(ptr noundef %39) #8
  %call.i6.i.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %call.i81.i, i32 0, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i6.i.i, ptr %last_busy.i.i.i, align 8
  %call.i7.i.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i81.i, i32 noundef 13) #8
  br label %ads1015_enable_event_config.exit

ads1015_enable_event_config.exit:                 ; preds = %if.then42.i, %ads1015_event_channel_enable.exit.i.ads1015_enable_event_config.exit_crit_edge, %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.ads1015_enable_event_config.exit_crit_edge, %if.end23.i.ads1015_enable_event_config.exit_crit_edge, %if.end17.i.ads1015_enable_event_config.exit_crit_edge, %lor.lhs.false.i, %if.then.i.ads1015_enable_event_config.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %if.then.i.ads1015_enable_event_config.exit_crit_edge ], [ %call21.i, %if.end17.i.ads1015_enable_event_config.exit_crit_edge ], [ %call29.i, %if.end23.i.ads1015_enable_event_config.exit_crit_edge ], [ 0, %ads1015_event_channel_enable.exit.i.ads1015_enable_event_config.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ], [ %call40.i, %if.then42.i ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i.i ], [ %call.i.i.i, %if.then.i.i.i.ads1015_enable_event_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %event_channel.i.i21 = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %event_channel.i.i21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %event_channel.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp.i.not.i22 = icmp eq i32 %42, 8
  br i1 %cmp.i.not.i22, label %if.else.if.end7_crit_edge, label %if.end.i

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %if.else
  %address.i23 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %43 = ptrtoint ptr %address.i23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %address.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.not.i24 = icmp eq i32 %42, %44
  br i1 %cmp.not.i24, label %if.end2.i, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end2.i:                                        ; preds = %if.end.i
  %comp_mode3.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %comp_mode3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %comp_mode3.i, align 4
  %47 = or i32 %46, %dir
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %if.end2.i.if.end7_crit_edge, label %if.end7.i

if.end2.i.if.end7_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7.i:                                        ; preds = %if.end2.i
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 1, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool.not.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %tobool.not.i27, label %if.end10.i, label %if.end7.i.if.end7_crit_edge

if.end7.i.if.end7_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %event_channel.i.i21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %event_channel.i.i21, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i21.i = tail call ptr @regmap_get_device(ptr noundef %53) #8
  %call.i6.i.i28 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i29 = getelementptr inbounds %struct.device, ptr %call.i21.i, i32 0, i32 12, i32 22
  %54 = ptrtoint ptr %last_busy.i.i.i29 to i32
  call void @__asan_store8_noabort(i32 %54)
  store volatile i64 %call.i6.i.i28, ptr %last_busy.i.i.i29, align 8
  %call.i7.i.i30 = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i21.i, i32 noundef 13) #8
  %55 = tail call i32 @llvm.smin.i32(i32 %call.i7.i.i30, i32 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end10.i, %if.end7.i.if.end7_crit_edge, %if.end2.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %if.else.if.end7_crit_edge, %ads1015_enable_event_config.exit
  %ret.0 = phi i32 [ %retval.0.i, %ads1015_enable_event_config.exit ], [ 0, %if.else.if.end7_crit_edge ], [ 0, %if.end.i.if.end7_crit_edge ], [ 0, %if.end2.i.if.end7_crit_edge ], [ %call.i.i26, %if.end7.i.if.end7_crit_edge ], [ %55, %if.end10.i ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %ret.0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %info, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %high_thresh = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %4, i32 1
  %low_thresh = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %4, i32 2
  %cond.in = select i1 %cmp, ptr %high_thresh, ptr %low_thresh
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %address5 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %address5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address5, align 4
  %data_rate = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 2, i32 %8, i32 2
  %9 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_rate, align 4
  %arrayidx9 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %8
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr [3 x i32], ptr @ads1015_comp_queue, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  %mul = mul i32 %14, 1000000
  %data_rate12 = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %data_rate12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_rate12, align 4
  %arrayidx13 = getelementptr i32, ptr %16, i32 %10
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  %div = udiv i32 %mul, %18
  %div.frozen = freeze i32 %div
  %div14 = sdiv i32 %div.frozen, 1000000
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div14, ptr %val, align 4
  %20 = mul i32 %div14, 1000000
  %rem.decomposed = sub i32 %div.frozen, %20
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rem.decomposed, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 2, %sw.bb4 ], [ 1, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %realbits1 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits1, align 1
  %lock = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %info, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp.not = icmp sle i32 %shl, %val
  %shl4 = shl nsw i32 -1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shl4, i32 %val)
  %cmp5 = icmp sgt i32 %shl4, %val
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp7 = icmp eq i32 %dir, 1
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %high_thresh = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %6, i32 1
  %7 = ptrtoint ptr %high_thresh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %high_thresh, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %low_thresh = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %6, i32 2
  %8 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val, ptr %low_thresh, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %address15 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %address15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address15, align 4
  %data_rate = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 2, i32 %10, i32 2
  %11 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_rate, align 4
  %mul = mul i32 %val, 1000000
  %add = add i32 %mul, %val2
  %data_rate22 = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %data_rate22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_rate22, align 4
  %arrayidx23 = getelementptr i32, ptr %14, i32 %12
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx23, align 4
  %div = udiv i32 1000000, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp25.not = icmp sgt i32 %add, %div
  br i1 %cmp25.not, label %for.inc, label %sw.bb14.for.end_crit_edge

sw.bb14.for.end_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %div.1 = udiv i32 2000000, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div.1)
  %cmp25.not.1 = icmp sgt i32 %add, %div.1
  %spec.select = select i1 %cmp25.not.1, i32 2, i32 1
  br label %for.end

for.end:                                          ; preds = %for.inc, %sw.bb14.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %sw.bb14.for.end_crit_edge ], [ %spec.select, %for.inc ]
  %arrayidx31 = getelementptr %struct.ads1015_data, ptr %1, i32 0, i32 5, i32 %10
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0.lcssa, ptr %arrayidx31, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.else, %if.then9, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ 0, %if.then9 ], [ 0, %if.else ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads1015_set_power_state(ptr nocapture noundef readonly %data, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #8
  br i1 %on, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.thread11_crit_edge

if.then.if.end.thread11_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread11

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !141
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.end.thread_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.end.thread_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %if.end.thread

if.end:                                           ; preds = %entry
  %call.i6 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 22
  %3 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store volatile i64 %call.i6, ptr %last_busy.i, align 8
  %call.i7 = tail call i32 @__pm_runtime_suspend(ptr noundef %call, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp = icmp slt i32 %call.i7, 0
  br i1 %cmp, label %if.end.if.end.thread_crit_edge, label %if.end.if.end.thread11_crit_edge

if.end.if.end.thread11_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread11

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.if.end.thread_crit_edge
  %ret.010 = phi i32 [ %call.i7, %if.end.if.end.thread_crit_edge ], [ %call.i, %if.then.i.if.end.thread_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  br label %if.end.thread11

if.end.thread11:                                  ; preds = %if.end.thread, %if.end.if.end.thread11_crit_edge, %if.then.if.end.thread11_crit_edge
  %4 = phi i32 [ %ret.010, %if.end.thread ], [ 0, %if.end.if.end.thread11_crit_edge ], [ 0, %if.then.if.end.thread11_crit_edge ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads1015_get_adc_result(ptr nocapture noundef %data, i32 noundef %chan, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %old = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old) #8
  %0 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %old, align 4, !annotation !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %chan)
  %1 = icmp ugt i32 %chan, 7
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %old) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pga4 = getelementptr %struct.ads1015_data, ptr %data, i32 0, i32 2, i32 %chan, i32 1
  %4 = ptrtoint ptr %pga4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pga4, align 4
  %data_rate = getelementptr %struct.ads1015_data, ptr %data, i32 0, i32 2, i32 %chan, i32 2
  %6 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_rate, align 4
  %shl = shl nuw nsw i32 %chan, 12
  %shl7 = shl i32 %5, 9
  %or = or i32 %shl7, %shl
  %shl8 = shl i32 %7, 5
  %or9 = or i32 %or, %shl8
  %event_channel.i = getelementptr inbounds %struct.ads1015_data, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %event_channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event_channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 8
  br i1 %cmp.i.not, label %if.end3.if.end18_crit_edge, label %if.then11

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13 = getelementptr %struct.ads1015_data, ptr %data, i32 0, i32 5, i32 %chan
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %comp_mode = getelementptr inbounds %struct.ads1015_data, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %comp_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %comp_mode, align 4
  %shl15 = shl i32 %13, 4
  %or16 = or i32 %11, %or9
  %or17 = or i32 %or16, %shl15
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end3.if.end18_crit_edge
  %mask.0 = phi i32 [ 32499, %if.then11 ], [ 32480, %if.end3.if.end18_crit_edge ]
  %cfg.0 = phi i32 [ %or17, %if.then11 ], [ %or9, %if.end3.if.end18_crit_edge ]
  %14 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old, align 4
  %neg = xor i32 %mask.0, -1
  %and = and i32 %15, %neg
  %and19 = and i32 %cfg.0, %mask.0
  %or20 = or i32 %and, %and19
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or20)
  %cmp21.not = icmp eq i32 %15, %or20
  br i1 %cmp21.not, label %if.end18.if.end28_crit_edge, label %if.then22

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then22:                                        ; preds = %if.end18
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call24 = call i32 @regmap_write(ptr noundef %17, i32 noundef 1, i32 noundef %or20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %conv_invalid = getelementptr inbounds %struct.ads1015_data, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %conv_invalid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %conv_invalid, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end18.if.end28_crit_edge
  %conv_invalid29 = getelementptr inbounds %struct.ads1015_data, ptr %data, i32 0, i32 7
  %19 = ptrtoint ptr %conv_invalid29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %conv_invalid29, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %if.end28.if.end49_crit_edge, label %if.then31

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old, align 4
  %and32 = lshr i32 %22, 5
  %shr = and i32 %and32, 7
  %data_rate33 = getelementptr inbounds %struct.ads1015_data, ptr %data, i32 0, i32 6
  %23 = ptrtoint ptr %data_rate33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_rate33, align 4
  %arrayidx34 = getelementptr i32, ptr %24, i32 %shr
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx34, align 4
  %sub = add i32 %26, 999999
  %div = udiv i32 %sub, %26
  %arrayidx38 = getelementptr i32, ptr %24, i32 %7
  %27 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx38, align 4
  %sub40 = add i32 %28, 999999
  %div43 = udiv i32 %sub40, %28
  %add44 = add i32 %div43, %div
  %div45 = sdiv i32 %add44, 10
  %add46 = add i32 %div45, %add44
  %add47 = add i32 %add46, 1
  call void @usleep_range_state(i32 noundef %add46, i32 noundef %add47, i32 noundef 2) #8
  %29 = ptrtoint ptr %conv_invalid29 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %conv_invalid29, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then31, %if.end28.if.end49_crit_edge
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %call51 = call i32 @regmap_read(ptr noundef %31, i32 noundef 0, ptr noundef %val) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end49 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call24, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ads1015_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 3
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %event_channel.i = getelementptr inbounds %struct.ads1015_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %event_channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 8
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !141
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !142
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %3) #8
  %call.i6.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i6.i, ptr %last_busy.i.i, align 8
  %call.i7.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #8
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i7.i, i32 0)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_validate_scan_mask_onehot(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads1015_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv_invalid = getelementptr inbounds %struct.ads1015_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %conv_invalid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %conv_invalid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_ti_ads1015__291_1133_ads1015_driver_init6, !1, !"__initcall__kmod_ti_ads1015__291_1133_ads1015_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1133, i32 1}
!2 = !{ptr @__exitcall_ads1015_driver_exit, !1, !"__exitcall_ads1015_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1135, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1136, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1137, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1124, i32 11}
!12 = !{ptr @ads1015_driver, !13, !"ads1015_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1122, i32 26}
!14 = !{ptr @ads1015_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 948, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 970, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ads1015_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ads1015_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ads1015_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 989, i32 17}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 991, i32 3}
!30 = !{ptr @ads1015_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ads1015_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 999, i32 3}
!34 = !{ptr @ads1015_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ads1015_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1053, i32 3}
!38 = !{ptr @ads1015_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ads1015_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 296, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 297, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 298, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 299, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 300, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 301, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 302, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 303, i32 2}
!56 = !{ptr @ads1015_channels, !57, !"ads1015_channels", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 295, i32 35}
!58 = !{ptr @ads1015_events, !59, !"ads1015_events", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 119, i32 36}
!60 = !{ptr @ads1015_info, !61, !"ads1015_info", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 835, i32 30}
!62 = !{ptr @ads1015_attribute_group, !63, !"ads1015_attribute_group", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 821, i32 37}
!64 = !{ptr @ads1015_attributes, !65, !"ads1015_attributes", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 815, i32 26}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 805, i32 8}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iio_const_attr_ads1015_scale_available, !67, !"iio_const_attr_ads1015_scale_available", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 810, i32 8}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @iio_const_attr_ads1015_sampling_frequency_available, !71, !"iio_const_attr_ads1015_sampling_frequency_available", i1 false, i1 false}
!74 = !{ptr @ads1015_fullscale_range, !75, !"ads1015_fullscale_range", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 109, i32 12}
!76 = !{ptr @ads1015_comp_queue, !77, !"ads1015_comp_queue", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 117, i32 18}
!78 = !{ptr @ads1015_data_rate, !79, !"ads1015_data_rate", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 97, i32 27}
!80 = !{ptr @ads1115_channels, !81, !"ads1115_channels", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 307, i32 35}
!82 = !{ptr @ads1115_info, !83, !"ads1115_info", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 845, i32 30}
!84 = !{ptr @ads1115_attribute_group, !85, !"ads1115_attribute_group", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 831, i32 37}
!86 = !{ptr @ads1115_attributes, !87, !"ads1115_attributes", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 825, i32 26}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 807, i32 8}
!90 = !{ptr @iio_const_attr_ads1115_scale_available, !89, !"iio_const_attr_ads1115_scale_available", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 812, i32 8}
!93 = !{ptr @iio_const_attr_ads1115_sampling_frequency_available, !92, !"iio_const_attr_ads1115_sampling_frequency_available", i1 false, i1 false}
!94 = !{ptr @ads1115_data_rate, !95, !"ads1115_data_rate", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 101, i32 27}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 869, i32 38}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 870, i32 4}
!100 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ads1015_client_get_channels_config._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ads1015_client_get_channels_config._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 876, i32 4}
!105 = !{ptr @ads1015_client_get_channels_config._entry.34, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ads1015_client_get_channels_config._entry_ptr.36, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 881, i32 39}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 884, i32 5}
!111 = !{ptr @ads1015_client_get_channels_config._entry.38, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ads1015_client_get_channels_config._entry_ptr.40, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 890, i32 39}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 893, i32 5}
!117 = !{ptr @ads1015_client_get_channels_config._entry.42, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ads1015_client_get_channels_config._entry_ptr.44, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @ads1015_regmap_config, !120, !"ads1015_regmap_config", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 288, i32 35}
!121 = !{ptr @ads1015_buffer_setup_ops, !122, !"ads1015_buffer_setup_ops", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 799, i32 42}
!123 = !{ptr @ads1015_of_match, !124, !"ads1015_of_match", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1109, i32 34}
!125 = !{ptr @ads1015_pm_ops, !126, !"ads1015_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1097, i32 32}
!127 = !{ptr @ads1015_id, !128, !"ads1015_id", i1 false, i1 false}
!128 = !{!"../drivers/iio/adc/ti-ads1015.c", i32 1102, i32 35}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i8 0, i8 2}
!140 = !{i64 2148366532}
!141 = !{i64 852152, i64 852177, i64 852199, i64 852215, i64 852227, i64 852247, i64 852271, i64 852287, i64 852299}
!142 = !{i64 2148366720}
!143 = !{!"branch_weights", i32 2000, i32 1}
