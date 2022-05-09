; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/sx9500.c_pt.bc'
source_filename = "../drivers/iio/proximity/sx9500.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.87 = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sx9500_data = type { %struct.mutex, ptr, ptr, ptr, ptr, [4 x i8], [4 x i8], i8, ptr, i32, %struct.completion, i32, i32, [4 x i32] }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_sx9500__289_1069_sx9500_driver_init6 = internal global ptr @sx9500_driver_init, section ".initcall6.init", align 4
@sx9500_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sx9500_probe, ptr @sx9500_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sx9500_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sx9500_pm_ops, ptr null, ptr null }, ptr @sx9500_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sx9500_driver_exit = internal global ptr @sx9500_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [50 x i8] c"sx9500.author=Vlad Dogaru <vlad.dogaru@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [62 x i8] c"sx9500.description=Driver for Semtech SX9500 proximity sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"sx9500.file=drivers/iio/proximity/sx9500\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"sx9500.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sx9500\00", [25 x i8] zeroinitializer }, align 32
@sx9500_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx9500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sx9500_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sx9500_suspend, ptr @sx9500_resume, ptr @sx9500_suspend, ptr @sx9500_resume, ptr @sx9500_suspend, ptr @sx9500_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sx9500_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sx9500\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sx9500_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@sx9500_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sx9500_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr @sx9500_writeable_regs, ptr @sx9500_readable_regs, ptr @sx9500_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sx9500:921:(&sx9500_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@sx9500_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9500_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9500_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9500_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9500_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@sx9500_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @sx9500_attribute_group, ptr @sx9500_read_raw, ptr null, ptr null, ptr @sx9500_write_raw, ptr null, ptr null, ptr @sx9500_read_event_config, ptr @sx9500_write_event_config, ptr null, ptr null, ptr null, ptr @sx9500_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sx9500_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 939, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no valid irq found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx9500_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/proximity/sx9500.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sx9500_probe._entry_ptr = internal global ptr @sx9500_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx9500_event\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@sx9500_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @sx9500_set_trigger_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@sx9500_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @sx9500_buffer_postenable, ptr @sx9500_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sx9500_writeable_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sx9500_writable_reg_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sx9500_readable_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @sx9500_non_readable_reg_ranges, i32 4 }, [16 x i8] zeroinitializer }, align 32
@sx9500_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sx9500_volatile_reg_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sx9500_writable_reg_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 3, i32 3 }, %struct.regmap_range { i32 6, i32 14 }, %struct.regmap_range { i32 32, i32 32 }, %struct.regmap_range { i32 39, i32 40 }, %struct.regmap_range { i32 127, i32 127 }], [56 x i8] zeroinitializer }, align 32
@sx9500_non_readable_reg_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 2, i32 2 }, %struct.regmap_range { i32 4, i32 5 }, %struct.regmap_range { i32 15, i32 31 }, %struct.regmap_range { i32 41, i32 126 }], [32 x i8] zeroinitializer }, align 32
@sx9500_volatile_reg_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }, %struct.regmap_range { i32 33, i32 40 }, %struct.regmap_range { i32 127, i32 127 }], [40 x i8] zeroinitializer }, align 32
@sx9500_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@sx9500_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sx9500_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@sx9500_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.11, %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"2.500000 3.333333 5 6.666666 8.333333 11.111111 16.666666 33.333333\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@sx9500_scan_period_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 30, i32 60, i32 90, i32 120, i32 150, i32 200, i32 300, i32 400], [32 x i8] zeroinitializer }, align 32
@sx9500_samp_freq_table = internal constant { [8 x %struct.anon.87], [32 x i8] } { [8 x %struct.anon.87] [%struct.anon.87 { i32 33, i32 333333 }, %struct.anon.87 { i32 16, i32 666666 }, %struct.anon.87 { i32 11, i32 111111 }, %struct.anon.87 { i32 8, i32 333333 }, %struct.anon.87 { i32 6, i32 666666 }, %struct.anon.87 { i32 5, i32 0 }, %struct.anon.87 { i32 3, i32 333333 }, %struct.anon.87 { i32 2, i32 500000 }], [32 x i8] zeroinitializer }, align 32
@sx9500_gpio_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sx9500_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@sx9500_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.5, i32 892, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio get irq failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sx9500_gpio_probe._entry_ptr = internal global ptr @sx9500_gpio_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sx9500_gpio_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.5, i32 899, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpio get reset pin failed\0A\00", [37 x i8] zeroinitializer }, align 32
@sx9500_gpio_probe._entry_ptr.21 = internal global ptr @sx9500_gpio_probe._entry.19, section ".printk_index", align 4
@sx9500_init_compensation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 813, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"initial compensation timed out\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sx9500_init_compensation\00", [39 x i8] zeroinitializer }, align 32
@sx9500_init_compensation._entry_ptr = internal global ptr @sx9500_init_compensation._entry, section ".printk_index", align 4
@sx9500_irq_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 509, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c transfer error in irq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sx9500_irq_thread_handler\00", [38 x i8] zeroinitializer }, align 32
@sx9500_irq_thread_handler._entry_ptr = internal global ptr @sx9500_irq_thread_handler._entry, section ".printk_index", align 4
@sx9500_push_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.5, i32 474, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sx9500_push_events\00", [45 x i8] zeroinitializer }, align 32
@sx9500_push_events._entry_ptr = internal global ptr @sx9500_push_events._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 6, i64 8, i64 11, i64 16, i64 33]
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"sx9500_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1058, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1060, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"sx9500_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1046, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"sx9500_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1035, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"sx9500_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1052, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 917, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"sx9500_regmap_config\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 192, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 921, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"sx9500_channels\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 126, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"sx9500_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 611, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 939, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 944, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 949, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"sx9500_trigger_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 644, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"sx9500_buffer_setup_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 726, i32 42 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 87, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"sx9500_writeable_regs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 160, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"sx9500_readable_regs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 176, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"sx9500_volatile_regs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 187, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"sx9500_writable_reg_ranges\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 152, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [31 x i8] c"sx9500_non_readable_reg_ranges\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 169, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"sx9500_volatile_reg_ranges\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 181, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"sx9500_events\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 100, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"sx9500_attribute_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 607, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"sx9500_attributes\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 602, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 599, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"sx9500_scan_period_table\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 148, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"sx9500_samp_freq_table\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 137, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 887, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 890, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 892, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 897, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 899, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 813, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 509, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [34 x i8] c"../drivers/iio/proximity/sx9500.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 474, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_sx9500_driver_exit, ptr @__initcall__kmod_sx9500__289_1069_sx9500_driver_init6, ptr @sx9500_driver_exit, ptr @sx9500_gpio_probe._entry, ptr @sx9500_gpio_probe._entry.19, ptr @sx9500_gpio_probe._entry_ptr, ptr @sx9500_gpio_probe._entry_ptr.21, ptr @sx9500_init_compensation._entry, ptr @sx9500_init_compensation._entry_ptr, ptr @sx9500_irq_thread_handler._entry, ptr @sx9500_irq_thread_handler._entry_ptr, ptr @sx9500_probe._entry, ptr @sx9500_probe._entry_ptr, ptr @sx9500_push_events._entry, ptr @sx9500_push_events._entry_ptr, ptr @sx9500_driver, ptr @.str, ptr @sx9500_of_match, ptr @sx9500_pm_ops, ptr @sx9500_id, ptr @sx9500_probe.__key, ptr @.str.1, ptr @sx9500_probe._key, ptr @sx9500_regmap_config, ptr @.str.2, ptr @sx9500_channels, ptr @sx9500_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sx9500_trigger_ops, ptr @sx9500_buffer_setup_ops, ptr @init_completion.__key, ptr @.str.10, ptr @sx9500_writeable_regs, ptr @sx9500_readable_regs, ptr @sx9500_volatile_regs, ptr @sx9500_writable_reg_ranges, ptr @sx9500_non_readable_reg_ranges, ptr @sx9500_volatile_reg_ranges, ptr @sx9500_events, ptr @sx9500_attribute_group, ptr @sx9500_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.11, ptr @.str.12, ptr @sx9500_scan_period_table, ptr @sx9500_samp_freq_table, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_writeable_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_readable_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_writable_reg_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_non_readable_reg_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_volatile_reg_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_scan_period_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_samp_freq_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_gpio_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_init_compensation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_irq_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9500_push_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sx9500_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sx9500_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sx9500_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 208) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client2 = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client2, align 4
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @sx9500_probe.__key) #7
  %completion = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #7
  %trigger_enabled = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %trigger_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %trigger_enabled, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @sx9500_regmap_config, ptr noundef nonnull @sx9500_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sx9500_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sx9500_info, ptr %info, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %driver_data.i.i, align 4
  tail call fastcc void @sx9500_gpio_probe(ptr noundef %client, ptr noundef %1)
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i, align 4, !annotation !129
  %gpiod_rst.i = getelementptr inbounds %struct.sx9500_data, ptr %14, i32 0, i32 4
  %16 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpiod_rst.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end9.if.end.i_crit_edge, label %if.then.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %17, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %18 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpiod_rst.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.sx9500_data, ptr %14, i32 0, i32 3
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i102 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i102, label %if.end.i.sx9500_init_device.exit.thread_crit_edge, label %if.end5.i

if.end.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 127, i32 noundef 222) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.sx9500_init_device.exit.thread_crit_edge, label %if.end10.i

if.end5.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

if.end10.i:                                       ; preds = %if.end5.i
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.sx9500_init_device.exit.thread_crit_edge, label %for.body.preheader.i

if.end10.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.body.preheader.i:                             ; preds = %if.end10.i
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call20.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 7, i32 noundef 67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %for.body.preheader.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.i

for.body.preheader.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.i:                                       ; preds = %for.body.preheader.i
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call20.1.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 8, i32 noundef 119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1.i)
  %cmp21.1.i = icmp slt i32 %call20.1.i, 0
  br i1 %cmp21.1.i, label %for.cond.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.1.i

for.cond.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call20.2.i = call i32 @regmap_write(ptr noundef %31, i32 noundef 9, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2.i)
  %cmp21.2.i = icmp slt i32 %call20.2.i, 0
  br i1 %cmp21.2.i, label %for.cond.1.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.2.i

for.cond.1.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call20.3.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 10, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.3.i)
  %cmp21.3.i = icmp slt i32 %call20.3.i, 0
  br i1 %cmp21.3.i, label %for.cond.2.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.3.i

for.cond.2.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call20.4.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 11, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.4.i)
  %cmp21.4.i = icmp slt i32 %call20.4.i, 0
  br i1 %cmp21.4.i, label %for.cond.3.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.4.i

for.cond.3.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call20.5.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 12, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.5.i)
  %cmp21.5.i = icmp slt i32 %call20.5.i, 0
  br i1 %cmp21.5.i, label %for.cond.4.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.5.i

for.cond.4.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call20.6.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 13, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.6.i)
  %cmp21.6.i = icmp slt i32 %call20.6.i, 0
  br i1 %cmp21.6.i, label %for.cond.5.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.6.i

for.cond.5.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call20.7.i = call i32 @regmap_write(ptr noundef %41, i32 noundef 14, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.7.i)
  %cmp21.7.i = icmp slt i32 %call20.7.i, 0
  br i1 %cmp21.7.i, label %for.cond.6.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.7.i

for.cond.6.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call20.8.i = call i32 @regmap_write(ptr noundef %43, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.8.i)
  %cmp21.8.i = icmp slt i32 %call20.8.i, 0
  br i1 %cmp21.8.i, label %for.cond.7.i.sx9500_init_device.exit.thread_crit_edge, label %for.cond.8.i

for.cond.7.i.sx9500_init_device.exit.thread_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %46 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i.i, align 4, !annotation !129
  %regmap.i.i = getelementptr inbounds %struct.sx9500_data, ptr %45, i32 0, i32 3
  %47 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 6, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %sx9500_init_device.exit.thread106, label %for.cond.8.i.for.body.i.i_crit_edge

for.cond.8.i.for.body.i.i_crit_edge:              ; preds = %for.cond.8.i
  br label %for.body.i.i

sx9500_init_device.exit.thread106:                ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.end7.i.i
  %dec.i.i = add nsw i32 %i.029.i.i, -1
  %cmp2.not.i.i = icmp eq i32 %i.029.i.i, 0
  br i1 %cmp2.not.i.i, label %do.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.8.i.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %dec.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 10, %for.cond.8.i.for.body.i.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %49 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i.i, align 4
  %call4.i.i = call i32 @regmap_read(ptr noundef %50, i32 noundef 1, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %for.body.i.i.sx9500_init_device.exit.thread110_crit_edge, label %if.end7.i.i

for.body.i.i.sx9500_init_device.exit.thread110_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_init_device.exit.thread110

if.end7.i.i:                                      ; preds = %for.body.i.i
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %52, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end13, label %for.cond.i.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %client.i.i = getelementptr inbounds %struct.sx9500_data, ptr %45, i32 0, i32 1
  %53 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24) #10
  br label %sx9500_init_device.exit.thread110

sx9500_init_device.exit.thread:                   ; preds = %for.cond.7.i.sx9500_init_device.exit.thread_crit_edge, %for.cond.6.i.sx9500_init_device.exit.thread_crit_edge, %for.cond.5.i.sx9500_init_device.exit.thread_crit_edge, %for.cond.4.i.sx9500_init_device.exit.thread_crit_edge, %for.cond.3.i.sx9500_init_device.exit.thread_crit_edge, %for.cond.2.i.sx9500_init_device.exit.thread_crit_edge, %for.cond.1.i.sx9500_init_device.exit.thread_crit_edge, %for.cond.i.sx9500_init_device.exit.thread_crit_edge, %for.body.preheader.i.sx9500_init_device.exit.thread_crit_edge, %if.end10.i.sx9500_init_device.exit.thread_crit_edge, %if.end5.i.sx9500_init_device.exit.thread_crit_edge, %if.end.i.sx9500_init_device.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call20.8.i, %for.cond.7.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.7.i, %for.cond.6.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.6.i, %for.cond.5.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.5.i, %for.cond.4.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.4.i, %for.cond.3.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.3.i, %for.cond.2.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.2.i, %for.cond.1.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.1.i, %for.cond.i.sx9500_init_device.exit.thread_crit_edge ], [ %call20.i, %for.body.preheader.i.sx9500_init_device.exit.thread_crit_edge ], [ %call12.i, %if.end10.i.sx9500_init_device.exit.thread_crit_edge ], [ %call7.i, %if.end5.i.sx9500_init_device.exit.thread_crit_edge ], [ %call3.i, %if.end.i.sx9500_init_device.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

sx9500_init_device.exit.thread110:                ; preds = %do.end.i.i, %for.body.i.i.sx9500_init_device.exit.thread110_crit_edge
  %ret.2.i.i.ph = phi i32 [ -110, %do.end.i.i ], [ %call4.i.i, %for.body.i.i.sx9500_init_device.exit.thread110_crit_edge ]
  %55 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i.i, align 4
  %call.i26.i.i112 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 6, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i.i
  %57 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i.i, align 4
  %call.i26.i.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 6, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp14 = icmp slt i32 %60, 1
  br i1 %cmp14, label %do.end18, label %if.else

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %if.end40

if.else:                                          ; preds = %if.end13
  %call22 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %60, ptr noundef nonnull @sx9500_irq_handler, ptr noundef nonnull @sx9500_irq_thread_handler, i32 noundef 8194, ptr noundef nonnull @.str.8, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.end25

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %61 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name, align 8
  %call28 = call i32 @iio_device_id(ptr noundef nonnull %call) #7
  %call29 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %62, i32 noundef %call28) #7
  %trig = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call29, ptr %trig, align 4
  %tobool.not = icmp eq ptr %call29, null
  br i1 %tobool.not, label %if.end25.cleanup_crit_edge, label %if.end32

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %64 = ptrtoint ptr %call29 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @sx9500_trigger_ops, ptr %call29, align 8
  %65 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %trig, align 4
  %driver_data.i.i103 = getelementptr inbounds %struct.iio_trigger, ptr %66, i32 0, i32 4, i32 8
  %67 = ptrtoint ptr %driver_data.i.i103 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call, ptr %driver_data.i.i103, align 4
  %68 = load ptr, ptr %trig, align 4
  %call36 = call i32 @__iio_trigger_register(ptr noundef %68, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end32.if.end40_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %if.end32.if.end40_crit_edge, %do.end18
  %call41 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @sx9500_trigger_handler, i32 noundef 0, ptr noundef nonnull @sx9500_buffer_setup_ops, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.out_trigger_unregister_crit_edge, label %if.end44

if.end40.out_trigger_unregister_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_trigger_unregister

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %out_buffer_cleanup, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_buffer_cleanup:                               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #7
  br label %out_trigger_unregister

out_trigger_unregister:                           ; preds = %out_buffer_cleanup, %if.end40.out_trigger_unregister_crit_edge
  %ret.0 = phi i32 [ %call41, %if.end40.out_trigger_unregister_crit_edge ], [ %call45, %out_buffer_cleanup ]
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp50 = icmp sgt i32 %70, 0
  br i1 %cmp50, label %if.then51, label %out_trigger_unregister.cleanup_crit_edge

out_trigger_unregister.cleanup_crit_edge:         ; preds = %out_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %out_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #9
  %trig52 = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %trig52 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trig52, align 4
  call void @iio_trigger_unregister(ptr noundef %72) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %out_trigger_unregister.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sx9500_init_device.exit.thread110, %sx9500_init_device.exit.thread, %sx9500_init_device.exit.thread106, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ %call22, %if.else.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ %call36, %if.end32.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ %ret.0, %if.then51 ], [ %ret.0, %out_trigger_unregister.cleanup_crit_edge ], [ %retval.0.i.ph, %sx9500_init_device.exit.thread ], [ %call.i.i.i, %sx9500_init_device.exit.thread106 ], [ %ret.2.i.i.ph, %sx9500_init_device.exit.thread110 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %trig = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_unregister(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buffer = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sx9500_gpio_probe(ptr noundef %client, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx9500_gpio_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx9500_gpio_probe, %if.then8)) #7
          to label %if.end10 [label %if.then8], !srcloc !130

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx9500_gpio_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then11, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11:                                        ; preds = %if.end10
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 1) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.else

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  br label %if.end21

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @gpiod_to_irq(ptr noundef %call12) #7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call18, ptr %irq, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %do.end17, %if.end10.if.end21_crit_edge
  %call22 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef 7) #7
  %gpiod_rst = getelementptr inbounds %struct.sx9500_data, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %gpiod_rst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call22, ptr %gpiod_rst, align 4
  %cmp.i44 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %do.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  %4 = ptrtoint ptr %gpiod_rst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gpiod_rst, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trigger_enabled = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %trigger_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %trigger_enabled, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %trig = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_irq_thread_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !129
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !129
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.sx9500_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 1, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.sx9500_data, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26) #10
  br label %sx9500_push_events.exit

if.end.i:                                         ; preds = %if.then2
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %17, 4
  store i32 %shr.i, ptr %val.i, align 4
  %18 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %.lobit.i = lshr exact i32 %18, 4
  %19 = trunc i32 %.lobit.i to i8
  %arrayidx.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not.i = icmp eq i8 %21, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup.i_crit_edge, label %if.end5.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx7.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 5, i32 0
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.i, align 1, !range !131
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %19)
  %cmp10.i = icmp eq i8 %23, %19
  br i1 %cmp10.i, label %if.end5.i.cleanup.i_crit_edge, label %if.end13.i

if.end5.i.cleanup.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end13.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %24 = zext i32 %cond.i to i64
  %shl17.i = shl nuw nsw i64 %24, 48
  %or24.i = or i64 %shl17.i, 34359738368
  %call25.i = call i64 @iio_get_time_ns(ptr noundef %private) #7
  %call26.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or24.i, i64 noundef %call25.i) #7
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %19, ptr %arrayidx7.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %if.end5.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %and.1.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.1.not.i = icmp eq i32 %and.1.i, 0
  %and.1.lobit.i = lshr exact i32 %and.1.i, 1
  %28 = trunc i32 %and.1.lobit.i to i8
  %arrayidx.1.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.1.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool3.not.1.i = icmp eq i8 %30, 0
  br i1 %tobool3.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end5.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

if.end5.1.i:                                      ; preds = %cleanup.i
  %arrayidx7.1.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7.1.i, align 1, !range !131
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %28)
  %cmp10.1.i = icmp eq i8 %32, %28
  br i1 %cmp10.1.i, label %if.end5.1.i.cleanup.1.i_crit_edge, label %if.end13.1.i

if.end5.1.i.cleanup.1.i_crit_edge:                ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

if.end13.1.i:                                     ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.1.i = select i1 %tobool.1.not.i, i32 1, i32 2
  %33 = zext i32 %cond.1.i to i64
  %shl17.1.i = shl nuw nsw i64 %33, 48
  %or24.1.i = or i64 %shl17.1.i, 34359738369
  %call25.1.i = call i64 @iio_get_time_ns(ptr noundef %private) #7
  %call26.1.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or24.1.i, i64 noundef %call25.1.i) #7
  %34 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %28, ptr %arrayidx7.1.i, align 1
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end13.1.i, %if.end5.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  %and.2.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.2.not.i = icmp eq i32 %and.2.i, 0
  %and.2.lobit.i = lshr exact i32 %and.2.i, 2
  %37 = trunc i32 %and.2.lobit.i to i8
  %arrayidx.2.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.2.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool3.not.2.i = icmp eq i8 %39, 0
  br i1 %tobool3.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %if.end5.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2.i

if.end5.2.i:                                      ; preds = %cleanup.1.i
  %arrayidx7.2.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx7.2.i, align 1, !range !131
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %37)
  %cmp10.2.i = icmp eq i8 %41, %37
  br i1 %cmp10.2.i, label %if.end5.2.i.cleanup.2.i_crit_edge, label %if.end13.2.i

if.end5.2.i.cleanup.2.i_crit_edge:                ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2.i

if.end13.2.i:                                     ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.2.i = select i1 %tobool.2.not.i, i32 1, i32 2
  %42 = zext i32 %cond.2.i to i64
  %shl17.2.i = shl nuw nsw i64 %42, 48
  %or24.2.i = or i64 %shl17.2.i, 34359738370
  %call25.2.i = call i64 @iio_get_time_ns(ptr noundef %private) #7
  %call26.2.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or24.2.i, i64 noundef %call25.2.i) #7
  %43 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %37, ptr %arrayidx7.2.i, align 1
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end13.2.i, %if.end5.2.i.cleanup.2.i_crit_edge, %cleanup.1.i.cleanup.2.i_crit_edge
  %44 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i, align 4
  %and.3.i = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.3.not.i = icmp eq i32 %and.3.i, 0
  %and.3.lobit.i = lshr exact i32 %and.3.i, 3
  %46 = trunc i32 %and.3.lobit.i to i8
  %arrayidx.3.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.3.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool3.not.3.i = icmp eq i8 %48, 0
  br i1 %tobool3.not.3.i, label %cleanup.2.i.sx9500_push_events.exit_crit_edge, label %if.end5.3.i

cleanup.2.i.sx9500_push_events.exit_crit_edge:    ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_push_events.exit

if.end5.3.i:                                      ; preds = %cleanup.2.i
  %arrayidx7.3.i = getelementptr %struct.sx9500_data, ptr %11, i32 0, i32 5, i32 3
  %49 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx7.3.i, align 1, !range !131
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %46)
  %cmp10.3.i = icmp eq i8 %50, %46
  br i1 %cmp10.3.i, label %if.end5.3.i.sx9500_push_events.exit_crit_edge, label %if.end13.3.i

if.end5.3.i.sx9500_push_events.exit_crit_edge:    ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_push_events.exit

if.end13.3.i:                                     ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.3.i = select i1 %tobool.3.not.i, i32 1, i32 2
  %51 = zext i32 %cond.3.i to i64
  %shl17.3.i = shl nuw nsw i64 %51, 48
  %or24.3.i = or i64 %shl17.3.i, 34359738371
  %call25.3.i = call i64 @iio_get_time_ns(ptr noundef %private) #7
  %call26.3.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or24.3.i, i64 noundef %call25.3.i) #7
  %52 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %46, ptr %arrayidx7.3.i, align 1
  br label %sx9500_push_events.exit

sx9500_push_events.exit:                          ; preds = %if.end13.3.i, %if.end5.3.i.sx9500_push_events.exit_crit_edge, %cleanup.2.i.sx9500_push_events.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end3

if.end3:                                          ; preds = %sx9500_push_events.exit, %if.end.if.end3_crit_edge
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val, align 4
  %and4 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.then6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %completion = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 10
  call void @complete(ptr noundef %completion) #7
  br label %out

out:                                              ; preds = %if.then6, %if.end3.out_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %regval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %7, i32 noundef 0) #7
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %9)
  %cmp34 = icmp ult i32 %call2, %9
  br i1 %cmp34, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %regmap.i = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 3
  %buffer = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %bit.035 = phi i32 [ %call2, %for.body.lr.ph ], [ %call9, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i) #7
  %12 = ptrtoint ptr %regval.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %regval.i, align 2, !annotation !129
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %11, i32 %bit.035, i32 1
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 32, i32 noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.sx9500_read_prox_data.exit.thread_crit_edge, label %if.end.i

for.body.sx9500_read_prox_data.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_prox_data.exit.thread

if.end.i:                                         ; preds = %for.body
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 33, ptr noundef nonnull %regval.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.sx9500_read_prox_data.exit.thread_crit_edge, label %if.end

if.end.i.sx9500_read_prox_data.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_prox_data.exit.thread

sx9500_read_prox_data.exit.thread:                ; preds = %if.end.i.sx9500_read_prox_data.exit.thread_crit_edge, %for.body.sx9500_read_prox_data.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i) #7
  br label %out

if.end:                                           ; preds = %if.end.i
  %19 = ptrtoint ptr %regval.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %regval.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i) #7
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %inc = add i32 %i.036, 1
  %arrayidx6 = getelementptr i16, ptr %22, i32 %i.036
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %arrayidx6, align 2
  %24 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active_scan_mask, align 4
  %26 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.035, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef %25, i32 noundef %27, i32 noundef %add) #7
  %28 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call9, %29
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer10 = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %buffer10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer10, align 4
  %call11 = call i64 @iio_get_time_ns(ptr noundef %1) #7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scan_timestamp.i, align 8, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %35, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %31, i32 %sub.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call11, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i29 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %31) #7
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %sx9500_read_prox_data.exit.thread
  call void @mutex_unlock(ptr noundef %3) #7
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %38) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  %regval.i.i = alloca i16, align 2
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cond = icmp eq i32 %3, 8
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb1
    i32 12, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel.i, align 4
  %arrayidx.i.i = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %inc.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i.i, label %sx9500_inc_chan_users.exit.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sx9500_inc_chan_users.exit.i:                     ; preds = %if.end
  %shl.i.i = shl nuw i32 1, %6
  %regmap.i.i.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef %shl.i.i, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i, label %sx9500_inc_chan_users.exit.i.sx9500_read_proximity.exit_crit_edge, label %sx9500_inc_chan_users.exit.i.if.end.i_crit_edge

sx9500_inc_chan_users.exit.i.if.end.i_crit_edge:  ; preds = %sx9500_inc_chan_users.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sx9500_inc_chan_users.exit.i.sx9500_read_proximity.exit_crit_edge: ; preds = %sx9500_inc_chan_users.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_proximity.exit

if.end.i:                                         ; preds = %sx9500_inc_chan_users.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %data_rdy_users.i.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %data_rdy_users.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_rdy_users.i.i, align 4
  %inc.i.i56.i = add i32 %12, 1
  store i32 %inc.i.i56.i, ptr %data_rdy_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i.i57.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i.i57.i, label %sx9500_inc_data_rdy_users.exit.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

sx9500_inc_data_rdy_users.exit.i:                 ; preds = %if.end.i
  %regmap.i.i58.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %regmap.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i58.i, align 4
  %call.i.i.i59.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 3, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i59.i)
  %cmp2.i = icmp slt i32 %call.i.i.i59.i, 0
  br i1 %cmp2.i, label %sx9500_inc_data_rdy_users.exit.i.out_dec_chan.i_crit_edge, label %sx9500_inc_data_rdy_users.exit.i.if.end4.i_crit_edge

sx9500_inc_data_rdy_users.exit.i.if.end4.i_crit_edge: ; preds = %sx9500_inc_data_rdy_users.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

sx9500_inc_data_rdy_users.exit.i.out_dec_chan.i_crit_edge: ; preds = %sx9500_inc_data_rdy_users.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dec_chan.i

if.end4.i:                                        ; preds = %sx9500_inc_data_rdy_users.exit.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #7
  %client.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.i = icmp sgt i32 %18, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %completion.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 10
  %call8.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %completion.i) #7
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i.i, align 4, !annotation !129
  %regmap.i.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 6, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.else.i.sx9500_wait_for_sample.exit.i_crit_edge, label %if.end.i.i

if.else.i.sx9500_wait_for_sample.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_wait_for_sample.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i.i, align 4
  %and.i.i = lshr i32 %23, 4
  %shr.i.i = and i32 %and.i.i, 7
  store i32 %shr.i.i, ptr %val.i.i, align 4
  %arrayidx.i62.i = getelementptr [8 x i32], ptr @sx9500_scan_period_table, i32 0, i32 %shr.i.i
  %24 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i62.i, align 4
  call void @msleep(i32 noundef %25) #7
  br label %sx9500_wait_for_sample.exit.i

sx9500_wait_for_sample.exit.i:                    ; preds = %if.end.i.i, %if.else.i.sx9500_wait_for_sample.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %call.i.i, %if.else.i.sx9500_wait_for_sample.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %sx9500_wait_for_sample.exit.i, %if.then7.i
  %ret.0.i = phi i32 [ %call8.i, %if.then7.i ], [ %retval.0.i.i, %sx9500_wait_for_sample.exit.i ]
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp12.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp12.i, label %if.end10.i.out_dec_data_rdy.i_crit_edge, label %if.end14.i

if.end10.i.out_dec_data_rdy.i_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dec_data_rdy.i

if.end14.i:                                       ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i) #7
  %26 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %regval.i.i, align 2, !annotation !129
  %regmap.i63.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %regmap.i63.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i63.i, align 4
  %29 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel.i, align 4
  %call.i64.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 32, i32 noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %cmp.i65.i = icmp slt i32 %call.i64.i, 0
  br i1 %cmp.i65.i, label %if.end14.i.sx9500_read_prox_data.exit.thread.i_crit_edge, label %if.end.i66.i

if.end14.i.sx9500_read_prox_data.exit.thread.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_prox_data.exit.thread.i

if.end.i66.i:                                     ; preds = %if.end14.i
  %31 = ptrtoint ptr %regmap.i63.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i63.i, align 4
  %call2.i.i = call i32 @regmap_bulk_read(ptr noundef %32, i32 noundef 33, ptr noundef nonnull %regval.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i66.i.sx9500_read_prox_data.exit.thread.i_crit_edge, label %if.end18.i

if.end.i66.i.sx9500_read_prox_data.exit.thread.i_crit_edge: ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_prox_data.exit.thread.i

sx9500_read_prox_data.exit.thread.i:              ; preds = %if.end.i66.i.sx9500_read_prox_data.exit.thread.i_crit_edge, %if.end14.i.sx9500_read_prox_data.exit.thread.i_crit_edge
  %retval.0.i67.ph.i = phi i32 [ %call2.i.i, %if.end.i66.i.sx9500_read_prox_data.exit.thread.i_crit_edge ], [ %call.i64.i, %if.end14.i.sx9500_read_prox_data.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #7
  br label %out_dec_data_rdy.i

if.end18.i:                                       ; preds = %if.end.i66.i
  %33 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %regval.i.i, align 2
  %conv.i.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #7
  %36 = ptrtoint ptr %data_rdy_users.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_rdy_users.i.i, align 4
  %dec.i.i.i = add i32 %37, -1
  store i32 %dec.i.i.i, ptr %data_rdy_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.not.i.i69.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.not.i.i69.i, label %sx9500_dec_data_rdy_users.exit.i, label %if.end18.i.if.end22.i_crit_edge

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

sx9500_dec_data_rdy_users.exit.i:                 ; preds = %if.end18.i
  %38 = ptrtoint ptr %regmap.i63.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i63.i, align 4
  %call.i.i.i71.i = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 3, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i71.i)
  %cmp20.i = icmp slt i32 %call.i.i.i71.i, 0
  br i1 %cmp20.i, label %sx9500_dec_data_rdy_users.exit.i.out_dec_chan.i_crit_edge, label %sx9500_dec_data_rdy_users.exit.i.if.end22.i_crit_edge

sx9500_dec_data_rdy_users.exit.i.if.end22.i_crit_edge: ; preds = %sx9500_dec_data_rdy_users.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

sx9500_dec_data_rdy_users.exit.i.out_dec_chan.i_crit_edge: ; preds = %sx9500_dec_data_rdy_users.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dec_chan.i

if.end22.i:                                       ; preds = %sx9500_dec_data_rdy_users.exit.i.if.end22.i_crit_edge, %if.end18.i.if.end22.i_crit_edge
  %40 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel.i, align 4
  %arrayidx.i74.i = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %41
  %42 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i74.i, align 4
  %dec.i.i75.i = add i32 %43, -1
  store i32 %dec.i.i75.i, ptr %arrayidx.i74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i75.i)
  %cmp.not.i.i76.i = icmp eq i32 %dec.i.i75.i, 0
  br i1 %cmp.not.i.i76.i, label %sx9500_dec_chan_users.exit.i, label %if.end22.i.sx9500_read_proximity.exit_crit_edge

if.end22.i.sx9500_read_proximity.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_proximity.exit

sx9500_dec_chan_users.exit.i:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i77.i = shl nuw i32 1, %41
  %44 = ptrtoint ptr %regmap.i63.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i63.i, align 4
  %call.i.i.i79.i = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 6, i32 noundef %shl.i77.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i79.i)
  %cmp25.i = icmp slt i32 %call.i.i.i79.i, 0
  %spec.select.i = select i1 %cmp25.i, i32 %call.i.i.i79.i, i32 1
  br label %sx9500_read_proximity.exit

out_dec_data_rdy.i:                               ; preds = %sx9500_read_prox_data.exit.thread.i, %if.end10.i.out_dec_data_rdy.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end10.i.out_dec_data_rdy.i_crit_edge ], [ %retval.0.i67.ph.i, %sx9500_read_prox_data.exit.thread.i ]
  %46 = ptrtoint ptr %data_rdy_users.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_rdy_users.i.i, align 4
  %dec.i.i83.i = add i32 %47, -1
  store i32 %dec.i.i83.i, ptr %data_rdy_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i83.i)
  %cmp.not.i.i84.i = icmp eq i32 %dec.i.i83.i, 0
  br i1 %cmp.not.i.i84.i, label %if.end.i.i87.i, label %out_dec_data_rdy.i.out_dec_chan.i_crit_edge

out_dec_data_rdy.i.out_dec_chan.i_crit_edge:      ; preds = %out_dec_data_rdy.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dec_chan.i

if.end.i.i87.i:                                   ; preds = %out_dec_data_rdy.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i.i85.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %regmap.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i.i85.i, align 4
  %call.i.i.i86.i = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 3, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out_dec_chan.i

out_dec_chan.i:                                   ; preds = %if.end.i.i87.i, %out_dec_data_rdy.i.out_dec_chan.i_crit_edge, %sx9500_dec_data_rdy_users.exit.i.out_dec_chan.i_crit_edge, %sx9500_inc_data_rdy_users.exit.i.out_dec_chan.i_crit_edge
  %ret.2.i = phi i32 [ %call.i.i.i59.i, %sx9500_inc_data_rdy_users.exit.i.out_dec_chan.i_crit_edge ], [ %call.i.i.i71.i, %sx9500_dec_data_rdy_users.exit.i.out_dec_chan.i_crit_edge ], [ %ret.1.i, %out_dec_data_rdy.i.out_dec_chan.i_crit_edge ], [ %ret.1.i, %if.end.i.i87.i ]
  %50 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel.i, align 4
  %arrayidx.i90.i = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %51
  %52 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i90.i, align 4
  %dec.i.i91.i = add i32 %53, -1
  store i32 %dec.i.i91.i, ptr %arrayidx.i90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i91.i)
  %cmp.not.i.i92.i = icmp eq i32 %dec.i.i91.i, 0
  br i1 %cmp.not.i.i92.i, label %if.end.i.i96.i, label %out_dec_chan.i.sx9500_read_proximity.exit_crit_edge

out_dec_chan.i.sx9500_read_proximity.exit_crit_edge: ; preds = %out_dec_chan.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_proximity.exit

if.end.i.i96.i:                                   ; preds = %out_dec_chan.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i93.i = shl nuw i32 1, %51
  %regmap.i.i94.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %regmap.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i.i94.i, align 4
  %call.i.i.i95.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 6, i32 noundef %shl.i93.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sx9500_read_proximity.exit

sx9500_read_proximity.exit:                       ; preds = %if.end.i.i96.i, %out_dec_chan.i.sx9500_read_proximity.exit_crit_edge, %sx9500_dec_chan_users.exit.i, %if.end22.i.sx9500_read_proximity.exit_crit_edge, %sx9500_inc_chan_users.exit.i.sx9500_read_proximity.exit_crit_edge
  %ret.3.i = phi i32 [ %call.i.i.i.i, %sx9500_inc_chan_users.exit.i.sx9500_read_proximity.exit_crit_edge ], [ %ret.2.i, %out_dec_chan.i.sx9500_read_proximity.exit_crit_edge ], [ %ret.2.i, %if.end.i.i96.i ], [ 1, %if.end22.i.sx9500_read_proximity.exit_crit_edge ], [ %spec.select.i, %sx9500_dec_chan_users.exit.i ]
  call void @mutex_unlock(ptr noundef %1) #7
  %completion32.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %completion32.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %completion32.i, align 4
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %57 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %regval.i, align 4, !annotation !129
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %regmap.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %59, i32 noundef 6, ptr noundef nonnull %regval.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i15 = icmp slt i32 %call.i, 0
  br i1 %cmp.i15, label %sw.bb4.sx9500_read_samp_freq.exit_crit_edge, label %if.end.i16

sw.bb4.sx9500_read_samp_freq.exit_crit_edge:      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sx9500_read_samp_freq.exit

if.end.i16:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %regval.i, align 4
  %and.i = lshr i32 %61, 4
  %shr.i = and i32 %and.i, 7
  %arrayidx.i = getelementptr [8 x %struct.anon.87], ptr @sx9500_samp_freq_table, i32 0, i32 %shr.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %val, align 4
  %val25.i = getelementptr [8 x %struct.anon.87], ptr @sx9500_samp_freq_table, i32 0, i32 %shr.i, i32 1
  %65 = ptrtoint ptr %val25.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val25.i, align 4
  %67 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val2, align 4
  br label %sx9500_read_samp_freq.exit

sx9500_read_samp_freq.exit:                       ; preds = %if.end.i16, %sw.bb4.sx9500_read_samp_freq.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.end.i16 ], [ %call.i, %sw.bb4.sx9500_read_samp_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sx9500_read_samp_freq.exit, %sx9500_read_proximity.exit, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sx9500_read_samp_freq.exit ], [ %ret.3.i, %sx9500_read_proximity.exit ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cond = icmp eq i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond4 = icmp eq i32 %mask, 12
  %or.cond = and i1 %cond4, %cond
  br i1 %or.cond, label %sw.bb1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %4 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %val, label %sw.bb1.cleanup_crit_edge [
    i32 33, label %land.lhs.true.i
    i32 16, label %land.lhs.true.1.i
    i32 11, label %land.lhs.true.2.i
    i32 8, label %land.lhs.true.3.i
    i32 6, label %land.lhs.true.4.i
    i32 5, label %land.lhs.true.5.i
    i32 3, label %land.lhs.true.6.i
    i32 2, label %land.lhs.true.7.i
  ]

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 333333, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 333333
  br i1 %cmp5.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.1.i:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 666666, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 666666
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.if.end8.i_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.1.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.2.i:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 111111, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 111111
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.if.end8.i_crit_edge, label %land.lhs.true.2.i.cleanup_crit_edge

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.3.i:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 333333, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 333333
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.end8.i_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.3.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.4.i:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 666666, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 666666
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.if.end8.i_crit_edge, label %land.lhs.true.4.i.cleanup_crit_edge

land.lhs.true.4.i.cleanup_crit_edge:              ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.4.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.5.i:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.if.end8.i_crit_edge, label %land.lhs.true.5.i.cleanup_crit_edge

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.5.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.6.i:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 333333, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 333333
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.if.end8.i_crit_edge, label %land.lhs.true.6.i.cleanup_crit_edge

land.lhs.true.6.i.cleanup_crit_edge:              ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.6.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.7.i:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.if.end8.i_crit_edge, label %land.lhs.true.7.i.cleanup_crit_edge

land.lhs.true.7.i.cleanup_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.7.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.7.i.if.end8.i_crit_edge, %land.lhs.true.6.i.if.end8.i_crit_edge, %land.lhs.true.5.i.if.end8.i_crit_edge, %land.lhs.true.4.i.if.end8.i_crit_edge, %land.lhs.true.3.i.if.end8.i_crit_edge, %land.lhs.true.2.i.if.end8.i_crit_edge, %land.lhs.true.1.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge
  %i.021.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.end8.i_crit_edge ], [ 16, %land.lhs.true.1.i.if.end8.i_crit_edge ], [ 32, %land.lhs.true.2.i.if.end8.i_crit_edge ], [ 48, %land.lhs.true.3.i.if.end8.i_crit_edge ], [ 64, %land.lhs.true.4.i.if.end8.i_crit_edge ], [ 80, %land.lhs.true.5.i.if.end8.i_crit_edge ], [ 96, %land.lhs.true.6.i.if.end8.i_crit_edge ], [ 112, %land.lhs.true.7.i.if.end8.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %regmap.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 6, i32 noundef 112, i32 noundef %i.021.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %land.lhs.true.7.i.cleanup_crit_edge, %land.lhs.true.6.i.cleanup_crit_edge, %land.lhs.true.5.i.cleanup_crit_edge, %land.lhs.true.4.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end8.i ], [ -22, %land.lhs.true.7.i.cleanup_crit_edge ], [ -22, %land.lhs.true.6.i.cleanup_crit_edge ], [ -22, %land.lhs.true.5.i.cleanup_crit_edge ], [ -22, %land.lhs.true.4.i.cleanup_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sx9500_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  %2 = or i32 %dir, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %4 = and i1 %3, %cmp.not
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.sx9500_data, ptr %6, i32 0, i32 6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1, !range !131
  %11 = zext i8 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.not = icmp eq i32 %3, 8
  %4 = or i32 %dir, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %6 = and i1 %5, %cmp.not
  br i1 %6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp5 = icmp eq i32 %state, 1
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %arrayidx.i = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %inc.i.i = add i32 %10, 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i.i, label %sx9500_inc_chan_users.exit, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

sx9500_inc_chan_users.exit:                       ; preds = %if.then6
  %shl.i = shl nuw i32 1, %8
  %regmap.i.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 6, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp8, label %sx9500_inc_chan_users.exit.out_unlock_crit_edge, label %sx9500_inc_chan_users.exit.if.end10_crit_edge

sx9500_inc_chan_users.exit.if.end10_crit_edge:    ; preds = %sx9500_inc_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

sx9500_inc_chan_users.exit.out_unlock_crit_edge:  ; preds = %sx9500_inc_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end10:                                         ; preds = %sx9500_inc_chan_users.exit.if.end10_crit_edge, %if.then6.if.end10_crit_edge
  %close_far_users.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %close_far_users.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %close_far_users.i, align 4
  %inc.i.i56 = add i32 %15, 1
  store i32 %inc.i.i56, ptr %close_far_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i.i57 = icmp eq i32 %15, 0
  br i1 %cmp.not.i.i57, label %sx9500_inc_close_far_users.exit, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

sx9500_inc_close_far_users.exit:                  ; preds = %if.end10
  %regmap.i.i58 = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regmap.i.i58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i58, align 4
  %call.i.i.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 3, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i59)
  %cmp12 = icmp slt i32 %call.i.i.i59, 0
  br i1 %cmp12, label %if.then27, label %sx9500_inc_close_far_users.exit.if.end24_crit_edge

sx9500_inc_close_far_users.exit.if.end24_crit_edge: ; preds = %sx9500_inc_close_far_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else:                                          ; preds = %if.end
  %dec.i.i = add i32 %10, -1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dec.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.not.i.i63 = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i63, label %sx9500_dec_chan_users.exit, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sx9500_dec_chan_users.exit:                       ; preds = %if.else
  %shl.i64 = shl nuw i32 1, %8
  %regmap.i.i65 = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %regmap.i.i65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i65, align 4
  %call.i.i.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 6, i32 noundef %shl.i64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i66)
  %cmp17 = icmp slt i32 %call.i.i.i66, 0
  br i1 %cmp17, label %sx9500_dec_chan_users.exit.out_unlock_crit_edge, label %sx9500_dec_chan_users.exit.if.end19_crit_edge

sx9500_dec_chan_users.exit.if.end19_crit_edge:    ; preds = %sx9500_dec_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sx9500_dec_chan_users.exit.out_unlock_crit_edge:  ; preds = %sx9500_dec_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end19:                                         ; preds = %sx9500_dec_chan_users.exit.if.end19_crit_edge, %if.else.if.end19_crit_edge
  %close_far_users.i69 = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %close_far_users.i69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %close_far_users.i69, align 4
  %dec.i.i70 = add i32 %22, -1
  store i32 %dec.i.i70, ptr %close_far_users.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i70)
  %cmp.not.i.i71 = icmp eq i32 %dec.i.i70, 0
  br i1 %cmp.not.i.i71, label %sx9500_dec_close_far_users.exit, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

sx9500_dec_close_far_users.exit:                  ; preds = %if.end19
  %regmap.i.i72 = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %regmap.i.i72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i72, align 4
  %call.i.i.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i73)
  %cmp21 = icmp slt i32 %call.i.i.i73, 0
  br i1 %cmp21, label %if.else30, label %sx9500_dec_close_far_users.exit.if.end24_crit_edge

sx9500_dec_close_far_users.exit.if.end24_crit_edge: ; preds = %sx9500_dec_close_far_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %sx9500_dec_close_far_users.exit.if.end24_crit_edge, %if.end19.if.end24_crit_edge, %sx9500_inc_close_far_users.exit.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %ret.0 = phi i32 [ %call.i.i.i59, %sx9500_inc_close_far_users.exit.if.end24_crit_edge ], [ %call.i.i.i73, %sx9500_dec_close_far_users.exit.if.end24_crit_edge ], [ 0, %if.end10.if.end24_crit_edge ], [ 0, %if.end19.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %channel25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %25 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel25, align 4
  %arrayidx = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 6, i32 %26
  %frombool = zext i1 %tobool to i8
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %arrayidx, align 1
  br label %out_unlock

if.then27:                                        ; preds = %sx9500_inc_close_far_users.exit
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel, align 4
  %arrayidx.i76 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %29
  %30 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i76, align 4
  %dec.i.i77 = add i32 %31, -1
  store i32 %dec.i.i77, ptr %arrayidx.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i77)
  %cmp.not.i.i78 = icmp eq i32 %dec.i.i77, 0
  br i1 %cmp.not.i.i78, label %if.end.i.i82, label %if.then27.out_unlock_crit_edge

if.then27.out_unlock_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i.i82:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i79 = shl nuw i32 1, %29
  %32 = ptrtoint ptr %regmap.i.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i58, align 4
  %call.i.i.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 6, i32 noundef %shl.i79, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out_unlock

if.else30:                                        ; preds = %sx9500_dec_close_far_users.exit
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel, align 4
  %arrayidx.i85 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %35
  %36 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i85, align 4
  %inc.i.i86 = add i32 %37, 1
  store i32 %inc.i.i86, ptr %arrayidx.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i.i87 = icmp eq i32 %37, 0
  br i1 %cmp.not.i.i87, label %if.end.i.i91, label %if.else30.out_unlock_crit_edge

if.else30.out_unlock_crit_edge:                   ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i.i91:                                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i88 = shl nuw i32 1, %35
  %38 = ptrtoint ptr %regmap.i.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i.i72, align 4
  %call.i.i.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 6, i32 noundef %shl.i88, i32 noundef %shl.i88, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end.i.i91, %if.else30.out_unlock_crit_edge, %if.end.i.i82, %if.then27.out_unlock_crit_edge, %if.end24, %sx9500_dec_chan_users.exit.out_unlock_crit_edge, %sx9500_inc_chan_users.exit.out_unlock_crit_edge
  %ret.2 = phi i32 [ %call.i.i.i, %sx9500_inc_chan_users.exit.out_unlock_crit_edge ], [ %ret.0, %if.end24 ], [ %call.i.i.i66, %sx9500_dec_chan_users.exit.out_unlock_crit_edge ], [ %call.i.i.i59, %if.then27.out_unlock_crit_edge ], [ %call.i.i.i59, %if.end.i.i82 ], [ %call.i.i.i73, %if.else30.out_unlock_crit_edge ], [ %call.i.i.i73, %if.end.i.i91 ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %buffer = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %3) #7
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %4 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_bytes, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #11
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %buffer, align 4
  tail call void @mutex_unlock(ptr noundef %1) #7
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %cmp = icmp eq ptr %8, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %data_rdy_users.i = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %data_rdy_users.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_rdy_users.i, align 4
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc.i.i = add i32 %5, 1
  %6 = ptrtoint ptr %data_rdy_users.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i.i, ptr %data_rdy_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %if.then.if.end_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %dec.i.i = add i32 %5, -1
  %7 = ptrtoint ptr %data_rdy_users.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec.i.i, ptr %data_rdy_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.not.i.i16 = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i16, label %if.else.if.end_crit_edge, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %.sink25 = phi i32 [ 8, %if.then.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ]
  %regmap.i.i17 = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regmap.i.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i17, align 4
  %call.i.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 3, i32 noundef 8, i32 noundef %.sink25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i18)
  %cmp = icmp slt i32 %call.i.i.i18, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.else.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %ret.023 = phi i32 [ %call.i.i.i18, %if.end.if.end5_crit_edge ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %if.else.if.end5_crit_edge ]
  %trigger_enabled = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %trigger_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %trigger_enabled, align 4
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %ret.024 = phi i32 [ %call.i.i.i18, %if.end.out_crit_edge ], [ %ret.023, %if.end5 ]
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %ret.024
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %regmap.i.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  %arrayidx.i41 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 0
  %7 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i41, align 4
  %inc.i.i = add i32 %8, 1
  store i32 %inc.i.i, ptr %arrayidx.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i, label %sx9500_inc_chan_users.exit, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sx9500_inc_chan_users.exit:                       ; preds = %if.then
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not, label %sx9500_inc_chan_users.exit.for.inc_crit_edge, label %sx9500_inc_chan_users.exit.if.end19_crit_edge

sx9500_inc_chan_users.exit.if.end19_crit_edge:    ; preds = %sx9500_inc_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sx9500_inc_chan_users.exit.for.inc_crit_edge:     ; preds = %sx9500_inc_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sx9500_inc_chan_users.exit.for.inc_crit_edge, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %11 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_scan_mask, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1 = icmp eq i32 %15, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %arrayidx.i41.1 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %arrayidx.i41.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i41.1, align 4
  %inc.i.i.1 = add i32 %17, 1
  store i32 %inc.i.i.1, ptr %arrayidx.i41.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i.i.1 = icmp eq i32 %17, 0
  br i1 %cmp.not.i.i.1, label %sx9500_inc_chan_users.exit.1, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sx9500_inc_chan_users.exit.1:                     ; preds = %if.then.1
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 6, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool3.not.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool3.not.1, label %sx9500_inc_chan_users.exit.1.for.inc.1_crit_edge, label %sx9500_inc_chan_users.exit.1.for.body10_crit_edge

sx9500_inc_chan_users.exit.1.for.body10_crit_edge: ; preds = %sx9500_inc_chan_users.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

sx9500_inc_chan_users.exit.1.for.inc.1_crit_edge: ; preds = %sx9500_inc_chan_users.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %sx9500_inc_chan_users.exit.1.for.inc.1_crit_edge, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_scan_mask, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.2 = icmp eq i32 %24, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %arrayidx.i41.2 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %arrayidx.i41.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i41.2, align 4
  %inc.i.i.2 = add i32 %26, 1
  store i32 %inc.i.i.2, ptr %arrayidx.i41.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i.i.2 = icmp eq i32 %26, 0
  br i1 %cmp.not.i.i.2, label %sx9500_inc_chan_users.exit.2, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

sx9500_inc_chan_users.exit.2:                     ; preds = %if.then.2
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 6, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.2)
  %tobool3.not.2 = icmp eq i32 %call.i.i.i.2, 0
  br i1 %tobool3.not.2, label %sx9500_inc_chan_users.exit.2.for.inc.2_crit_edge, label %sx9500_inc_chan_users.exit.2.for.body10_crit_edge

sx9500_inc_chan_users.exit.2.for.body10_crit_edge: ; preds = %sx9500_inc_chan_users.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

sx9500_inc_chan_users.exit.2.for.inc.2_crit_edge: ; preds = %sx9500_inc_chan_users.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %sx9500_inc_chan_users.exit.2.for.inc.2_crit_edge, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %29 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %active_scan_mask, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.3 = icmp eq i32 %33, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end19_crit_edge, label %if.then.3

for.inc.2.if.end19_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.3:                                        ; preds = %for.inc.2
  %arrayidx.i41.3 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 3
  %34 = ptrtoint ptr %arrayidx.i41.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i41.3, align 4
  %inc.i.i.3 = add i32 %35, 1
  store i32 %inc.i.i.3, ptr %arrayidx.i41.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i.i.3 = icmp eq i32 %35, 0
  br i1 %cmp.not.i.i.3, label %sx9500_inc_chan_users.exit.3, label %if.then.3.if.end19_crit_edge

if.then.3.if.end19_crit_edge:                     ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sx9500_inc_chan_users.exit.3:                     ; preds = %if.then.3
  %36 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 6, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.3)
  %tobool3.not.3 = icmp eq i32 %call.i.i.i.3, 0
  br i1 %tobool3.not.3, label %sx9500_inc_chan_users.exit.3.if.end19_crit_edge, label %sx9500_inc_chan_users.exit.3.for.body10_crit_edge

sx9500_inc_chan_users.exit.3.for.body10_crit_edge: ; preds = %sx9500_inc_chan_users.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

sx9500_inc_chan_users.exit.3.if.end19_crit_edge:  ; preds = %sx9500_inc_chan_users.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body10:                                       ; preds = %sx9500_inc_chan_users.exit.3.for.body10_crit_edge, %sx9500_inc_chan_users.exit.2.for.body10_crit_edge, %sx9500_inc_chan_users.exit.1.for.body10_crit_edge
  %cmp9 = phi i1 [ true, %sx9500_inc_chan_users.exit.3.for.body10_crit_edge ], [ true, %sx9500_inc_chan_users.exit.2.for.body10_crit_edge ], [ false, %sx9500_inc_chan_users.exit.1.for.body10_crit_edge ]
  %cmp9.1 = phi i1 [ true, %sx9500_inc_chan_users.exit.3.for.body10_crit_edge ], [ false, %sx9500_inc_chan_users.exit.2.for.body10_crit_edge ], [ false, %sx9500_inc_chan_users.exit.1.for.body10_crit_edge ]
  %i.056.lcssa.ph = phi i32 [ 2, %sx9500_inc_chan_users.exit.3.for.body10_crit_edge ], [ 1, %sx9500_inc_chan_users.exit.2.for.body10_crit_edge ], [ 0, %sx9500_inc_chan_users.exit.1.for.body10_crit_edge ]
  %call.i.i.i.lcssa.ph = phi i32 [ %call.i.i.i.3, %sx9500_inc_chan_users.exit.3.for.body10_crit_edge ], [ %call.i.i.i.2, %sx9500_inc_chan_users.exit.2.for.body10_crit_edge ], [ %call.i.i.i.1, %sx9500_inc_chan_users.exit.1.for.body10_crit_edge ]
  %38 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %active_scan_mask, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = shl nuw i32 1, %i.056.lcssa.ph
  %43 = and i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool13.not = icmp eq i32 %43, 0
  br i1 %tobool13.not, label %for.body10.for.inc17_crit_edge, label %if.then14

for.body10.for.inc17_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.then14:                                        ; preds = %for.body10
  %arrayidx.i42 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %i.056.lcssa.ph
  %44 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i42, align 4
  %dec.i.i = add i32 %45, -1
  store i32 %dec.i.i, ptr %arrayidx.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.not.i.i43 = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i43, label %if.end.i.i47, label %if.then14.for.inc17_crit_edge

if.then14.for.inc17_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.end.i.i47:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44 = shl nuw i32 1, %i.056.lcssa.ph
  %46 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 6, i32 noundef %shl.i44, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc17

for.inc17:                                        ; preds = %if.end.i.i47, %if.then14.for.inc17_crit_edge, %for.body10.for.inc17_crit_edge
  %i.1 = add nsw i32 %i.056.lcssa.ph, -1
  br i1 %cmp9, label %for.body10.1, label %for.inc17.if.end19_crit_edge

for.inc17.if.end19_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body10.1:                                     ; preds = %for.inc17
  %48 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %active_scan_mask, align 4
  %div3.i36.1 = lshr i32 %i.1, 5
  %arrayidx.i37.1 = getelementptr i32, ptr %49, i32 %div3.i36.1
  %50 = ptrtoint ptr %arrayidx.i37.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i37.1, align 4
  %and.i38.1 = and i32 %i.1, 31
  %52 = shl nuw i32 1, %and.i38.1
  %53 = and i32 %51, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool13.not.1 = icmp eq i32 %53, 0
  br i1 %tobool13.not.1, label %for.body10.1.for.inc17.1_crit_edge, label %if.then14.1

for.body10.1.for.inc17.1_crit_edge:               ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1

if.then14.1:                                      ; preds = %for.body10.1
  %arrayidx.i42.1 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %i.1
  %54 = ptrtoint ptr %arrayidx.i42.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i42.1, align 4
  %dec.i.i.1 = add i32 %55, -1
  store i32 %dec.i.i.1, ptr %arrayidx.i42.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.1)
  %cmp.not.i.i43.1 = icmp eq i32 %dec.i.i.1, 0
  br i1 %cmp.not.i.i43.1, label %if.end.i.i47.1, label %if.then14.1.for.inc17.1_crit_edge

if.then14.1.for.inc17.1_crit_edge:                ; preds = %if.then14.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1

if.end.i.i47.1:                                   ; preds = %if.then14.1
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.1 = shl nuw i32 1, %i.1
  %56 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i46.1 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 6, i32 noundef %shl.i44.1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc17.1

for.inc17.1:                                      ; preds = %if.end.i.i47.1, %if.then14.1.for.inc17.1_crit_edge, %for.body10.1.for.inc17.1_crit_edge
  %i.1.1 = add nsw i32 %i.056.lcssa.ph, -2
  br i1 %cmp9.1, label %for.body10.2, label %for.inc17.1.if.end19_crit_edge

for.inc17.1.if.end19_crit_edge:                   ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body10.2:                                     ; preds = %for.inc17.1
  %58 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %active_scan_mask, align 4
  %div3.i36.2 = lshr i32 %i.1.1, 5
  %arrayidx.i37.2 = getelementptr i32, ptr %59, i32 %div3.i36.2
  %60 = ptrtoint ptr %arrayidx.i37.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i37.2, align 4
  %and.i38.2 = and i32 %i.1.1, 31
  %62 = shl nuw i32 1, %and.i38.2
  %63 = and i32 %61, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool13.not.2 = icmp eq i32 %63, 0
  br i1 %tobool13.not.2, label %for.body10.2.if.end19_crit_edge, label %if.then14.2

for.body10.2.if.end19_crit_edge:                  ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14.2:                                      ; preds = %for.body10.2
  %arrayidx.i42.2 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %i.1.1
  %64 = ptrtoint ptr %arrayidx.i42.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i42.2, align 4
  %dec.i.i.2 = add i32 %65, -1
  store i32 %dec.i.i.2, ptr %arrayidx.i42.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.2)
  %cmp.not.i.i43.2 = icmp eq i32 %dec.i.i.2, 0
  br i1 %cmp.not.i.i43.2, label %if.end.i.i47.2, label %if.then14.2.if.end19_crit_edge

if.then14.2.if.end19_crit_edge:                   ; preds = %if.then14.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end.i.i47.2:                                   ; preds = %if.then14.2
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.2 = shl nuw i32 1, %i.1.1
  %66 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i46.2 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 6, i32 noundef %shl.i44.2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end19

if.end19:                                         ; preds = %if.end.i.i47.2, %if.then14.2.if.end19_crit_edge, %for.body10.2.if.end19_crit_edge, %for.inc17.1.if.end19_crit_edge, %for.inc17.if.end19_crit_edge, %sx9500_inc_chan_users.exit.3.if.end19_crit_edge, %if.then.3.if.end19_crit_edge, %for.inc.2.if.end19_crit_edge, %sx9500_inc_chan_users.exit.if.end19_crit_edge
  %ret.253 = phi i32 [ %call.i.i.i, %sx9500_inc_chan_users.exit.if.end19_crit_edge ], [ 0, %sx9500_inc_chan_users.exit.3.if.end19_crit_edge ], [ 0, %if.then.3.if.end19_crit_edge ], [ 0, %for.inc.2.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %for.body10.2.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %if.then14.2.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %if.end.i.i47.2 ], [ %call.i.i.i.lcssa.ph, %for.inc17.1.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %for.inc17.if.end19_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.253
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %regmap.i.i = getelementptr inbounds %struct.sx9500_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  %arrayidx.i41 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 0
  %7 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i41, align 4
  %dec.i.i = add i32 %8, -1
  store i32 %dec.i.i, ptr %arrayidx.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %sx9500_dec_chan_users.exit, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sx9500_dec_chan_users.exit:                       ; preds = %if.then
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not, label %sx9500_dec_chan_users.exit.for.inc_crit_edge, label %sx9500_dec_chan_users.exit.if.end19_crit_edge

sx9500_dec_chan_users.exit.if.end19_crit_edge:    ; preds = %sx9500_dec_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sx9500_dec_chan_users.exit.for.inc_crit_edge:     ; preds = %sx9500_dec_chan_users.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sx9500_dec_chan_users.exit.for.inc_crit_edge, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %11 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_scan_mask, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1 = icmp eq i32 %15, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %arrayidx.i41.1 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %arrayidx.i41.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i41.1, align 4
  %dec.i.i.1 = add i32 %17, -1
  store i32 %dec.i.i.1, ptr %arrayidx.i41.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.1)
  %cmp.not.i.i.1 = icmp eq i32 %dec.i.i.1, 0
  br i1 %cmp.not.i.i.1, label %sx9500_dec_chan_users.exit.1, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sx9500_dec_chan_users.exit.1:                     ; preds = %if.then.1
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 6, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool3.not.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool3.not.1, label %sx9500_dec_chan_users.exit.1.for.inc.1_crit_edge, label %sx9500_dec_chan_users.exit.1.for.body10_crit_edge

sx9500_dec_chan_users.exit.1.for.body10_crit_edge: ; preds = %sx9500_dec_chan_users.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

sx9500_dec_chan_users.exit.1.for.inc.1_crit_edge: ; preds = %sx9500_dec_chan_users.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %sx9500_dec_chan_users.exit.1.for.inc.1_crit_edge, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_scan_mask, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.2 = icmp eq i32 %24, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %arrayidx.i41.2 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %arrayidx.i41.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i41.2, align 4
  %dec.i.i.2 = add i32 %26, -1
  store i32 %dec.i.i.2, ptr %arrayidx.i41.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.2)
  %cmp.not.i.i.2 = icmp eq i32 %dec.i.i.2, 0
  br i1 %cmp.not.i.i.2, label %sx9500_dec_chan_users.exit.2, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

sx9500_dec_chan_users.exit.2:                     ; preds = %if.then.2
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.2)
  %tobool3.not.2 = icmp eq i32 %call.i.i.i.2, 0
  br i1 %tobool3.not.2, label %sx9500_dec_chan_users.exit.2.for.inc.2_crit_edge, label %sx9500_dec_chan_users.exit.2.for.body10_crit_edge

sx9500_dec_chan_users.exit.2.for.body10_crit_edge: ; preds = %sx9500_dec_chan_users.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

sx9500_dec_chan_users.exit.2.for.inc.2_crit_edge: ; preds = %sx9500_dec_chan_users.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %sx9500_dec_chan_users.exit.2.for.inc.2_crit_edge, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %29 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %active_scan_mask, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.3 = icmp eq i32 %33, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end19_crit_edge, label %if.then.3

for.inc.2.if.end19_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.3:                                        ; preds = %for.inc.2
  %arrayidx.i41.3 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 3
  %34 = ptrtoint ptr %arrayidx.i41.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i41.3, align 4
  %dec.i.i.3 = add i32 %35, -1
  store i32 %dec.i.i.3, ptr %arrayidx.i41.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.3)
  %cmp.not.i.i.3 = icmp eq i32 %dec.i.i.3, 0
  br i1 %cmp.not.i.i.3, label %sx9500_dec_chan_users.exit.3, label %if.then.3.if.end19_crit_edge

if.then.3.if.end19_crit_edge:                     ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sx9500_dec_chan_users.exit.3:                     ; preds = %if.then.3
  %36 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 6, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.3)
  %tobool3.not.3 = icmp eq i32 %call.i.i.i.3, 0
  br i1 %tobool3.not.3, label %sx9500_dec_chan_users.exit.3.if.end19_crit_edge, label %sx9500_dec_chan_users.exit.3.for.body10_crit_edge

sx9500_dec_chan_users.exit.3.for.body10_crit_edge: ; preds = %sx9500_dec_chan_users.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

sx9500_dec_chan_users.exit.3.if.end19_crit_edge:  ; preds = %sx9500_dec_chan_users.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body10:                                       ; preds = %sx9500_dec_chan_users.exit.3.for.body10_crit_edge, %sx9500_dec_chan_users.exit.2.for.body10_crit_edge, %sx9500_dec_chan_users.exit.1.for.body10_crit_edge
  %cmp9 = phi i1 [ true, %sx9500_dec_chan_users.exit.3.for.body10_crit_edge ], [ true, %sx9500_dec_chan_users.exit.2.for.body10_crit_edge ], [ false, %sx9500_dec_chan_users.exit.1.for.body10_crit_edge ]
  %cmp9.1 = phi i1 [ true, %sx9500_dec_chan_users.exit.3.for.body10_crit_edge ], [ false, %sx9500_dec_chan_users.exit.2.for.body10_crit_edge ], [ false, %sx9500_dec_chan_users.exit.1.for.body10_crit_edge ]
  %i.056.lcssa.ph = phi i32 [ 2, %sx9500_dec_chan_users.exit.3.for.body10_crit_edge ], [ 1, %sx9500_dec_chan_users.exit.2.for.body10_crit_edge ], [ 0, %sx9500_dec_chan_users.exit.1.for.body10_crit_edge ]
  %call.i.i.i.lcssa.ph = phi i32 [ %call.i.i.i.3, %sx9500_dec_chan_users.exit.3.for.body10_crit_edge ], [ %call.i.i.i.2, %sx9500_dec_chan_users.exit.2.for.body10_crit_edge ], [ %call.i.i.i.1, %sx9500_dec_chan_users.exit.1.for.body10_crit_edge ]
  %38 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %active_scan_mask, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = shl nuw i32 1, %i.056.lcssa.ph
  %43 = and i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool13.not = icmp eq i32 %43, 0
  br i1 %tobool13.not, label %for.body10.for.inc17_crit_edge, label %if.then14

for.body10.for.inc17_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.then14:                                        ; preds = %for.body10
  %arrayidx.i42 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %i.056.lcssa.ph
  %44 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i42, align 4
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %arrayidx.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i.i43 = icmp eq i32 %45, 0
  br i1 %cmp.not.i.i43, label %if.end.i.i47, label %if.then14.for.inc17_crit_edge

if.then14.for.inc17_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.end.i.i47:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44 = shl nuw i32 1, %i.056.lcssa.ph
  %46 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 6, i32 noundef %shl.i44, i32 noundef %shl.i44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc17

for.inc17:                                        ; preds = %if.end.i.i47, %if.then14.for.inc17_crit_edge, %for.body10.for.inc17_crit_edge
  %i.1 = add nsw i32 %i.056.lcssa.ph, -1
  br i1 %cmp9, label %for.body10.1, label %for.inc17.if.end19_crit_edge

for.inc17.if.end19_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body10.1:                                     ; preds = %for.inc17
  %48 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %active_scan_mask, align 4
  %div3.i36.1 = lshr i32 %i.1, 5
  %arrayidx.i37.1 = getelementptr i32, ptr %49, i32 %div3.i36.1
  %50 = ptrtoint ptr %arrayidx.i37.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i37.1, align 4
  %and.i38.1 = and i32 %i.1, 31
  %52 = shl nuw i32 1, %and.i38.1
  %53 = and i32 %51, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool13.not.1 = icmp eq i32 %53, 0
  br i1 %tobool13.not.1, label %for.body10.1.for.inc17.1_crit_edge, label %if.then14.1

for.body10.1.for.inc17.1_crit_edge:               ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1

if.then14.1:                                      ; preds = %for.body10.1
  %arrayidx.i42.1 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %i.1
  %54 = ptrtoint ptr %arrayidx.i42.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i42.1, align 4
  %inc.i.i.1 = add i32 %55, 1
  store i32 %inc.i.i.1, ptr %arrayidx.i42.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i.i43.1 = icmp eq i32 %55, 0
  br i1 %cmp.not.i.i43.1, label %if.end.i.i47.1, label %if.then14.1.for.inc17.1_crit_edge

if.then14.1.for.inc17.1_crit_edge:                ; preds = %if.then14.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1

if.end.i.i47.1:                                   ; preds = %if.then14.1
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.1 = shl nuw i32 1, %i.1
  %56 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i46.1 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 6, i32 noundef %shl.i44.1, i32 noundef %shl.i44.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc17.1

for.inc17.1:                                      ; preds = %if.end.i.i47.1, %if.then14.1.for.inc17.1_crit_edge, %for.body10.1.for.inc17.1_crit_edge
  %i.1.1 = add nsw i32 %i.056.lcssa.ph, -2
  br i1 %cmp9.1, label %for.body10.2, label %for.inc17.1.if.end19_crit_edge

for.inc17.1.if.end19_crit_edge:                   ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body10.2:                                     ; preds = %for.inc17.1
  %58 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %active_scan_mask, align 4
  %div3.i36.2 = lshr i32 %i.1.1, 5
  %arrayidx.i37.2 = getelementptr i32, ptr %59, i32 %div3.i36.2
  %60 = ptrtoint ptr %arrayidx.i37.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i37.2, align 4
  %and.i38.2 = and i32 %i.1.1, 31
  %62 = shl nuw i32 1, %and.i38.2
  %63 = and i32 %61, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool13.not.2 = icmp eq i32 %63, 0
  br i1 %tobool13.not.2, label %for.body10.2.if.end19_crit_edge, label %if.then14.2

for.body10.2.if.end19_crit_edge:                  ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14.2:                                      ; preds = %for.body10.2
  %arrayidx.i42.2 = getelementptr %struct.sx9500_data, ptr %1, i32 0, i32 13, i32 %i.1.1
  %64 = ptrtoint ptr %arrayidx.i42.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i42.2, align 4
  %inc.i.i.2 = add i32 %65, 1
  store i32 %inc.i.i.2, ptr %arrayidx.i42.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not.i.i43.2 = icmp eq i32 %65, 0
  br i1 %cmp.not.i.i43.2, label %if.end.i.i47.2, label %if.then14.2.if.end19_crit_edge

if.then14.2.if.end19_crit_edge:                   ; preds = %if.then14.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end.i.i47.2:                                   ; preds = %if.then14.2
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i44.2 = shl nuw i32 1, %i.1.1
  %66 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i46.2 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 6, i32 noundef %shl.i44.2, i32 noundef %shl.i44.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end19

if.end19:                                         ; preds = %if.end.i.i47.2, %if.then14.2.if.end19_crit_edge, %for.body10.2.if.end19_crit_edge, %for.inc17.1.if.end19_crit_edge, %for.inc17.if.end19_crit_edge, %sx9500_dec_chan_users.exit.3.if.end19_crit_edge, %if.then.3.if.end19_crit_edge, %for.inc.2.if.end19_crit_edge, %sx9500_dec_chan_users.exit.if.end19_crit_edge
  %ret.253 = phi i32 [ %call.i.i.i, %sx9500_dec_chan_users.exit.if.end19_crit_edge ], [ 0, %sx9500_dec_chan_users.exit.3.if.end19_crit_edge ], [ 0, %if.then.3.if.end19_crit_edge ], [ 0, %for.inc.2.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %for.body10.2.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %if.then14.2.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %if.end.i.i47.2 ], [ %call.i.i.i.lcssa.ph, %for.inc17.1.if.end19_crit_edge ], [ %call.i.i.i.lcssa.ph, %for.inc17.if.end19_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.253
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %suspend_ctrl0 = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 9
  %call2 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 6, ptr noundef %suspend_ctrl0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 6, i32 noundef 0) #7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call4, %if.end ]
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9500_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %suspend_ctrl0 = getelementptr inbounds %struct.sx9500_data, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %suspend_ctrl0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %suspend_ctrl0, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 6, i32 noundef %7) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !65, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_sx9500__289_1069_sx9500_driver_init6, !1, !"__initcall__kmod_sx9500__289_1069_sx9500_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/sx9500.c", i32 1069, i32 1}
!2 = !{ptr @__exitcall_sx9500_driver_exit, !1, !"__exitcall_sx9500_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/sx9500.c", i32 1071, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/sx9500.c", i32 1072, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/sx9500.c", i32 1073, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/sx9500.c", i32 1060, i32 11}
!12 = !{ptr @sx9500_driver, !13, !"sx9500_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/sx9500.c", i32 1058, i32 26}
!14 = !{ptr @sx9500_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/sx9500.c", i32 917, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sx9500_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/iio/proximity/sx9500.c", i32 921, i32 17}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/proximity/sx9500.c", i32 939, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sx9500_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sx9500_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/proximity/sx9500.c", i32 944, i32 5}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/proximity/sx9500.c", i32 949, i32 5}
!32 = !{ptr @init_completion.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/completion.h", i32 87, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sx9500_regmap_config, !36, !"sx9500_regmap_config", i1 false, i1 false}
!36 = !{!"../drivers/iio/proximity/sx9500.c", i32 192, i32 35}
!37 = !{ptr @sx9500_writeable_regs, !38, !"sx9500_writeable_regs", i1 false, i1 false}
!38 = !{!"../drivers/iio/proximity/sx9500.c", i32 160, i32 41}
!39 = !{ptr @sx9500_writable_reg_ranges, !40, !"sx9500_writable_reg_ranges", i1 false, i1 false}
!40 = !{!"../drivers/iio/proximity/sx9500.c", i32 152, i32 34}
!41 = !{ptr @sx9500_readable_regs, !42, !"sx9500_readable_regs", i1 false, i1 false}
!42 = !{!"../drivers/iio/proximity/sx9500.c", i32 176, i32 41}
!43 = !{ptr @sx9500_non_readable_reg_ranges, !44, !"sx9500_non_readable_reg_ranges", i1 false, i1 false}
!44 = !{!"../drivers/iio/proximity/sx9500.c", i32 169, i32 34}
!45 = !{ptr @sx9500_volatile_regs, !46, !"sx9500_volatile_regs", i1 false, i1 false}
!46 = !{!"../drivers/iio/proximity/sx9500.c", i32 187, i32 41}
!47 = !{ptr @sx9500_volatile_reg_ranges, !48, !"sx9500_volatile_reg_ranges", i1 false, i1 false}
!48 = !{!"../drivers/iio/proximity/sx9500.c", i32 181, i32 34}
!49 = !{ptr @sx9500_channels, !50, !"sx9500_channels", i1 false, i1 false}
!50 = !{!"../drivers/iio/proximity/sx9500.c", i32 126, i32 35}
!51 = !{ptr @sx9500_events, !52, !"sx9500_events", i1 false, i1 false}
!52 = !{!"../drivers/iio/proximity/sx9500.c", i32 100, i32 36}
!53 = !{ptr @sx9500_info, !54, !"sx9500_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/proximity/sx9500.c", i32 611, i32 30}
!55 = !{ptr @sx9500_attribute_group, !56, !"sx9500_attribute_group", i1 false, i1 false}
!56 = !{!"../drivers/iio/proximity/sx9500.c", i32 607, i32 37}
!57 = !{ptr @sx9500_attributes, !58, !"sx9500_attributes", i1 false, i1 false}
!58 = !{!"../drivers/iio/proximity/sx9500.c", i32 602, i32 26}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/proximity/sx9500.c", i32 599, i32 8}
!61 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @iio_const_attr_sampling_frequency_available, !60, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!63 = !{ptr @sx9500_scan_period_table, !64, !"sx9500_scan_period_table", i1 false, i1 false}
!64 = !{!"../drivers/iio/proximity/sx9500.c", i32 148, i32 27}
!65 = !{ptr @sx9500_samp_freq_table, !66, !"sx9500_samp_freq_table", i1 false, i1 false}
!66 = !{!"../drivers/iio/proximity/sx9500.c", i32 137, i32 3}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/proximity/sx9500.c", i32 887, i32 3}
!69 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sx9500_gpio_probe.__UNIQUE_ID_ddebug288, !68, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/proximity/sx9500.c", i32 890, i32 35}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/proximity/sx9500.c", i32 892, i32 4}
!75 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @sx9500_gpio_probe._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @sx9500_gpio_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/proximity/sx9500.c", i32 897, i32 40}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/proximity/sx9500.c", i32 899, i32 3}
!82 = !{ptr @sx9500_gpio_probe._entry.19, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sx9500_gpio_probe._entry_ptr.21, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/proximity/sx9500.c", i32 864, i32 4}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/proximity/sx9500.c", i32 869, i32 4}
!88 = distinct !{null, !89, !"acpi_sx9500_gpios", i1 false, i1 false}
!89 = !{!"../drivers/iio/proximity/sx9500.c", i32 863, i32 39}
!90 = distinct !{null, !91, !"reset_gpios", i1 false, i1 false}
!91 = !{!"../drivers/iio/proximity/sx9500.c", i32 860, i32 38}
!92 = distinct !{null, !93, !"interrupt_gpios", i1 false, i1 false}
!93 = !{!"../drivers/iio/proximity/sx9500.c", i32 861, i32 38}
!94 = distinct !{null, !95, !"sx9500_default_regs", i1 false, i1 false}
!95 = !{!"../drivers/iio/proximity/sx9500.c", i32 736, i32 40}
!96 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/proximity/sx9500.c", i32 813, i32 3}
!98 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sx9500_init_compensation._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @sx9500_init_compensation._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/proximity/sx9500.c", i32 509, i32 3}
!103 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sx9500_irq_thread_handler._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sx9500_irq_thread_handler._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/proximity/sx9500.c", i32 474, i32 3}
!108 = !{ptr @sx9500_push_events._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @sx9500_push_events._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @sx9500_trigger_ops, !111, !"sx9500_trigger_ops", i1 false, i1 false}
!111 = !{!"../drivers/iio/proximity/sx9500.c", i32 644, i32 37}
!112 = !{ptr @sx9500_buffer_setup_ops, !113, !"sx9500_buffer_setup_ops", i1 false, i1 false}
!113 = !{!"../drivers/iio/proximity/sx9500.c", i32 726, i32 42}
!114 = !{ptr @sx9500_of_match, !115, !"sx9500_of_match", i1 false, i1 false}
!115 = !{!"../drivers/iio/proximity/sx9500.c", i32 1046, i32 34}
!116 = !{ptr @sx9500_pm_ops, !117, !"sx9500_pm_ops", i1 false, i1 false}
!117 = !{!"../drivers/iio/proximity/sx9500.c", i32 1035, i32 32}
!118 = !{ptr @sx9500_id, !119, !"sx9500_id", i1 false, i1 false}
!119 = !{!"../drivers/iio/proximity/sx9500.c", i32 1052, i32 35}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i64 2148715534, i64 2148715539, i64 2148715552, i64 2148715596, i64 2148715630, i64 2148715651}
!131 = !{i8 0, i8 2}
