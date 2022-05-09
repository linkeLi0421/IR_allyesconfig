; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/sx9310.c_pt.bc'
source_filename = "../drivers/iio/proximity/sx9310.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.88 = type { i32, i32 }
%struct.sx9310_reg_default = type { i8, i8 }
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
%struct.sx9310_data = type { %struct.mutex, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], i32, i8, %struct.anon.87, i32, %struct.completion, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anon.87 = type { [4 x i16], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_sx9310__402_1574_sx9310_driver_init6 = internal global ptr @sx9310_driver_init, section ".initcall6.init", align 4
@sx9310_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sx9310_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sx9310_of_match, ptr @sx9310_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sx9310_pm_ops, ptr null, ptr null }, ptr @sx9310_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sx9310_driver_exit = internal global ptr @sx9310_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author403 = internal constant [53 x i8] c"sx9310.author=Gwendal Grignou <gwendal@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author404 = internal constant [54 x i8] c"sx9310.author=Daniel Campello <campello@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description405 = internal constant [69 x i8] c"sx9310.description=Driver for Semtech SX9310/SX9311 proximity sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file406 = internal constant [41 x i8] c"sx9310.file=drivers/iio/proximity/sx9310\00", section ".modinfo", align 1
@__UNIQUE_ID_license407 = internal constant [22 x i8] c"sx9310.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sx9310\00", [25 x i8] zeroinitializer }, align 32
@sx9310_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx9310\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx9311\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sx9310_acpi_match = internal constant { [3 x %struct.acpi_device_id], [56 x i8] } { [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"STH9310\00\00", i32 1, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"STH9311\00\00", i32 2, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sx9310_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sx9310_suspend, ptr @sx9310_resume, ptr @sx9310_suspend, ptr @sx9310_resume, ptr @sx9310_suspend, ptr @sx9310_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sx9310_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sx9310\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"sx9311\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"svdd\00", [27 x i8] zeroinitializer }, align 32
@sx9310_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@sx9310_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sx9310_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr @sx9310_writeable_regs, ptr @sx9310_readable_regs, ptr @sx9310_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sx9310:1409:(&sx9310_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@sx9310_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1430, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error in reading WHOAMI register: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx9310_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/proximity/sx9310.c\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sx9310_probe._entry_ptr = internal global ptr @sx9310_probe._entry, section ".printk_index", align 4
@sx9310_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 53, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 32769, i32 32768, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9310_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 1, i32 0, i32 53, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 32769, i32 32768, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9310_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 2, i32 0, i32 53, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 32769, i32 32768, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9310_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 3, i32 0, i32 53, i32 3, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 32769, i32 32768, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sx9310_events, i32 3, ptr null, ptr @.str.19, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@sx9310_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @sx9310_attribute_group, ptr @sx9310_read_raw, ptr null, ptr @sx9310_read_avail, ptr @sx9310_write_raw, ptr null, ptr null, ptr @sx9310_read_event_config, ptr @sx9310_write_event_config, ptr @sx9310_read_event_val, ptr @sx9310_write_event_val, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx9310_event\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@sx9310_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @sx9310_set_trigger_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@sx9310_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @sx9310_buffer_preenable, ptr null, ptr null, ptr @sx9310_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sx9310_writeable_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sx9310_writable_reg_ranges, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sx9310_readable_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sx9310_readable_reg_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sx9310_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sx9310_volatile_reg_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sx9310_writable_reg_ranges = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range { i32 3, i32 4 }, %struct.regmap_range { i32 16, i32 35 }, %struct.regmap_range { i32 42, i32 44 }, %struct.regmap_range { i32 48, i32 48 }, %struct.regmap_range { i32 55, i32 56 }, %struct.regmap_range { i32 65, i32 65 }, %struct.regmap_range { i32 127, i32 127 }], [40 x i8] zeroinitializer }, align 32
@sx9310_readable_reg_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 4 }, %struct.regmap_range { i32 16, i32 35 }, %struct.regmap_range { i32 42, i32 44 }, %struct.regmap_range { i32 48, i32 58 }, %struct.regmap_range { i32 64, i32 66 }, %struct.regmap_range { i32 127, i32 127 }], [48 x i8] zeroinitializer }, align 32
@sx9310_volatile_reg_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 49, i32 54 }, %struct.regmap_range { i32 57, i32 58 }, %struct.regmap_range { i32 127, i32 127 }], [32 x i8] zeroinitializer }, align 32
@sx9310_set_indio_dev_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 1365, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WHOAMI does not match device data: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sx9310_set_indio_dev_name\00", [38 x i8] zeroinitializer }, align 32
@sx9310_set_indio_dev_name._entry_ptr = internal global ptr @sx9310_set_indio_dev_name._entry, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sx9311\00", [25 x i8] zeroinitializer }, align 32
@sx9310_set_indio_dev_name._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.7, i32 1377, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected WHOAMI response: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@sx9310_set_indio_dev_name._entry_ptr.18 = internal global ptr @sx9310_set_indio_dev_name._entry.16, section ".printk_index", align 4
@sx9310_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 0, i32 0, i32 0, i32 8 }, %struct.iio_event_spec { i32 0, i32 2, i32 0, i32 0, i32 0, i32 8 }, %struct.iio_event_spec { i32 0, i32 0, i32 7, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"comb\00", [27 x i8] zeroinitializer }, align 32
@sx9310_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sx9310_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@sx9310_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sx9310_show_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d \00", [25 x i8] zeroinitializer }, align 32
@sx9310_samp_freq_table = internal constant { [16 x %struct.anon.88], [32 x i8] } { [16 x %struct.anon.88] [%struct.anon.88 { i32 500, i32 0 }, %struct.anon.88 { i32 66, i32 666666 }, %struct.anon.88 { i32 33, i32 333333 }, %struct.anon.88 { i32 22, i32 222222 }, %struct.anon.88 { i32 16, i32 666666 }, %struct.anon.88 { i32 11, i32 111111 }, %struct.anon.88 { i32 8, i32 333333 }, %struct.anon.88 { i32 5, i32 0 }, %struct.anon.88 { i32 2, i32 500000 }, %struct.anon.88 { i32 1, i32 666666 }, %struct.anon.88 { i32 1, i32 250000 }, %struct.anon.88 { i32 1, i32 0 }, %struct.anon.88 { i32 0, i32 500000 }, %struct.anon.88 { i32 0, i32 333333 }, %struct.anon.88 { i32 0, i32 250000 }, %struct.anon.88 { i32 0, i32 200000 }], [32 x i8] zeroinitializer }, align 32
@sx9310_scan_period_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2, i32 15, i32 30, i32 45, i32 60, i32 90, i32 120, i32 200, i32 400, i32 600, i32 800, i32 1000, i32 2000, i32 3000, i32 4000, i32 5000], [32 x i8] zeroinitializer }, align 32
@sx9310_gain_vals = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@sx9310_pthresh_codes = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 2, i32 4, i32 6, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 112, i32 128, i32 144, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 512, i32 640, i32 768, i32 1024, i32 1536], [32 x i8] zeroinitializer }, align 32
@sx9310_default_regs = internal constant { [25 x %struct.sx9310_reg_default], [46 x i8] } { [25 x %struct.sx9310_reg_default] [%struct.sx9310_reg_default { i8 3, i8 0 }, %struct.sx9310_reg_default { i8 4, i8 0 }, %struct.sx9310_reg_default { i8 16, i8 1 }, %struct.sx9310_reg_default { i8 17, i8 0 }, %struct.sx9310_reg_default { i8 18, i8 -124 }, %struct.sx9310_reg_default { i8 19, i8 14 }, %struct.sx9310_reg_default { i8 20, i8 7 }, %struct.sx9310_reg_default { i8 21, i8 -58 }, %struct.sx9310_reg_default { i8 22, i8 32 }, %struct.sx9310_reg_default { i8 23, i8 13 }, %struct.sx9310_reg_default { i8 24, i8 -115 }, %struct.sx9310_reg_default { i8 25, i8 67 }, %struct.sx9310_reg_default { i8 26, i8 17 }, %struct.sx9310_reg_default { i8 27, i8 0 }, %struct.sx9310_reg_default { i8 28, i8 0 }, %struct.sx9310_reg_default { i8 29, i8 0 }, %struct.sx9310_reg_default { i8 30, i8 0 }, %struct.sx9310_reg_default { i8 31, i8 0 }, %struct.sx9310_reg_default { i8 32, i8 0 }, %struct.sx9310_reg_default { i8 33, i8 0 }, %struct.sx9310_reg_default { i8 34, i8 0 }, %struct.sx9310_reg_default { i8 35, i8 0 }, %struct.sx9310_reg_default { i8 42, i8 80 }, %struct.sx9310_reg_default { i8 43, i8 -118 }, %struct.sx9310_reg_default { i8 44, i8 60 }], [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"semtech,cs0-ground\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"semtech,combined-sensors\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"semtech,resolution\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"coarsest\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"very-coarse\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"coarse\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"medium-coarse\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"medium\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fine\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"very-fine\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"finest\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"semtech,startup-sensor\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"semtech,proxraw-strength\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"semtech,avg-pos-strength\00", [39 x i8] zeroinitializer }, align 32
@sx9310_init_compensation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 1216, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"initial compensation timed out: 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sx9310_init_compensation\00", [39 x i8] zeroinitializer }, align 32
@sx9310_init_compensation._entry_ptr = internal global ptr @sx9310_init_compensation._entry, section ".printk_index", align 4
@sx9310_irq_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 969, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c transfer error in irq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sx9310_irq_thread_handler\00", [38 x i8] zeroinitializer }, align 32
@sx9310_irq_thread_handler._entry_ptr = internal global ptr @sx9310_irq_thread_handler._entry, section ".printk_index", align 4
@sx9310_push_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.40, ptr @.str.7, i32 935, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sx9310_push_events\00", [45 x i8] zeroinitializer }, align 32
@sx9310_push_events._entry_ptr = internal global ptr @sx9310_push_events._entry, section ".printk_index", align 4
@switch.table.sx9310_read_event_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 25, i32 25, i32 24], [16 x i8] zeroinitializer }, align 32
@switch.table.sx9310_read_event_val.41 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 25, i32 25, i32 24], [16 x i8] zeroinitializer }, align 32
@switch.table.sx9310_write_event_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 25, i32 25, i32 24], [16 x i8] zeroinitializer }, align 32
@switch.table.sx9310_write_event_val.42 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 25, i32 25, i32 24], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 20, i64 21, i64 23]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 15]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 12, i64 15]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 15]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"sx9310_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1557, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1559, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"sx9310_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1543, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"sx9310_acpi_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1536, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"sx9310_pm_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1532, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"sx9310_id\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1550, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1404, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1405, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1406, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"sx9310_regmap_config\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 311, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1409, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1430, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"sx9310_channels\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 215, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"sx9310_info\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1043, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1454, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1458, i32 44 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"sx9310_trigger_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1077, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"sx9310_buffer_setup_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1139, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"sx9310_writeable_regs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 280, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"sx9310_readable_regs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 294, i32 41 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"sx9310_volatile_regs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 306, i32 41 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"sx9310_writable_reg_ranges\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 270, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"sx9310_readable_reg_ranges\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 285, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"sx9310_volatile_reg_ranges\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 299, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1365, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1374, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1377, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"sx9310_events\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 171, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 219, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"sx9310_attribute_group\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1039, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"sx9310_attributes\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1034, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 268, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 262, i32 48 }
@___asan_gen_.191 = private unnamed_addr constant [23 x i8] c"sx9310_samp_freq_table\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 231, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"sx9310_scan_period_table\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 249, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"sx9310_gain_vals\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 549, i32 18 }
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"sx9310_pthresh_codes\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 570, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c"sx9310_default_regs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1149, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1237, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1242, i32 42 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1265, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1270, i32 20 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1272, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1274, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1276, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1278, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1280, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1282, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1284, i32 25 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1289, i32 39 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1299, i32 39 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1312, i32 39 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1214, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 969, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [34 x i8] c"../drivers/iio/proximity/sx9310.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 935, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [35 x i8] c"switch.table.sx9310_read_event_val\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [38 x i8] c"switch.table.sx9310_read_event_val.41\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [36 x i8] c"switch.table.sx9310_write_event_val\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [39 x i8] c"switch.table.sx9310_write_event_val.42\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author403, ptr @__UNIQUE_ID_author404, ptr @__UNIQUE_ID_description405, ptr @__UNIQUE_ID_file406, ptr @__UNIQUE_ID_license407, ptr @__exitcall_sx9310_driver_exit, ptr @__initcall__kmod_sx9310__402_1574_sx9310_driver_init6, ptr @sx9310_driver_exit, ptr @sx9310_init_compensation._entry, ptr @sx9310_init_compensation._entry_ptr, ptr @sx9310_irq_thread_handler._entry, ptr @sx9310_irq_thread_handler._entry_ptr, ptr @sx9310_probe._entry, ptr @sx9310_probe._entry_ptr, ptr @sx9310_push_events._entry, ptr @sx9310_push_events._entry_ptr, ptr @sx9310_set_indio_dev_name._entry, ptr @sx9310_set_indio_dev_name._entry.16, ptr @sx9310_set_indio_dev_name._entry_ptr, ptr @sx9310_set_indio_dev_name._entry_ptr.18, ptr @sx9310_driver, ptr @.str, ptr @sx9310_of_match, ptr @sx9310_acpi_match, ptr @sx9310_pm_ops, ptr @sx9310_id, ptr @.str.1, ptr @.str.2, ptr @sx9310_probe.__key, ptr @.str.3, ptr @sx9310_probe._key, ptr @sx9310_regmap_config, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sx9310_channels, ptr @sx9310_info, ptr @.str.10, ptr @.str.11, ptr @sx9310_trigger_ops, ptr @sx9310_buffer_setup_ops, ptr @init_completion.__key, ptr @.str.12, ptr @sx9310_writeable_regs, ptr @sx9310_readable_regs, ptr @sx9310_volatile_regs, ptr @sx9310_writable_reg_ranges, ptr @sx9310_readable_reg_ranges, ptr @sx9310_volatile_reg_ranges, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @sx9310_events, ptr @.str.19, ptr @sx9310_attribute_group, ptr @sx9310_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str.20, ptr @.str.21, ptr @sx9310_samp_freq_table, ptr @sx9310_scan_period_table, ptr @sx9310_gain_vals, ptr @sx9310_pthresh_codes, ptr @sx9310_default_regs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @switch.table.sx9310_read_event_val, ptr @switch.table.sx9310_read_event_val.41, ptr @switch.table.sx9310_write_event_val, ptr @switch.table.sx9310_write_event_val.42], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_acpi_match to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_writeable_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_readable_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_writable_reg_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_readable_reg_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_volatile_reg_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_set_indio_dev_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_set_indio_dev_name._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_samp_freq_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_scan_period_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_gain_vals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_pthresh_codes to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_default_regs to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_init_compensation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_irq_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx9310_push_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sx9310_read_event_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sx9310_read_event_val.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sx9310_write_event_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sx9310_write_event_val.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sx9310_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sx9310_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @sx9310_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 224) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client3 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client3, align 4
  %supplies = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %supplies, align 8
  %arrayidx5 = getelementptr %struct.sx9310_data, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %arrayidx5, align 4
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @sx9310_probe.__key) #9
  %completion = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #9
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @sx9310_regmap_config, ptr noundef nonnull @sx9310_probe._key, ptr noundef nonnull @.str.4) #9
  %regmap = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call21 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @sx9310_regulator_disable, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end28, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %whoami = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 12
  %call30 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 66, ptr noundef %whoami) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call30) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %10 = ptrtoint ptr %whoami to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %whoami, align 4
  %call38 = tail call fastcc i32 @sx9310_set_indio_dev_name(ptr noundef %dev1, ptr noundef nonnull %call, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end44, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %if.end36
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sx9310_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sx9310_info, ptr %info, align 8
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call45 = tail call fastcc i32 @sx9310_init_device(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %do.end44.cleanup_crit_edge

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %do.end44
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool49.not = icmp eq i32 %18, 0
  br i1 %tobool49.not, label %if.end48.if.end69_crit_edge, label %if.then50

if.end48.if.end69_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then50:                                        ; preds = %if.end48
  %call52 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull @sx9310_irq_handler, ptr noundef nonnull @sx9310_irq_thread_handler, i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.then50
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 8
  %call56 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #9
  %call57 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef %20, i32 noundef %call56) #9
  %trig = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call57, ptr %trig, align 8
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.end55.cleanup_crit_edge, label %if.end61

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %if.end55
  %22 = ptrtoint ptr %call57 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sx9310_trigger_ops, ptr %call57, align 8
  %23 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trig, align 8
  %driver_data.i.i142 = getelementptr inbounds %struct.iio_trigger, ptr %24, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i142 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %driver_data.i.i142, align 4
  %26 = load ptr, ptr %trig, align 8
  %call65 = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev1, ptr noundef %26, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end61.if.end69_crit_edge, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end69:                                         ; preds = %if.end61.if.end69_crit_edge, %if.end48.if.end69_crit_edge
  %call70 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @sx9310_trigger_handler, i32 noundef 0, ptr noundef nonnull @sx9310_buffer_setup_ops, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end69.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %do.end44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end35, %devm_add_action_or_reset.exit, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then10 ], [ %call30, %do.end35 ], [ %call74, %if.end73 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ], [ %call21, %if.end18.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call38, %if.end36.cleanup_crit_edge ], [ %call45, %do.end44.cleanup_crit_edge ], [ %call52, %if.then50.cleanup_crit_edge ], [ -12, %if.end55.cleanup_crit_edge ], [ %call65, %if.end61.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx9310_regulator_disable(ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.sx9310_data, ptr %_data, i32 0, i32 4
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sx9310_set_indio_dev_name(ptr noundef %dev, ptr nocapture noundef writeonly %indio_dev, i32 noundef %whoami) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %0 = ptrtoint ptr %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %whoami)
  %cmp.not = icmp eq i32 %0, %whoami
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %whoami) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %whoami to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whoami, label %do.end5 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %name, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name2 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.15, ptr %name2, align 8
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %whoami) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %sw.bb1, %sw.bb, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end5 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sx9310_init_device(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %ctrl0.i = alloca i32, align 4
  %combined.i = alloca [4 x i32], align 4
  %start.i = alloca i32, align 4
  %raw.i = alloca i32, align 4
  %pos.i = alloca i32, align 4
  %res.i = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !156
  %regmap = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 127, i32 noundef 222) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %arrayidx17.i.1 = getelementptr inbounds [4 x i32], ptr %combined.i, i32 0, i32 1
  %arrayidx17.i.2 = getelementptr inbounds [4 x i32], ptr %combined.i, i32 0, i32 2
  %arrayidx17.i.3 = getelementptr inbounds [4 x i32], ptr %combined.i, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %sx9310_get_default_reg.exit
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.045 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %combined.i) #9
  %7 = call ptr @memset(ptr %combined.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i) #9
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %start.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw.i) #9
  %9 = ptrtoint ptr %raw.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %raw.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #9
  %10 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pos.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #9
  %11 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !156
  %arrayidx.i = getelementptr [25 x %struct.sx9310_reg_default], ptr @sx9310_default_regs, i32 0, i32 %i.045
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx.i, align 1
  %tmp.sroa.0.0.extract.shift = lshr i16 %13, 8
  %tmp.sroa.0.0.extract.trunc = trunc i16 %tmp.sroa.0.0.extract.shift to i8
  %tmp.sroa.5.0.extract.trunc = trunc i16 %13 to i8
  %14 = zext i8 %tmp.sroa.0.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %tmp.sroa.0.0.extract.trunc, label %for.body.sx9310_get_default_reg.exit_crit_edge [
    i8 18, label %sw.bb.i
    i8 20, label %sw.bb57.i
    i8 21, label %sw.bb137.i
    i8 23, label %sw.bb254.i
  ]

for.body.sx9310_get_default_reg.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_get_default_reg.exit

sw.bb.i:                                          ; preds = %for.body
  %call.i.i = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  %15 = and i8 %tmp.sroa.5.0.extract.trunc, -13
  %16 = or i8 %15, 8
  %tmp.sroa.5.0 = select i1 %call.i.i, i8 %16, i8 %tmp.sroa.5.0.extract.trunc
  %call.i378.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i378.i)
  %cmp8.i = icmp ugt i32 %call.i378.i, 4
  br i1 %cmp8.i, label %sw.bb.i.sx9310_get_default_reg.exit_crit_edge, label %if.end11.i

sw.bb.i.sx9310_get_default_reg.exit_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_get_default_reg.exit

if.end11.i:                                       ; preds = %sw.bb.i
  %call12.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull %combined.i, i32 noundef %call.i378.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end11.i.sx9310_get_default_reg.exit_crit_edge

if.end11.i.sx9310_get_default_reg.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_get_default_reg.exit

for.cond.preheader.i:                             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378.i)
  %cmp15388.not.i = icmp eq i32 %call.i378.i, 0
  br i1 %cmp15388.not.i, label %for.end.thread.i, label %for.body.i

for.end.thread.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = and i8 %tmp.sroa.5.0, 63
  br label %sx9310_get_default_reg.exit

for.body.i:                                       ; preds = %for.cond.preheader.i
  %18 = ptrtoint ptr %combined.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %combined.i, align 4
  %shl.i = shl nuw i32 1, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i378.i)
  %exitcond.not.i = icmp eq i32 %call.i378.i, 1
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.1

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.i
  %20 = ptrtoint ptr %arrayidx17.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i.1, align 4
  %shl.i.1 = shl nuw i32 1, %21
  %or18.i.1 = or i32 %shl.i.1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i378.i)
  %exitcond.not.i.1 = icmp eq i32 %call.i378.i, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.end.i_crit_edge, label %for.body.i.2

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %22 = ptrtoint ptr %arrayidx17.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17.i.2, align 4
  %shl.i.2 = shl nuw i32 1, %23
  %or18.i.2 = or i32 %shl.i.2, %or18.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i378.i)
  %exitcond.not.i.2 = icmp eq i32 %call.i378.i, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.end.i_crit_edge, label %for.body.i.3

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %arrayidx17.i.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i.3, align 4
  %shl.i.3 = shl nuw i32 1, %25
  %or18.i.3 = or i32 %shl.i.3, %or18.i.2
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.3, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %or18.i.lcssa = phi i32 [ %shl.i, %for.body.i.for.end.i_crit_edge ], [ %or18.i.1, %for.body.i.1.for.end.i_crit_edge ], [ %or18.i.2, %for.body.i.2.for.end.i_crit_edge ], [ %or18.i.3, %for.body.i.3 ]
  %26 = and i8 %tmp.sroa.5.0, 63
  %27 = zext i32 %or18.i.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %or18.i.lcssa, label %for.end.i.sx9310_get_default_reg.exit_crit_edge [
    i32 15, label %if.then25.i
    i32 6, label %if.then32.i
    i32 3, label %if.then40.i
  ]

for.end.i.sx9310_get_default_reg.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_get_default_reg.exit

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = or i8 %tmp.sroa.5.0, -64
  br label %sx9310_get_default_reg.exit

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = or i8 %26, -128
  br label %sx9310_get_default_reg.exit

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = or i8 %26, 64
  br label %sx9310_get_default_reg.exit

sw.bb57.i:                                        ; preds = %for.body
  %call58.i = call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %sw.bb57.i.sx9310_get_default_reg.exit_crit_edge

sw.bb57.i.sx9310_get_default_reg.exit_crit_edge:  ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_get_default_reg.exit

if.end61.i:                                       ; preds = %sw.bb57.i
  %31 = and i8 %tmp.sroa.5.0.extract.trunc, -8
  %32 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %res.i, align 4
  %call66.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(9) @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end61.i.sx9310_get_default_reg.exit_crit_edge, label %if.else73.i

if.end61.i.sx9310_get_default_reg.exit_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_get_default_reg.exit

if.else73.i:                                      ; preds = %if.end61.i
  %call74.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(12) @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.then76.i, label %if.else81.i

if.then76.i:                                      ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = or i8 %31, 1
  br label %sx9310_get_default_reg.exit

if.else81.i:                                      ; preds = %if.else73.i
  %call82.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(7) @.str.27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.then84.i, label %if.else89.i

if.then84.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = or i8 %31, 2
  br label %sx9310_get_default_reg.exit

if.else89.i:                                      ; preds = %if.else81.i
  %call90.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(14) @.str.28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.then92.i, label %if.else97.i

if.then92.i:                                      ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = or i8 %31, 3
  br label %sx9310_get_default_reg.exit

if.else97.i:                                      ; preds = %if.else89.i
  %call98.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(7) @.str.29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.then100.i, label %if.else105.i

if.then100.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = or i8 %31, 4
  br label %sx9310_get_default_reg.exit

if.else105.i:                                     ; preds = %if.else97.i
  %call106.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(5) @.str.30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.then108.i, label %if.else113.i

if.then108.i:                                     ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = or i8 %31, 5
  br label %sx9310_get_default_reg.exit

if.else113.i:                                     ; preds = %if.else105.i
  %call114.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(10) @.str.31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.then116.i, label %if.else121.i

if.then116.i:                                     ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = or i8 %31, 6
  br label %sx9310_get_default_reg.exit

if.else121.i:                                     ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #11
  %call122.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(7) @.str.32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  %masksel = select i1 %tobool123.not.i, i8 7, i8 0
  %spec.select = or i8 %masksel, %31
  br label %sx9310_get_default_reg.exit

sw.bb137.i:                                       ; preds = %for.body
  %call.i379.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull %start.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379.i)
  %tobool139.not.i = icmp eq i32 %call.i379.i, 0
  br i1 %tobool139.not.i, label %sw.bb137.i.do.end179.i_crit_edge, label %do.end152.i

sw.bb137.i.do.end179.i_crit_edge:                 ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end179.i

do.end152.i:                                      ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = lshr i8 %tmp.sroa.5.0.extract.trunc, 2
  %41 = and i8 %40, 3
  %shr.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr.i, ptr %start.i, align 4
  br label %do.end179.i

do.end179.i:                                      ; preds = %do.end152.i, %sw.bb137.i.do.end179.i_crit_edge
  %43 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %start.i, align 4
  %45 = and i8 %tmp.sroa.5.0.extract.trunc, -16
  %.tr.i = trunc i32 %44 to i8
  %46 = shl i8 %.tr.i, 2
  %47 = and i8 %46, 12
  %conv186.i = or i8 %47, %45
  %call.i380.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull %raw.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380.i)
  %tobool188.not.i = icmp eq i32 %call.i380.i, 0
  br i1 %tobool188.not.i, label %cond.false217.i, label %do.end204.i

do.end204.i:                                      ; preds = %do.end179.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = and i8 %tmp.sroa.5.0.extract.trunc, 3
  %and208.i = zext i8 %48 to i32
  br label %if.end221.i

cond.false217.i:                                  ; preds = %do.end179.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %raw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %raw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i = icmp eq i32 %50, 0
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 true) #9, !range !157
  %sub.i.op.i.i = xor i32 %51, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  br label %if.end221.i

if.end221.i:                                      ; preds = %cond.false217.i, %do.end204.i
  %storemerge.i = phi i32 [ %and208.i, %do.end204.i ], [ %sub.i.i, %cond.false217.i ]
  %52 = ptrtoint ptr %raw.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge.i, ptr %raw.i, align 4
  %53 = trunc i32 %storemerge.i to i8
  %54 = and i8 %53, 3
  %conv253.i = or i8 %conv186.i, %54
  br label %sx9310_get_default_reg.exit

sw.bb254.i:                                       ; preds = %for.body
  %call.i381.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull %pos.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381.i)
  %tobool256.not.i = icmp eq i32 %call.i381.i, 0
  br i1 %tobool256.not.i, label %if.end258.i, label %sw.bb254.i.sx9310_get_default_reg.exit_crit_edge

sw.bb254.i.sx9310_get_default_reg.exit_crit_edge: ; preds = %sw.bb254.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_get_default_reg.exit

if.end258.i:                                      ; preds = %sw.bb254.i
  %55 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i382.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i382.i, label %if.end258.i..thread.i_crit_edge, label %cond.end271.i

if.end258.i..thread.i_crit_edge:                  ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i

cond.end271.i:                                    ; preds = %if.end258.i
  %57 = call i32 @llvm.ctlz.i32(i32 %56, i1 true) #9, !range !157
  %cond272.i = xor i32 %57, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond272.i)
  %cmp274.i = icmp ugt i32 %cond272.i, 3
  br i1 %cmp274.i, label %58, label %cond.end271.i..thread.i_crit_edge

cond.end271.i..thread.i_crit_edge:                ; preds = %cond.end271.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i

58:                                               ; preds = %cond.end271.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %cond272.i)
  %cmp281.i = icmp ult i32 %cond272.i, 11
  br i1 %cmp281.i, label %..thread.i_crit_edge, label %.do.end315.i_crit_edge

.do.end315.i_crit_edge:                           ; preds = %58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end315.i

..thread.i_crit_edge:                             ; preds = %58
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %cond.end271.i..thread.i_crit_edge, %if.end258.i..thread.i_crit_edge
  %59 = phi i32 [ %cond272.i, %..thread.i_crit_edge ], [ 3, %cond.end271.i..thread.i_crit_edge ], [ 3, %if.end258.i..thread.i_crit_edge ]
  br label %do.end315.i

do.end315.i:                                      ; preds = %.thread.i, %.do.end315.i_crit_edge
  %60 = phi i32 [ %59, %.thread.i ], [ 11, %.do.end315.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %56)
  %cmp287.i = icmp ugt i32 %56, 31
  %cond289.neg.i = select i1 %cmp287.i, i32 -4, i32 -3
  %sub290.i = add nsw i32 %60, %cond289.neg.i
  %61 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub290.i, ptr %pos.i, align 4
  %62 = and i8 %tmp.sroa.5.0.extract.trunc, -8
  %63 = trunc i32 %sub290.i to i8
  %64 = and i8 %63, 7
  %conv322.i = or i8 %64, %62
  br label %sx9310_get_default_reg.exit

sx9310_get_default_reg.exit:                      ; preds = %do.end315.i, %sw.bb254.i.sx9310_get_default_reg.exit_crit_edge, %if.end221.i, %if.else121.i, %if.then116.i, %if.then108.i, %if.then100.i, %if.then92.i, %if.then84.i, %if.then76.i, %if.end61.i.sx9310_get_default_reg.exit_crit_edge, %sw.bb57.i.sx9310_get_default_reg.exit_crit_edge, %if.then40.i, %if.then32.i, %if.then25.i, %for.end.i.sx9310_get_default_reg.exit_crit_edge, %for.end.thread.i, %if.end11.i.sx9310_get_default_reg.exit_crit_edge, %sw.bb.i.sx9310_get_default_reg.exit_crit_edge, %for.body.sx9310_get_default_reg.exit_crit_edge
  %tmp.sroa.5.1 = phi i8 [ %tmp.sroa.5.0.extract.trunc, %for.body.sx9310_get_default_reg.exit_crit_edge ], [ %conv322.i, %do.end315.i ], [ %tmp.sroa.5.0.extract.trunc, %sw.bb254.i.sx9310_get_default_reg.exit_crit_edge ], [ %conv253.i, %if.end221.i ], [ %31, %if.end61.i.sx9310_get_default_reg.exit_crit_edge ], [ %34, %if.then76.i ], [ %35, %if.then84.i ], [ %36, %if.then92.i ], [ %37, %if.then100.i ], [ %38, %if.then108.i ], [ %39, %if.then116.i ], [ %tmp.sroa.5.0.extract.trunc, %sw.bb57.i.sx9310_get_default_reg.exit_crit_edge ], [ %tmp.sroa.5.0, %sw.bb.i.sx9310_get_default_reg.exit_crit_edge ], [ %17, %for.end.thread.i ], [ %26, %for.end.i.sx9310_get_default_reg.exit_crit_edge ], [ %30, %if.then40.i ], [ %29, %if.then32.i ], [ %28, %if.then25.i ], [ %tmp.sroa.5.0, %if.end11.i.sx9310_get_default_reg.exit_crit_edge ], [ %spec.select, %if.else121.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %combined.i) #9
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %conv = zext i16 %tmp.sroa.0.0.extract.shift to i32
  %conv9 = zext i8 %tmp.sroa.5.1 to i32
  %call10 = call i32 @regmap_write(ptr noundef %66, i32 noundef %conv, i32 noundef %conv9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond, label %sx9310_get_default_reg.exit.cleanup_crit_edge

sx9310_get_default_reg.exit.cleanup_crit_edge:    ; preds = %sx9310_get_default_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %67 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %69 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %val.i, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl0.i) #9
  %70 = ptrtoint ptr %ctrl0.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %ctrl0.i, align 4, !annotation !156
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %72, i32 noundef 16, ptr noundef nonnull %ctrl0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i32 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i32, label %if.end.i33, label %for.end.sx9310_init_compensation.exit_crit_edge

for.end.sx9310_init_compensation.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_init_compensation.exit

if.end.i33:                                       ; preds = %for.end
  %73 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i, align 4
  %75 = ptrtoint ptr %ctrl0.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ctrl0.i, align 4
  %or.i = or i32 %76, 15
  %call3.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 16, i32 noundef %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i33.sx9310_init_compensation.exit_crit_edge

if.end.i33.sx9310_init_compensation.exit_crit_edge: ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_init_compensation.exit

if.end6.i:                                        ; preds = %if.end.i33
  %call7.i = call i64 @ktime_get() #9
  %add.i.i = add i64 %call7.i, 2000000000
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1211) #9
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %call1883.i = call i32 @regmap_read(ptr noundef %78, i32 noundef 2, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1883.i)
  %tobool19.not84.i = icmp eq i32 %call1883.i, 0
  br i1 %tobool19.not84.i, label %if.end6.i.lor.lhs.false.i_crit_edge, label %if.end6.i.lor.end.i_crit_edge

if.end6.i.lor.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

if.end6.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end6.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then32.i34.lor.lhs.false.i_crit_edge, %if.end6.i.lor.lhs.false.i_crit_edge
  %79 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val.i, align 4
  %and.i = and i32 %80, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call24.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call24.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call24.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i35, label %if.then32.i34

if.then32.i34:                                    ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #9
  %81 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %82, i32 noundef 2, ptr noundef nonnull %val.i) #9
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then32.i34.lor.lhs.false.i_crit_edge, label %if.then32.i34.lor.end.i_crit_edge

if.then32.i34.lor.end.i_crit_edge:                ; preds = %if.then32.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

if.then32.i34.lor.lhs.false.i_crit_edge:          ; preds = %if.then32.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

for.end.i35:                                      ; preds = %land.lhs.true.i
  %83 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i, align 4
  %call29.i = call i32 @regmap_read(ptr noundef %84, i32 noundef 2, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool34.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool34.not.i, label %for.end.i35.lor.rhs.i_crit_edge, label %for.end.i35.lor.end.i_crit_edge

for.end.i35.lor.end.i_crit_edge:                  ; preds = %for.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

for.end.i35.lor.rhs.i_crit_edge:                  ; preds = %for.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i35.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %85 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i, align 4
  %and35.i = and i32 %86, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end48.i, label %lor.rhs.i.do.end46.i_crit_edge

lor.rhs.i.do.end46.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i

lor.end.i:                                        ; preds = %for.end.i35.lor.end.i_crit_edge, %if.then32.i34.lor.end.i_crit_edge, %if.end6.i.lor.end.i_crit_edge
  %tobool34.not76.i = phi i32 [ %call29.i, %for.end.i35.lor.end.i_crit_edge ], [ %call1883.i, %if.end6.i.lor.end.i_crit_edge ], [ %call18.i, %if.then32.i34.lor.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %tobool34.not76.i)
  %cond.i = icmp eq i32 %tobool34.not76.i, -110
  br i1 %cond.i, label %lor.end.i.do.end46.i_crit_edge, label %lor.end.i.sx9310_init_compensation.exit_crit_edge

lor.end.i.sx9310_init_compensation.exit_crit_edge: ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_init_compensation.exit

lor.end.i.do.end46.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i

do.end46.i:                                       ; preds = %lor.end.i.do.end46.i_crit_edge, %lor.rhs.i.do.end46.i_crit_edge
  %client.i = getelementptr inbounds %struct.sx9310_data, ptr %68, i32 0, i32 1
  %87 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, i32 noundef %90) #12
  br label %sx9310_init_compensation.exit

if.end48.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i, align 4
  %93 = ptrtoint ptr %ctrl0.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ctrl0.i, align 4
  %call50.i = call i32 @regmap_write(ptr noundef %92, i32 noundef 16, i32 noundef %94) #9
  br label %sx9310_init_compensation.exit

sx9310_init_compensation.exit:                    ; preds = %if.end48.i, %do.end46.i, %lor.end.i.sx9310_init_compensation.exit_crit_edge, %if.end.i33.sx9310_init_compensation.exit_crit_edge, %for.end.sx9310_init_compensation.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end48.i ], [ %call1.i, %for.end.sx9310_init_compensation.exit_crit_edge ], [ %call3.i, %if.end.i33.sx9310_init_compensation.exit_crit_edge ], [ %tobool34.not76.i, %lor.end.i.sx9310_init_compensation.exit_crit_edge ], [ -110, %do.end46.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl0.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

cleanup:                                          ; preds = %sx9310_init_compensation.exit, %sx9310_get_default_reg.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sx9310_init_compensation.exit ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %sx9310_get_default_reg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trigger_enabled = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %trigger_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %trigger_enabled, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %trig = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_irq_thread_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %prox_changed.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !156
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %regmap = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !156
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %call1.i = call i64 @iio_get_time_ns(ptr noundef %private) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prox_changed.i) #9
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 1, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.sx9310_data, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38) #12
  br label %sx9310_push_events.exit

if.end.i:                                         ; preds = %if.then3
  %chan_prox_stat.i = getelementptr inbounds %struct.sx9310_data, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %chan_prox_stat.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan_prox_stat.i, align 8
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %xor.i = xor i32 %19, %17
  %chan_event.i = getelementptr inbounds %struct.sx9310_data, ptr %11, i32 0, i32 11
  %20 = ptrtoint ptr %chan_event.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan_event.i, align 8
  %and.i = and i32 %xor.i, %21
  %22 = ptrtoint ptr %prox_changed.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %prox_changed.i, align 4
  %call3.i = call i32 @_find_next_bit_be(ptr noundef nonnull %prox_changed.i, i32 noundef 4, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i)
  %cmp31.i = icmp ult i32 %call3.i, 4
  br i1 %cmp31.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %chan.032.i = phi i32 [ %call15.i, %for.body.i.for.body.i_crit_edge ], [ %call3.i, %if.end.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %shl.i = shl nuw nsw i32 1, %chan.032.i
  %and4.i = and i32 %24, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond.i = select i1 %tobool5.not.i, i32 1, i32 2
  %25 = zext i32 %cond.i to i64
  %shl6.i = shl nuw nsw i64 %25, 48
  %conv12.i = zext i32 %chan.032.i to i64
  %or8.i = or i64 %shl6.i, %conv12.i
  %or13.i = or i64 %or8.i, 34359738368
  %call14.i = call i32 @iio_push_event(ptr noundef %private, i64 noundef %or13.i, i64 noundef %call1.i) #9
  %add.i = add nuw nsw i32 %chan.032.i, 1
  %call15.i = call i32 @_find_next_bit_be(ptr noundef nonnull %prox_changed.i, i32 noundef 4, i32 noundef %add.i) #9
  %cmp.i = icmp ult i32 %call15.i, 4
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %28 = ptrtoint ptr %chan_prox_stat.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %chan_prox_stat.i, align 8
  br label %sx9310_push_events.exit

sx9310_push_events.exit:                          ; preds = %for.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prox_changed.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.end4

if.end4:                                          ; preds = %sx9310_push_events.exit, %if.end.if.end4_crit_edge
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %and5 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.then7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %completion = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 9
  call void @complete(ptr noundef %completion) #9
  br label %out

out:                                              ; preds = %if.then7, %if.end4.out_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !156
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %6, i32 noundef %8, i32 noundef 0) #9
  %9 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %10)
  %cmp33 = icmp ult i32 %call2, %10
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 3
  %buffer = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %bit.034 = phi i32 [ %call2, %for.body.lr.ph ], [ %call9, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels, align 8
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %12, i32 %bit.034, i32 1
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 48, i32 noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sx9310_read_prox_data.exit, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sx9310_read_prox_data.exit:                       ; preds = %for.body
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %address.i = getelementptr %struct.iio_chan_spec, ptr %12, i32 %bit.034, i32 3
  %19 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %address.i, align 4
  %call2.i = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %val, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %sx9310_read_prox_data.exit.out_crit_edge

sx9310_read_prox_data.exit.out_crit_edge:         ; preds = %sx9310_read_prox_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %sx9310_read_prox_data.exit
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val, align 2
  %inc = add i32 %i.035, 1
  %arrayidx6 = getelementptr [4 x i16], ptr %buffer, i32 0, i32 %i.035
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx6, align 2
  %24 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active_scan_mask, align 4
  %26 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.034, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef %25, i32 noundef %27, i32 noundef %add) #9
  %28 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call9, %29
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer10 = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %scan_timestamp.i, align 8, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i28 = icmp eq i8 %31, 0
  br i1 %tobool.not.i28, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %private, i32 0, i32 6
  %32 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %35, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer10, i32 %sub.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %33, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i29 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer10) #9
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %sx9310_read_prox_data.exit.out_crit_edge, %for.body.out_crit_edge
  call void @mutex_unlock(ptr noundef %3) #9
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %38) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %regval.i32 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %rawval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 15, label %sw.bb5
    i32 12, label %sw.bb11
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rawval.i) #9
  %5 = ptrtoint ptr %rawval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %rawval.i, align 2, !annotation !156
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  %chan_read.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %chan_read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_read.i.i, align 4
  %shl.i62.i = shl nuw i32 1, %7
  %or.i.i = or i32 %9, %shl.i62.i
  %chan_event.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %chan_event.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_event.i.i, align 8
  %or.i.i.i = or i32 %11, %or.i.i
  %or3.i.i.i = or i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i.i.i, i32 %or.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %or3.i.i.i, %or.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end3.if.end.i_crit_edge, label %if.then.i.i.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i.i.i:                                    ; preds = %if.end3
  %regmap.i.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef 15, i32 noundef %or.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end.i_crit_edge, label %if.then.i.i.i.out.i_crit_edge

if.then.i.i.i.out.i_crit_edge:                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i.i.if.end.i_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i.i.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge
  %14 = ptrtoint ptr %chan_read.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i.i, ptr %chan_read.i.i, align 4
  %15 = ptrtoint ptr %chan_event.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %chan_event.i.i, align 8
  %client.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i.i, align 4
  %irq1.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %irq1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end4.i_crit_edge, label %sx9310_enable_irq.exit.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

sx9310_enable_irq.exit.i:                         ; preds = %if.end.i
  %regmap.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 3, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %sx9310_enable_irq.exit.i.if.end4.i_crit_edge, label %sx9310_enable_irq.exit.i.out_put_channel.i_crit_edge

sx9310_enable_irq.exit.i.out_put_channel.i_crit_edge: ; preds = %sx9310_enable_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put_channel.i

sx9310_enable_irq.exit.i.if.end4.i_crit_edge:     ; preds = %sx9310_enable_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %sx9310_enable_irq.exit.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #9
  %22 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not.i = icmp eq i32 %25, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %completion.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 9
  %call8.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %completion.i) #9
  %26 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %completion.i, align 4
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i.i, align 4, !annotation !156
  %regmap.i63.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %regmap.i63.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i63.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 16, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i64.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i64.i, label %do.end12.i.i, label %if.else.i.sx9310_wait_for_sample.exit.i_crit_edge

if.else.i.sx9310_wait_for_sample.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_wait_for_sample.exit.i

do.end12.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i.i, align 4
  %and.i.i = lshr i32 %31, 4
  %shr.i65.i = and i32 %and.i.i, 15
  store i32 %shr.i65.i, ptr %val.i.i, align 4
  %arrayidx.i.i = getelementptr [16 x i32], ptr @sx9310_scan_period_table, i32 0, i32 %shr.i65.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  call void @msleep(i32 noundef %33) #9
  br label %sx9310_wait_for_sample.exit.i

sx9310_wait_for_sample.exit.i:                    ; preds = %do.end12.i.i, %if.else.i.sx9310_wait_for_sample.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %sx9310_wait_for_sample.exit.i, %if.then7.i
  %ret.0.i = phi i32 [ %call8.i, %if.then7.i ], [ %call.i.i, %sx9310_wait_for_sample.exit.i ]
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool13.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.out_disable_irq.i_crit_edge

if.end11.i.out_disable_irq.i_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_disable_irq.i

if.end15.i:                                       ; preds = %if.end11.i
  %regmap.i66.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %regmap.i66.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i66.i, align 4
  %36 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel.i, align 4
  %call.i67.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 48, i32 noundef %37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool.not.i68.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool.not.i68.i, label %sx9310_read_prox_data.exit.i, label %if.end15.i.out_disable_irq.i_crit_edge

if.end15.i.out_disable_irq.i_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_disable_irq.i

sx9310_read_prox_data.exit.i:                     ; preds = %if.end15.i
  %38 = ptrtoint ptr %regmap.i66.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i66.i, align 4
  %address.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %40 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %address.i.i, align 4
  %call2.i.i = call i32 @regmap_bulk_read(ptr noundef %39, i32 noundef %41, ptr noundef nonnull %rawval.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool17.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %sx9310_read_prox_data.exit.i.out_disable_irq.i_crit_edge

sx9310_read_prox_data.exit.i.out_disable_irq.i_crit_edge: ; preds = %sx9310_read_prox_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_disable_irq.i

if.end19.i:                                       ; preds = %sx9310_read_prox_data.exit.i
  %42 = ptrtoint ptr %rawval.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rawval.i, align 2
  %conv.i = zext i16 %43 to i32
  %44 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %address.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %45)
  %cmp.i = icmp eq i32 %45, 53
  %conv.i.i = select i1 %cmp.i, i32 20, i32 16
  %shl.i.i = shl i32 %conv.i, %conv.i.i
  %shr.i.i = ashr i32 %shl.i.i, %conv.i.i
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr.i.i, ptr %val, align 4
  %call22.i = call fastcc i32 @sx9310_disable_irq(ptr noundef %1, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end19.i.out_put_channel.i_crit_edge

if.end19.i.out_put_channel.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put_channel.i

if.end25.i:                                       ; preds = %if.end19.i
  %47 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel.i, align 4
  %call27.i = call fastcc i32 @sx9310_put_read_channel(ptr noundef %1, i32 noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.sx9310_read_proximity.exit_crit_edge, label %if.end25.i.out.i_crit_edge

if.end25.i.out.i_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end25.i.sx9310_read_proximity.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_proximity.exit

out_disable_irq.i:                                ; preds = %sx9310_read_prox_data.exit.i.out_disable_irq.i_crit_edge, %if.end15.i.out_disable_irq.i_crit_edge, %if.end11.i.out_disable_irq.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end11.i.out_disable_irq.i_crit_edge ], [ %call2.i.i, %sx9310_read_prox_data.exit.i.out_disable_irq.i_crit_edge ], [ %call.i67.i, %if.end15.i.out_disable_irq.i_crit_edge ]
  %49 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client.i.i, align 4
  %irq1.i72.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %irq1.i72.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq1.i72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i73.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i73.i, label %out_disable_irq.i.out_put_channel.i_crit_edge, label %if.end.i76.i

out_disable_irq.i.out_put_channel.i_crit_edge:    ; preds = %out_disable_irq.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put_channel.i

if.end.i76.i:                                     ; preds = %out_disable_irq.i
  call void @__sanitizer_cov_trace_pc() #11
  %regmap.i74.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %regmap.i74.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i74.i, align 4
  %call.i.i75.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 3, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %out_put_channel.i

out_put_channel.i:                                ; preds = %if.end.i76.i, %out_disable_irq.i.out_put_channel.i_crit_edge, %if.end19.i.out_put_channel.i_crit_edge, %sx9310_enable_irq.exit.i.out_put_channel.i_crit_edge
  %ret.2.i = phi i32 [ %call.i.i.i, %sx9310_enable_irq.exit.i.out_put_channel.i_crit_edge ], [ %call22.i, %if.end19.i.out_put_channel.i_crit_edge ], [ %ret.1.i, %out_disable_irq.i.out_put_channel.i_crit_edge ], [ %ret.1.i, %if.end.i76.i ]
  %55 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel.i, align 4
  %57 = ptrtoint ptr %chan_read.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chan_read.i.i, align 4
  %shl.i79.i = shl nuw i32 1, %56
  %neg.i.i = xor i32 %shl.i79.i, -1
  %and.i80.i = and i32 %58, %neg.i.i
  %59 = ptrtoint ptr %chan_event.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan_event.i.i, align 8
  %or.i.i82.i = or i32 %60, %and.i80.i
  %or3.i.i83.i = or i32 %60, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i.i83.i, i32 %or.i.i82.i)
  %cmp.not.i.i84.i = icmp eq i32 %or3.i.i83.i, %or.i.i82.i
  br i1 %cmp.not.i.i84.i, label %out_put_channel.i.if.end5.i.i89.i_crit_edge, label %if.then.i.i88.i

out_put_channel.i.if.end5.i.i89.i_crit_edge:      ; preds = %out_put_channel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i89.i

if.then.i.i88.i:                                  ; preds = %out_put_channel.i
  %regmap.i.i85.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %regmap.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i.i85.i, align 4
  %call.i.i.i86.i = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 16, i32 noundef 15, i32 noundef %or.i.i82.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i86.i)
  %tobool.not.i.i87.i = icmp eq i32 %call.i.i.i86.i, 0
  br i1 %tobool.not.i.i87.i, label %if.then.i.i88.i.if.end5.i.i89.i_crit_edge, label %if.then.i.i88.i.out.i_crit_edge

if.then.i.i88.i.out.i_crit_edge:                  ; preds = %if.then.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i88.i.if.end5.i.i89.i_crit_edge:        ; preds = %if.then.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i89.i

if.end5.i.i89.i:                                  ; preds = %if.then.i.i88.i.if.end5.i.i89.i_crit_edge, %out_put_channel.i.if.end5.i.i89.i_crit_edge
  %63 = ptrtoint ptr %chan_read.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and.i80.i, ptr %chan_read.i.i, align 4
  %64 = ptrtoint ptr %chan_event.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %60, ptr %chan_event.i.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.end5.i.i89.i, %if.then.i.i88.i.out.i_crit_edge, %if.end25.i.out.i_crit_edge, %if.then.i.i.i.out.i_crit_edge
  %ret.3.i = phi i32 [ %call27.i, %if.end25.i.out.i_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.out.i_crit_edge ], [ %ret.2.i, %if.then.i.i88.i.out.i_crit_edge ], [ %ret.2.i, %if.end5.i.i89.i ]
  br label %sx9310_read_proximity.exit

sx9310_read_proximity.exit:                       ; preds = %out.i, %if.end25.i.sx9310_read_proximity.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.3.i, %out.i ], [ 1, %if.end25.i.sx9310_read_proximity.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rawval.i) #9
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #9
  %65 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %regval.i, align 4, !annotation !156
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %67, i32 noundef 19, ptr noundef nonnull %regval.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i30, label %if.end9.sx9310_read_gain.exit_crit_edge

if.end9.sx9310_read_gain.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_gain.exit

if.end.i30:                                       ; preds = %if.end9
  %channel.i29 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %68 = ptrtoint ptr %channel.i29 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel.i29, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %69, label %if.end.i30.sx9310_read_gain.exit_crit_edge [
    i32 0, label %if.end.i30.do.end12.i_crit_edge
    i32 3, label %if.end.i30.do.end12.i_crit_edge39
    i32 1, label %if.end.i30.do.end28.i_crit_edge
    i32 2, label %if.end.i30.do.end28.i_crit_edge40
  ]

if.end.i30.do.end28.i_crit_edge40:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28.i

if.end.i30.do.end28.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28.i

if.end.i30.do.end12.i_crit_edge39:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

if.end.i30.do.end12.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

if.end.i30.sx9310_read_gain.exit_crit_edge:       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_gain.exit

do.end12.i:                                       ; preds = %if.end.i30.do.end12.i_crit_edge, %if.end.i30.do.end12.i_crit_edge39
  %71 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %regval.i, align 4
  %and.i = lshr i32 %72, 2
  br label %sw.epilog.i

do.end28.i:                                       ; preds = %if.end.i30.do.end28.i_crit_edge, %if.end.i30.do.end28.i_crit_edge40
  %73 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %regval.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end28.i, %do.end12.i
  %gain.0.in.i = phi i32 [ %74, %do.end28.i ], [ %and.i, %do.end12.i ]
  %gain.0.i = and i32 %gain.0.in.i, 3
  %shl.i = shl nuw nsw i32 1, %gain.0.i
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl.i, ptr %val, align 4
  br label %sx9310_read_gain.exit

sx9310_read_gain.exit:                            ; preds = %sw.epilog.i, %if.end.i30.sx9310_read_gain.exit_crit_edge, %if.end9.sx9310_read_gain.exit_crit_edge
  %retval.0.i31 = phi i32 [ 1, %sw.epilog.i ], [ %call.i, %if.end9.sx9310_read_gain.exit_crit_edge ], [ -22, %if.end.i30.sx9310_read_gain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #9
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i32) #9
  %76 = ptrtoint ptr %regval.i32 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %regval.i32, align 4, !annotation !156
  %regmap.i33 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %77 = ptrtoint ptr %regmap.i33 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i33, align 4
  %call.i34 = call i32 @regmap_read(ptr noundef %78, i32 noundef 16, ptr noundef nonnull %regval.i32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %do.end12.i37, label %sw.bb11.sx9310_read_samp_freq.exit_crit_edge

sw.bb11.sx9310_read_samp_freq.exit_crit_edge:     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_samp_freq.exit

do.end12.i37:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %regval.i32 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %regval.i32, align 4
  %and.i36 = lshr i32 %80, 4
  %shr.i = and i32 %and.i36, 15
  %arrayidx.i = getelementptr [16 x %struct.anon.88], ptr @sx9310_samp_freq_table, i32 0, i32 %shr.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i, align 4
  %83 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %val, align 4
  %val215.i = getelementptr [16 x %struct.anon.88], ptr @sx9310_samp_freq_table, i32 0, i32 %shr.i, i32 1
  %84 = ptrtoint ptr %val215.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val215.i, align 4
  %86 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %val2, align 4
  br label %sx9310_read_samp_freq.exit

sx9310_read_samp_freq.exit:                       ; preds = %do.end12.i37, %sw.bb11.sx9310_read_samp_freq.exit_crit_edge
  %retval.0.i38 = phi i32 [ 2, %do.end12.i37 ], [ %call.i34, %sw.bb11.sx9310_read_samp_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i32) #9
  br label %cleanup

cleanup:                                          ; preds = %sx9310_read_samp_freq.exit, %sx9310_read_gain.exit, %sw.bb5.cleanup_crit_edge, %sx9310_read_proximity.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i38, %sx9310_read_samp_freq.exit ], [ %retval.0.i31, %sx9310_read_gain.exit ], [ %retval.0.i, %sx9310_read_proximity.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sx9310_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mask)
  %cond = icmp eq i32 %mask, 15
  %or.cond = and i1 %cond, %cmp.not
  br i1 %or.cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %length, align 4
  %4 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sx9310_gain_vals, ptr %vals, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 12, label %for.body.i
    i32 15, label %cond.false2.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %val)
  %cmp2.i = icmp eq i32 %val, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 0
  %or.cond = and i1 %cmp2.i, %cmp5.i
  br i1 %or.cond, label %for.body.i.if.end8.i_crit_edge, label %for.inc.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %val)
  %cmp2.i.1 = icmp eq i32 %val, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 666666, i32 %val2)
  %cmp5.i.1 = icmp eq i32 %val2, 666666
  %or.cond22 = and i1 %cmp2.i.1, %cmp5.i.1
  br i1 %or.cond22, label %for.inc.i.if.end8.i_crit_edge, label %for.inc.i.1

for.inc.i.if.end8.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %val)
  %cmp2.i.2 = icmp eq i32 %val, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 333333, i32 %val2)
  %cmp5.i.2 = icmp eq i32 %val2, 333333
  %or.cond23 = and i1 %cmp2.i.2, %cmp5.i.2
  br i1 %or.cond23, label %for.inc.i.1.if.end8.i_crit_edge, label %for.inc.i.2

for.inc.i.1.if.end8.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %val)
  %cmp2.i.3 = icmp eq i32 %val, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 222222, i32 %val2)
  %cmp5.i.3 = icmp eq i32 %val2, 222222
  %or.cond24 = and i1 %cmp2.i.3, %cmp5.i.3
  br i1 %or.cond24, label %for.inc.i.2.if.end8.i_crit_edge, label %for.inc.i.3

for.inc.i.2.if.end8.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %val)
  %cmp2.i.4 = icmp eq i32 %val, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 666666, i32 %val2)
  %cmp5.i.4 = icmp eq i32 %val2, 666666
  %or.cond25 = and i1 %cmp2.i.4, %cmp5.i.4
  br i1 %or.cond25, label %for.inc.i.3.if.end8.i_crit_edge, label %for.inc.i.4

for.inc.i.3.if.end8.i_crit_edge:                  ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.4:                                      ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %val)
  %cmp2.i.5 = icmp eq i32 %val, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 111111, i32 %val2)
  %cmp5.i.5 = icmp eq i32 %val2, 111111
  %or.cond26 = and i1 %cmp2.i.5, %cmp5.i.5
  br i1 %or.cond26, label %for.inc.i.4.if.end8.i_crit_edge, label %for.inc.i.5

for.inc.i.4.if.end8.i_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.5:                                      ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %val)
  %cmp2.i.6 = icmp eq i32 %val, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 333333, i32 %val2)
  %cmp5.i.6 = icmp eq i32 %val2, 333333
  %or.cond27 = and i1 %cmp2.i.6, %cmp5.i.6
  br i1 %or.cond27, label %for.inc.i.5.if.end8.i_crit_edge, label %for.inc.i.6

for.inc.i.5.if.end8.i_crit_edge:                  ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.6:                                      ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %val)
  %cmp2.i.7 = icmp eq i32 %val, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.7 = icmp eq i32 %val2, 0
  %or.cond28 = and i1 %cmp2.i.7, %cmp5.i.7
  br i1 %or.cond28, label %for.inc.i.6.if.end8.i_crit_edge, label %for.inc.i.7

for.inc.i.6.if.end8.i_crit_edge:                  ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.7:                                      ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp2.i.8 = icmp eq i32 %val, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i.8 = icmp eq i32 %val2, 500000
  %or.cond29 = and i1 %cmp2.i.8, %cmp5.i.8
  br i1 %or.cond29, label %for.inc.i.7.if.end8.i_crit_edge, label %for.inc.i.8

for.inc.i.7.if.end8.i_crit_edge:                  ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.8:                                      ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp2.i.9 = icmp eq i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 666666, i32 %val2)
  %cmp5.i.9 = icmp eq i32 %val2, 666666
  %or.cond30 = and i1 %cmp2.i.9, %cmp5.i.9
  br i1 %or.cond30, label %for.inc.i.8.if.end8.i_crit_edge, label %for.inc.i.9

for.inc.i.8.if.end8.i_crit_edge:                  ; preds = %for.inc.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.9:                                      ; preds = %for.inc.i.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp2.i.10 = icmp eq i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.i.10 = icmp eq i32 %val2, 250000
  %or.cond31 = and i1 %cmp2.i.10, %cmp5.i.10
  br i1 %or.cond31, label %for.inc.i.9.if.end8.i_crit_edge, label %for.inc.i.10

for.inc.i.9.if.end8.i_crit_edge:                  ; preds = %for.inc.i.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.10:                                     ; preds = %for.inc.i.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp2.i.11 = icmp eq i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.11 = icmp eq i32 %val2, 0
  %or.cond32 = and i1 %cmp2.i.11, %cmp5.i.11
  br i1 %or.cond32, label %for.inc.i.10.if.end8.i_crit_edge, label %for.inc.i.11

for.inc.i.10.if.end8.i_crit_edge:                 ; preds = %for.inc.i.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.11:                                     ; preds = %for.inc.i.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i.12 = icmp eq i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i.12 = icmp eq i32 %val2, 500000
  %or.cond33 = and i1 %cmp2.i.12, %cmp5.i.12
  br i1 %or.cond33, label %for.inc.i.11.if.end8.i_crit_edge, label %for.inc.i.12

for.inc.i.11.if.end8.i_crit_edge:                 ; preds = %for.inc.i.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.12:                                     ; preds = %for.inc.i.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i.13 = icmp eq i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 333333, i32 %val2)
  %cmp5.i.13 = icmp eq i32 %val2, 333333
  %or.cond34 = and i1 %cmp2.i.13, %cmp5.i.13
  br i1 %or.cond34, label %for.inc.i.12.if.end8.i_crit_edge, label %for.inc.i.13

for.inc.i.12.if.end8.i_crit_edge:                 ; preds = %for.inc.i.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.13:                                     ; preds = %for.inc.i.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i.14 = icmp eq i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.i.14 = icmp eq i32 %val2, 250000
  %or.cond35 = and i1 %cmp2.i.14, %cmp5.i.14
  br i1 %or.cond35, label %for.inc.i.13.if.end8.i_crit_edge, label %for.inc.i.14

for.inc.i.13.if.end8.i_crit_edge:                 ; preds = %for.inc.i.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.14:                                     ; preds = %for.inc.i.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i.15 = icmp eq i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %val2)
  %cmp5.i.15 = icmp eq i32 %val2, 200000
  %or.cond36 = and i1 %cmp2.i.15, %cmp5.i.15
  br i1 %or.cond36, label %for.inc.i.14.if.end8.i_crit_edge, label %for.inc.i.14.cleanup_crit_edge

for.inc.i.14.cleanup_crit_edge:                   ; preds = %for.inc.i.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i.14.if.end8.i_crit_edge:                 ; preds = %for.inc.i.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.inc.i.14.if.end8.i_crit_edge, %for.inc.i.13.if.end8.i_crit_edge, %for.inc.i.12.if.end8.i_crit_edge, %for.inc.i.11.if.end8.i_crit_edge, %for.inc.i.10.if.end8.i_crit_edge, %for.inc.i.9.if.end8.i_crit_edge, %for.inc.i.8.if.end8.i_crit_edge, %for.inc.i.7.if.end8.i_crit_edge, %for.inc.i.6.if.end8.i_crit_edge, %for.inc.i.5.if.end8.i_crit_edge, %for.inc.i.4.if.end8.i_crit_edge, %for.inc.i.3.if.end8.i_crit_edge, %for.inc.i.2.if.end8.i_crit_edge, %for.inc.i.1.if.end8.i_crit_edge, %for.inc.i.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge
  %i.040.i.lcssa = phi i32 [ 0, %for.body.i.if.end8.i_crit_edge ], [ 16, %for.inc.i.if.end8.i_crit_edge ], [ 32, %for.inc.i.1.if.end8.i_crit_edge ], [ 48, %for.inc.i.2.if.end8.i_crit_edge ], [ 64, %for.inc.i.3.if.end8.i_crit_edge ], [ 80, %for.inc.i.4.if.end8.i_crit_edge ], [ 96, %for.inc.i.5.if.end8.i_crit_edge ], [ 112, %for.inc.i.6.if.end8.i_crit_edge ], [ 128, %for.inc.i.7.if.end8.i_crit_edge ], [ 144, %for.inc.i.8.if.end8.i_crit_edge ], [ 160, %for.inc.i.9.if.end8.i_crit_edge ], [ 176, %for.inc.i.10.if.end8.i_crit_edge ], [ 192, %for.inc.i.11.if.end8.i_crit_edge ], [ 208, %for.inc.i.12.if.end8.i_crit_edge ], [ 224, %for.inc.i.13.if.end8.i_crit_edge ], [ 240, %for.inc.i.14.if.end8.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 16, i32 noundef 240, i32 noundef %i.040.i.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup.sink.split

cond.false2.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i.i = icmp eq i32 %val, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #9, !range !157
  %sub.i.op.i.i = xor i32 %7, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %9, label %cond.false2.i.cleanup_crit_edge [
    i32 0, label %cond.false2.i.do.end18.i_crit_edge
    i32 3, label %cond.false2.i.do.end18.i_crit_edge37
    i32 1, label %cond.false2.i.do.end41.i_crit_edge
    i32 2, label %cond.false2.i.do.end41.i_crit_edge38
  ]

cond.false2.i.do.end41.i_crit_edge38:             ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

cond.false2.i.do.end41.i_crit_edge:               ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

cond.false2.i.do.end18.i_crit_edge37:             ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18.i

cond.false2.i.do.end18.i_crit_edge:               ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18.i

cond.false2.i.cleanup_crit_edge:                  ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18.i:                                       ; preds = %cond.false2.i.do.end18.i_crit_edge, %cond.false2.i.do.end18.i_crit_edge37
  %shl.i10 = shl nsw i32 %sub.i.i, 2
  %and19.i = and i32 %shl.i10, 12
  br label %sw.epilog.i

do.end41.i:                                       ; preds = %cond.false2.i.do.end41.i_crit_edge, %cond.false2.i.do.end41.i_crit_edge38
  %and44.i = and i32 %sub.i.i, 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end41.i, %do.end18.i
  %mask.0.i = phi i32 [ 3, %do.end41.i ], [ 12, %do.end18.i ]
  %gain.0.i = phi i32 [ %and44.i, %do.end41.i ], [ %and19.i, %do.end18.i ]
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %regmap.i11 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i11, align 4
  %call.i.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 19, i32 noundef %mask.0.i, i32 noundef %gain.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.i, %if.end8.i
  %retval.0.ph = phi i32 [ %call.i.i12, %sw.epilog.i ], [ %call.i.i, %if.end8.i ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.false2.i.cleanup_crit_edge, %for.inc.i.14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %cond.false2.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %for.inc.i.14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sx9310_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chan_event = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_event, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = lshr i32 %3, %5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chan_event = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_event, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = lshr i32 %3, %5
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %state)
  %cmp = icmp eq i32 %7, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool2.not = icmp eq i32 %state, 0
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %chan_read.i74 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %chan_read.i74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_read.i74, align 4
  %12 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_event, align 8
  %shl.i76 = shl nuw i32 1, %9
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %or.i = or i32 %13, %shl.i76
  %or.i.i = or i32 %or.i, %11
  %or3.i.i = or i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i.i, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %or3.i.i, %or.i.i
  br i1 %cmp.not.i.i, label %if.then3.if.end8_crit_edge, label %if.then.i.i

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then.i.i:                                      ; preds = %if.then3
  %regmap.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 16, i32 noundef 15, i32 noundef %or.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end8_crit_edge, label %if.then.i.i.out_unlock_crit_edge

if.then.i.i.out_unlock_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then.i.i.if.end8_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i.if.end8_crit_edge, %if.then3.if.end8_crit_edge
  %16 = ptrtoint ptr %chan_read.i74 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %chan_read.i74, align 4
  %17 = ptrtoint ptr %chan_event to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %chan_event, align 8
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel, align 4
  %shl11 = shl nuw i32 1, %19
  %neg = xor i32 %shl11, -1
  %and12 = and i32 %or.i, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end8.out_unlock_crit_edge

if.end8.out_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then14:                                        ; preds = %if.end8
  %client.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %irq1.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then14.out_unlock_crit_edge, label %sx9310_enable_irq.exit

if.then14.out_unlock_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

sx9310_enable_irq.exit:                           ; preds = %if.then14
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 3, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not, label %sx9310_enable_irq.exit.out_unlock_crit_edge, label %if.then17

sx9310_enable_irq.exit.out_unlock_crit_edge:      ; preds = %sx9310_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then17:                                        ; preds = %sx9310_enable_irq.exit
  %26 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel, align 4
  %28 = ptrtoint ptr %chan_read.i74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan_read.i74, align 4
  %30 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan_event, align 8
  %shl.i64 = shl nuw i32 1, %27
  %neg.i = xor i32 %shl.i64, -1
  %and.i = and i32 %31, %neg.i
  %or.i.i65 = or i32 %and.i, %29
  %or3.i.i66 = or i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i.i66, i32 %or.i.i65)
  %cmp.not.i.i67 = icmp eq i32 %or3.i.i66, %or.i.i65
  br i1 %cmp.not.i.i67, label %if.then17.if.end5.i.i72_crit_edge, label %if.then.i.i71

if.then17.if.end5.i.i72_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i72

if.then.i.i71:                                    ; preds = %if.then17
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 16, i32 noundef 15, i32 noundef %or.i.i65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %call.i.i.i69, 0
  br i1 %tobool.not.i.i70, label %if.then.i.i71.if.end5.i.i72_crit_edge, label %if.then.i.i71.out_unlock_crit_edge

if.then.i.i71.out_unlock_crit_edge:               ; preds = %if.then.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then.i.i71.if.end5.i.i72_crit_edge:            ; preds = %if.then.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i72

if.end5.i.i72:                                    ; preds = %if.then.i.i71.if.end5.i.i72_crit_edge, %if.then17.if.end5.i.i72_crit_edge
  %34 = ptrtoint ptr %chan_read.i74 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %chan_read.i74, align 4
  %35 = ptrtoint ptr %chan_event to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i, ptr %chan_event, align 8
  br label %out_unlock

if.else:                                          ; preds = %if.end
  %neg.i77 = xor i32 %shl.i76, -1
  %and.i78 = and i32 %13, %neg.i77
  %or.i.i79 = or i32 %and.i78, %11
  %or3.i.i80 = or i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i.i80, i32 %or.i.i79)
  %cmp.not.i.i81 = icmp eq i32 %or3.i.i80, %or.i.i79
  br i1 %cmp.not.i.i81, label %if.else.if.end26_crit_edge, label %if.then.i.i85

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then.i.i85:                                    ; preds = %if.else
  %regmap.i.i82 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %regmap.i.i82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i82, align 4
  %call.i.i.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 16, i32 noundef 15, i32 noundef %or.i.i79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %call.i.i.i83, 0
  br i1 %tobool.not.i.i84, label %if.then.i.i85.if.end26_crit_edge, label %if.then.i.i85.out_unlock_crit_edge

if.then.i.i85.out_unlock_crit_edge:               ; preds = %if.then.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then.i.i85.if.end26_crit_edge:                 ; preds = %if.then.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %if.then.i.i85.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %38 = ptrtoint ptr %chan_read.i74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %11, ptr %chan_read.i74, align 4
  %39 = ptrtoint ptr %chan_event to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i78, ptr %chan_event, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool28.not = icmp eq i32 %and.i78, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.out_unlock_crit_edge

if.end26.out_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then29:                                        ; preds = %if.end26
  %client.i89 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %client.i89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client.i89, align 4
  %irq1.i90 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %irq1.i90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq1.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i91 = icmp eq i32 %43, 0
  br i1 %tobool.not.i91, label %if.then29.out_unlock_crit_edge, label %sx9310_disable_irq.exit

if.then29.out_unlock_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

sx9310_disable_irq.exit:                          ; preds = %if.then29
  %regmap.i92 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %regmap.i92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i92, align 4
  %call.i.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 3, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool31.not = icmp eq i32 %call.i.i93, 0
  br i1 %tobool31.not, label %sx9310_disable_irq.exit.out_unlock_crit_edge, label %if.then32

sx9310_disable_irq.exit.out_unlock_crit_edge:     ; preds = %sx9310_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then32:                                        ; preds = %sx9310_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel, align 4
  %call34 = tail call fastcc i32 @sx9310_get_event_channel(ptr noundef %1, i32 noundef %47)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then32, %sx9310_disable_irq.exit.out_unlock_crit_edge, %if.then29.out_unlock_crit_edge, %if.end26.out_unlock_crit_edge, %if.then.i.i85.out_unlock_crit_edge, %if.end5.i.i72, %if.then.i.i71.out_unlock_crit_edge, %sx9310_enable_irq.exit.out_unlock_crit_edge, %if.then14.out_unlock_crit_edge, %if.end8.out_unlock_crit_edge, %if.then.i.i.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end8.out_unlock_crit_edge ], [ 0, %sx9310_enable_irq.exit.out_unlock_crit_edge ], [ 0, %if.end26.out_unlock_crit_edge ], [ %call.i.i93, %if.then32 ], [ 0, %sx9310_disable_irq.exit.out_unlock_crit_edge ], [ %call.i.i.i, %if.then.i.i.out_unlock_crit_edge ], [ %call.i.i, %if.then.i.i71.out_unlock_crit_edge ], [ %call.i.i, %if.end5.i.i72 ], [ %call.i.i.i83, %if.then.i.i85.out_unlock_crit_edge ], [ 0, %if.then14.out_unlock_crit_edge ], [ 0, %if.then29.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_read_event_val(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  %regval.i.i = alloca i32, align 4
  %regval.i35 = alloca i32, align 4
  %regval.i24 = alloca i32, align 4
  %regval.i19 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #9
  %5 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %regval.i, align 4, !annotation !156
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %switch.lookup, label %sw.bb.sx9310_read_thresh.exit_crit_edge

sw.bb.sx9310_read_thresh.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_thresh.exit

switch.lookup:                                    ; preds = %sw.bb
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sx9310_read_event_val, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %switch.load, ptr noundef nonnull %regval.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end15.i, label %switch.lookup.sx9310_read_thresh.exit_crit_edge

switch.lookup.sx9310_read_thresh.exit_crit_edge:  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_thresh.exit

do.end15.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regval.i, align 4
  %and.i = lshr i32 %13, 3
  %shr.i = and i32 %and.i, 31
  %arrayidx.i = getelementptr [32 x i32], ptr @sx9310_pthresh_codes, i32 0, i32 %shr.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %sx9310_read_thresh.exit

sx9310_read_thresh.exit:                          ; preds = %do.end15.i, %switch.lookup.sx9310_read_thresh.exit_crit_edge, %sw.bb.sx9310_read_thresh.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %do.end15.i ], [ %call1.i, %switch.lookup.sx9310_read_thresh.exit_crit_edge ], [ -22, %sw.bb.sx9310_read_thresh.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %17 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %dir, label %sw.bb3.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i19) #9
  %18 = ptrtoint ptr %regval.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %regval.i19, align 4, !annotation !156
  %regmap.i20 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %regmap.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i20, align 4
  %call.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 26, ptr noundef nonnull %regval.i19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %do.end12.i, label %sw.bb4.sx9310_read_far_debounce.exit_crit_edge

sw.bb4.sx9310_read_far_debounce.exit_crit_edge:   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_far_debounce.exit

do.end12.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %regval.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regval.i19, align 4
  %and.i22 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool13.not.i = icmp eq i32 %and.i22, 0
  %shl.i = shl nuw nsw i32 1, %and.i22
  %storemerge.i = select i1 %tobool13.not.i, i32 0, i32 %shl.i
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge.i, ptr %val, align 4
  br label %sx9310_read_far_debounce.exit

sx9310_read_far_debounce.exit:                    ; preds = %do.end12.i, %sw.bb4.sx9310_read_far_debounce.exit_crit_edge
  %retval.0.i23 = phi i32 [ 1, %do.end12.i ], [ %call.i, %sw.bb4.sx9310_read_far_debounce.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i19) #9
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i24) #9
  %24 = ptrtoint ptr %regval.i24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %regval.i24, align 4, !annotation !156
  %regmap.i25 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i25, align 4
  %call.i26 = call i32 @regmap_read(ptr noundef %26, i32 noundef 26, ptr noundef nonnull %regval.i24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %do.end12.i33, label %sw.bb6.sx9310_read_close_debounce.exit_crit_edge

sw.bb6.sx9310_read_close_debounce.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_close_debounce.exit

do.end12.i33:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %regval.i24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval.i24, align 4
  %and.i28 = lshr i32 %28, 2
  %shr.i29 = and i32 %and.i28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i29)
  %tobool13.not.i30 = icmp eq i32 %shr.i29, 0
  %shl.i31 = shl nuw nsw i32 1, %shr.i29
  %storemerge.i32 = select i1 %tobool13.not.i30, i32 0, i32 %shl.i31
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i32, ptr %val, align 4
  br label %sx9310_read_close_debounce.exit

sx9310_read_close_debounce.exit:                  ; preds = %do.end12.i33, %sw.bb6.sx9310_read_close_debounce.exit_crit_edge
  %retval.0.i34 = phi i32 [ 1, %do.end12.i33 ], [ %call.i26, %sw.bb6.sx9310_read_close_debounce.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i24) #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i35) #9
  %30 = ptrtoint ptr %regval.i35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %regval.i35, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %31 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !156
  %channel.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %32 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %switch.lookup43, label %sx9310_read_thresh.exit.thread.i

sx9310_read_thresh.exit.thread.i:                 ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %sx9310_read_hysteresis.exit

switch.lookup43:                                  ; preds = %sw.bb8
  %switch.gep44 = getelementptr inbounds [4 x i32], ptr @switch.table.sx9310_read_event_val.41, i32 0, i32 %33
  %35 = ptrtoint ptr %switch.gep44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load45 = load i32, ptr %switch.gep44, align 4
  %regmap.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %37, i32 noundef %switch.load45, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %sx9310_read_thresh.exit.thread29.i, label %sx9310_read_thresh.exit.i

sx9310_read_thresh.exit.thread29.i:               ; preds = %switch.lookup43
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regval.i.i, align 4
  %and.i.i = lshr i32 %39, 3
  %shr.i.i = and i32 %and.i.i, 31
  %arrayidx.i.i = getelementptr [32 x i32], ptr @sx9310_pthresh_codes, i32 0, i32 %shr.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %if.end.i38

sx9310_read_thresh.exit.i:                        ; preds = %switch.lookup43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %sx9310_read_thresh.exit.i.sx9310_read_hysteresis.exit_crit_edge, label %sx9310_read_thresh.exit.i.if.end.i38_crit_edge

sx9310_read_thresh.exit.i.if.end.i38_crit_edge:   ; preds = %sx9310_read_thresh.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i38

sx9310_read_thresh.exit.i.sx9310_read_hysteresis.exit_crit_edge: ; preds = %sx9310_read_thresh.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_hysteresis.exit

if.end.i38:                                       ; preds = %sx9310_read_thresh.exit.i.if.end.i38_crit_edge, %sx9310_read_thresh.exit.thread29.i
  %pthresh.033.i = phi i32 [ %41, %sx9310_read_thresh.exit.thread29.i ], [ -1, %sx9310_read_thresh.exit.i.if.end.i38_crit_edge ]
  %42 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i.i, align 4
  %call1.i36 = call i32 @regmap_read(ptr noundef %43, i32 noundef 26, ptr noundef nonnull %regval.i35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %do.end15.i41, label %if.end.i38.sx9310_read_hysteresis.exit_crit_edge

if.end.i38.sx9310_read_hysteresis.exit_crit_edge: ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_read_hysteresis.exit

do.end15.i41:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %regval.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %regval.i35, align 4
  %and.i39 = lshr i32 %45, 4
  %shr.i40 = and i32 %and.i39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i40)
  %tobool16.not.i = icmp eq i32 %shr.i40, 0
  %shr.op.i = sub nuw nsw i32 5, %shr.i40
  %sub.i = select i1 %tobool16.not.i, i32 0, i32 %shr.op.i
  %shr19.i = lshr i32 %pthresh.033.i, %sub.i
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr19.i, ptr %val, align 4
  br label %sx9310_read_hysteresis.exit

sx9310_read_hysteresis.exit:                      ; preds = %do.end15.i41, %if.end.i38.sx9310_read_hysteresis.exit_crit_edge, %sx9310_read_thresh.exit.i.sx9310_read_hysteresis.exit_crit_edge, %sx9310_read_thresh.exit.thread.i
  %retval.0.i42 = phi i32 [ 1, %do.end15.i41 ], [ %call1.i.i, %sx9310_read_thresh.exit.i.sx9310_read_hysteresis.exit_crit_edge ], [ %call1.i36, %if.end.i38.sx9310_read_hysteresis.exit_crit_edge ], [ -22, %sx9310_read_thresh.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i35) #9
  br label %cleanup

cleanup:                                          ; preds = %sx9310_read_hysteresis.exit, %sx9310_read_close_debounce.exit, %sx9310_read_far_debounce.exit, %sw.bb3.cleanup_crit_edge, %sx9310_read_thresh.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i42, %sx9310_read_hysteresis.exit ], [ %retval.0.i34, %sx9310_read_close_debounce.exit ], [ %retval.0.i23, %sx9310_read_far_debounce.exit ], [ %retval.0.i, %sx9310_read_thresh.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_write_event_val(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %switch.lookup, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sx9310_write_event_val, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %switch.lookup
  %i.045.i = phi i32 [ 0, %switch.lookup ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i32], ptr @sx9310_pthresh_codes, i32 0, i32 %i.045.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp2.i = icmp eq i32 %10, %val
  br i1 %cmp2.i, label %do.end21.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nsw i32 %i.045.i, 3
  %and22.i = and i32 %shl.i, 248
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %switch.load, i32 noundef 248, i32 noundef %and22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %13 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %dir, label %sw.bb3.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i = icmp sgt i32 %val, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #9, !range !157
  %sub.i.op.i.i = xor i32 %14, 31
  %val.addr.0.i = select i1 %cmp.i, i32 %sub.i.op.i.i, i32 %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %val.addr.0.i)
  %tobool.not.i19 = icmp ult i32 %val.addr.0.i, 4
  br i1 %tobool.not.i19, label %do.body27.i, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body27.i:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %regmap.i20 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %regmap.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i20, align 4
  %call.i.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 26, i32 noundef 3, i32 noundef %val.addr.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i23 = icmp sgt i32 %val, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 true) #9, !range !157
  %sub.i.op.i.i29 = xor i32 %17, 31
  %val.addr.0.i31 = select i1 %cmp.i23, i32 %sub.i.op.i.i29, i32 %val
  %shl.i32 = shl i32 %val.addr.0.i31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %shl.i32)
  %tobool.not.i33 = icmp ult i32 %shl.i32, 16
  br i1 %tobool.not.i33, label %do.end41.i, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41.i:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %and44.i = and i32 %shl.i32, 12
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %regmap.i38 = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i38, align 4
  %call.i.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 26, i32 noundef 12, i32 noundef %and44.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %20 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !156
  %channel.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %21 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %switch.lookup49, label %sx9310_read_thresh.exit.thread.i

sx9310_read_thresh.exit.thread.i:                 ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %cleanup

switch.lookup49:                                  ; preds = %sw.bb8
  %switch.gep50 = getelementptr inbounds [4 x i32], ptr @switch.table.sx9310_write_event_val.42, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load51 = load i32, ptr %switch.gep50, align 4
  %regmap.i.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %switch.load51, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %sx9310_read_thresh.exit.thread52.i, label %sx9310_read_thresh.exit.i

sx9310_read_thresh.exit.thread52.i:               ; preds = %switch.lookup49
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval.i.i, align 4
  %and.i.i = lshr i32 %28, 3
  %shr.i.i = and i32 %and.i.i, 31
  %arrayidx.i.i = getelementptr [32 x i32], ptr @sx9310_pthresh_codes, i32 0, i32 %shr.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %if.end.i

sx9310_read_thresh.exit.i:                        ; preds = %switch.lookup49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i41 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i41, label %sx9310_read_thresh.exit.i.cleanup_crit_edge, label %sx9310_read_thresh.exit.i.if.end.i_crit_edge

sx9310_read_thresh.exit.i.if.end.i_crit_edge:     ; preds = %sx9310_read_thresh.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sx9310_read_thresh.exit.i.cleanup_crit_edge:      ; preds = %sx9310_read_thresh.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sx9310_read_thresh.exit.i.if.end.i_crit_edge, %sx9310_read_thresh.exit.thread52.i
  %pthresh.056.i = phi i32 [ %30, %sx9310_read_thresh.exit.thread52.i ], [ -1, %sx9310_read_thresh.exit.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp1.i42 = icmp eq i32 %val, 0
  br i1 %cmp1.i42, label %if.end.i.do.body21.i_crit_edge, label %if.else.i

if.end.i.do.body21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21.i

if.else.i:                                        ; preds = %if.end.i
  %shr.i = ashr i32 %pthresh.056.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %val)
  %cmp3.i = icmp eq i32 %shr.i, %val
  br i1 %cmp3.i, label %if.else.i.do.body21.i_crit_edge, label %if.else5.i

if.else.i.do.body21.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21.i

if.else5.i:                                       ; preds = %if.else.i
  %shr6.i = ashr i32 %pthresh.056.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6.i, i32 %val)
  %cmp7.i = icmp eq i32 %shr6.i, %val
  br i1 %cmp7.i, label %if.else5.i.do.body21.i_crit_edge, label %if.else9.i

if.else5.i.do.body21.i_crit_edge:                 ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21.i

if.else9.i:                                       ; preds = %if.else5.i
  %shr10.i = ashr i32 %pthresh.056.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr10.i, i32 %val)
  %cmp11.i = icmp eq i32 %shr10.i, %val
  br i1 %cmp11.i, label %if.else9.i.do.body21.i_crit_edge, label %if.else9.i.cleanup_crit_edge

if.else9.i.cleanup_crit_edge:                     ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else9.i.do.body21.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21.i

do.body21.i:                                      ; preds = %if.else9.i.do.body21.i_crit_edge, %if.else5.i.do.body21.i_crit_edge, %if.else.i.do.body21.i_crit_edge, %if.end.i.do.body21.i_crit_edge
  %hyst.0.i = phi i32 [ 0, %if.end.i.do.body21.i_crit_edge ], [ 48, %if.else.i.do.body21.i_crit_edge ], [ 32, %if.else5.i.do.body21.i_crit_edge ], [ 16, %if.else9.i.do.body21.i_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %31 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i43 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 26, i32 noundef 48, i32 noundef %hyst.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body21.i, %if.else9.i.cleanup_crit_edge, %sx9310_read_thresh.exit.i.cleanup_crit_edge, %sx9310_read_thresh.exit.thread.i, %do.end41.i, %sw.bb6.cleanup_crit_edge, %do.body27.i, %sw.bb4.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %do.end21.i, %for.inc.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i, %do.end21.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i.i21, %do.body27.i ], [ -22, %sw.bb4.cleanup_crit_edge ], [ %call.i.i39, %do.end41.i ], [ -22, %sw.bb6.cleanup_crit_edge ], [ %call.i.i43, %do.body21.i ], [ %call1.i.i, %sx9310_read_thresh.exit.i.cleanup_crit_edge ], [ -22, %if.else9.i.cleanup_crit_edge ], [ -22, %sx9310_read_thresh.exit.thread.i ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_show_samp_freq_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %len.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.012
  %sub = sub i32 4096, %len.012
  %arrayidx = getelementptr [16 x %struct.anon.88], ptr @sx9310_samp_freq_table, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %val2 = getelementptr [16 x %struct.anon.88], ptr @sx9310_samp_freq_table, i32 0, i32 %i.013, i32 1
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val2, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %3) #9
  %add = add i32 %call, %len.012
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub2 = add i32 %add, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx3, align 1
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sx9310_disable_irq(ptr nocapture noundef readonly %data, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %irq1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 3, i32 noundef %irq, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sx9310_put_read_channel(ptr nocapture noundef %data, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_read = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %chan_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_read, align 4
  %shl = shl nuw i32 1, %channel
  %neg = xor i32 %shl, -1
  %and = and i32 %1, %neg
  %chan_event = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 11
  %2 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_event, align 8
  %or.i = or i32 %3, %and
  %or3.i = or i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i, i32 %or.i)
  %cmp.not.i = icmp eq i32 %or3.i, %or.i
  br i1 %cmp.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef 15, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.sx9310_update_chan_en.exit_crit_edge

if.then.i.sx9310_update_chan_en.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_update_chan_en.exit

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %6 = ptrtoint ptr %chan_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %chan_read, align 4
  %7 = ptrtoint ptr %chan_event to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %chan_event, align 8
  br label %sx9310_update_chan_en.exit

sx9310_update_chan_en.exit:                       ; preds = %if.end5.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sx9310_get_event_channel(ptr nocapture noundef %data, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_read = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %chan_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_read, align 4
  %chan_event = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 11
  %2 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_event, align 8
  %shl = shl nuw i32 1, %channel
  %or = or i32 %3, %shl
  %or.i = or i32 %or, %1
  %or3.i = or i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i, i32 %or.i)
  %cmp.not.i = icmp eq i32 %or3.i, %or.i
  br i1 %cmp.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef 15, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.sx9310_update_chan_en.exit_crit_edge

if.then.i.sx9310_update_chan_en.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_update_chan_en.exit

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %6 = ptrtoint ptr %chan_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %chan_read, align 4
  %7 = ptrtoint ptr %chan_event to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %chan_event, align 8
  br label %sx9310_update_chan_en.exit

sx9310_update_chan_en.exit:                       ; preds = %if.end5.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %client.i = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %irq1.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end9_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else:                                          ; preds = %entry
  %chan_read = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %chan_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.else
  %client.i20 = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %client.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i20, align 4
  %irq1.i21 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq1.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq1.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i22 = icmp eq i32 %13, 0
  br i1 %tobool.not.i22, label %if.then4.if.end9_crit_edge, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end6:                                          ; preds = %if.then4.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %.sink31 = phi i32 [ 8, %if.then.if.end6_crit_edge ], [ 0, %if.then4.if.end6_crit_edge ]
  %regmap.i23 = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %regmap.i23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i23, align 4
  %call.i.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 3, i32 noundef 8, i32 noundef %.sink31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool7.not = icmp eq i32 %call.i.i24, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.then4.if.end9_crit_edge, %if.else.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %trigger_enabled = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %trigger_enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %trigger_enabled, align 4
  br label %out

out:                                              ; preds = %if.end9, %if.end6.out_crit_edge
  %ret.029 = phi i32 [ %call.i.i24, %if.end6.out_crit_edge ], [ 0, %if.end9 ]
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret i32 %ret.029
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %4 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masklength, align 8
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %3, i32 noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %7)
  %cmp22 = icmp ult i32 %call1, %7
  br i1 %cmp22, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels3 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %16, %for.body.for.body_crit_edge ]
  %bit.024 = phi i32 [ %call1, %for.body.lr.ph ], [ %call6, %for.body.for.body_crit_edge ]
  %or.i2123 = phi i32 [ 0, %for.body.lr.ph ], [ %or.i, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %channels3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels3, align 8
  %channel = getelementptr %struct.iio_chan_spec, ptr %10, i32 %bit.024, i32 1
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  %rem.i = and i32 %12, 31
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %shl.i, %or.i2123
  %13 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %active_scan_mask, align 4
  %add = add nuw i32 %bit.024, 1
  %call6 = tail call i32 @_find_next_bit_be(ptr noundef %14, i32 noundef %8, i32 noundef %add) #9
  %15 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call6, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %or.i21.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or.i, %for.body.for.end_crit_edge ]
  %chan_event = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan_event, align 8
  %or.i20 = or i32 %18, %or.i21.lcssa
  %chan_read1.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %chan_read1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan_read1.i, align 4
  %or3.i = or i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i, i32 %or.i20)
  %cmp.not.i = icmp eq i32 %or3.i, %or.i20
  br i1 %cmp.not.i, label %for.end.if.end5.i_crit_edge, label %if.then.i

for.end.if.end5.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %for.end
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 16, i32 noundef 15, i32 noundef %or.i20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.sx9310_update_chan_en.exit_crit_edge

if.then.i.sx9310_update_chan_en.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_update_chan_en.exit

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %for.end.if.end5.i_crit_edge
  %23 = ptrtoint ptr %chan_read1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i21.lcssa, ptr %chan_read1.i, align 4
  %24 = ptrtoint ptr %chan_event to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %18, ptr %chan_event, align 8
  br label %sx9310_update_chan_en.exit

sx9310_update_chan_en.exit:                       ; preds = %if.end5.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %chan_event = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chan_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_event, align 8
  %chan_read1.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %chan_read1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_read1.i, align 4
  %or3.i = or i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %or3.i, i32 %3)
  %cmp.not.i = icmp eq i32 %or3.i, %3
  br i1 %cmp.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.sx9310_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 15, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.sx9310_update_chan_en.exit_crit_edge

if.then.i.sx9310_update_chan_en.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx9310_update_chan_en.exit

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %8 = ptrtoint ptr %chan_read1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %chan_read1.i, align 4
  %9 = ptrtoint ptr %chan_event to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %chan_event, align 8
  br label %sx9310_update_chan_en.exit

sx9310_update_chan_en.exit:                       ; preds = %if.end5.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i.i, %if.then.i.sx9310_update_chan_en.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #9
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %regmap = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %suspend_ctrl0 = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 8
  %call2 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 16, ptr noundef %suspend_ctrl0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %suspend_ctrl0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %suspend_ctrl0, align 8
  %conv = and i32 %11, 240
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 16, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 65, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %if.end9, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call6, %if.end.out_crit_edge ], [ %call11, %if.end9 ]
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx9310_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %regmap = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %out, label %out.thread

out.thread:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %3) #9
  br label %cleanup

out:                                              ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %suspend_ctrl0 = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %suspend_ctrl0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspend_ctrl0, align 8
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef %9) #9
  tail call void @mutex_unlock(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end8, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.sx9310_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %out.cleanup_crit_edge, %out.thread
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call4, %out.cleanup_crit_edge ], [ %call2, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__initcall__kmod_sx9310__402_1574_sx9310_driver_init6, !1, !"__initcall__kmod_sx9310__402_1574_sx9310_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/sx9310.c", i32 1574, i32 1}
!2 = !{ptr @__exitcall_sx9310_driver_exit, !1, !"__exitcall_sx9310_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author403, !4, !"__UNIQUE_ID_author403", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/sx9310.c", i32 1576, i32 1}
!5 = !{ptr @__UNIQUE_ID_author404, !6, !"__UNIQUE_ID_author404", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/sx9310.c", i32 1577, i32 1}
!7 = !{ptr @__UNIQUE_ID_description405, !8, !"__UNIQUE_ID_description405", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/sx9310.c", i32 1578, i32 1}
!9 = !{ptr @__UNIQUE_ID_file406, !10, !"__UNIQUE_ID_file406", i1 false, i1 false}
!10 = !{!"../drivers/iio/proximity/sx9310.c", i32 1579, i32 1}
!11 = !{ptr @__UNIQUE_ID_license407, !10, !"__UNIQUE_ID_license407", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/sx9310.c", i32 1559, i32 11}
!14 = !{ptr @sx9310_driver, !15, !"sx9310_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/sx9310.c", i32 1557, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/proximity/sx9310.c", i32 1404, i32 29}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/proximity/sx9310.c", i32 1405, i32 29}
!20 = !{ptr @sx9310_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/proximity/sx9310.c", i32 1406, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sx9310_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/iio/proximity/sx9310.c", i32 1409, i32 17}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/proximity/sx9310.c", i32 1430, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sx9310_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @sx9310_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/proximity/sx9310.c", i32 1454, i32 7}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/proximity/sx9310.c", i32 1458, i32 44}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sx9310_regmap_config, !42, !"sx9310_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/iio/proximity/sx9310.c", i32 311, i32 35}
!43 = !{ptr @sx9310_writeable_regs, !44, !"sx9310_writeable_regs", i1 false, i1 false}
!44 = !{!"../drivers/iio/proximity/sx9310.c", i32 280, i32 41}
!45 = !{ptr @sx9310_writable_reg_ranges, !46, !"sx9310_writable_reg_ranges", i1 false, i1 false}
!46 = !{!"../drivers/iio/proximity/sx9310.c", i32 270, i32 34}
!47 = !{ptr @sx9310_readable_regs, !48, !"sx9310_readable_regs", i1 false, i1 false}
!48 = !{!"../drivers/iio/proximity/sx9310.c", i32 294, i32 41}
!49 = !{ptr @sx9310_readable_reg_ranges, !50, !"sx9310_readable_reg_ranges", i1 false, i1 false}
!50 = !{!"../drivers/iio/proximity/sx9310.c", i32 285, i32 34}
!51 = !{ptr @sx9310_volatile_regs, !52, !"sx9310_volatile_regs", i1 false, i1 false}
!52 = !{!"../drivers/iio/proximity/sx9310.c", i32 306, i32 41}
!53 = !{ptr @sx9310_volatile_reg_ranges, !54, !"sx9310_volatile_reg_ranges", i1 false, i1 false}
!54 = !{!"../drivers/iio/proximity/sx9310.c", i32 299, i32 34}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/proximity/sx9310.c", i32 1365, i32 3}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sx9310_set_indio_dev_name._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sx9310_set_indio_dev_name._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/proximity/sx9310.c", i32 1374, i32 21}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/proximity/sx9310.c", i32 1377, i32 3}
!64 = !{ptr @sx9310_set_indio_dev_name._entry.16, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sx9310_set_indio_dev_name._entry_ptr.18, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/proximity/sx9310.c", i32 219, i32 2}
!68 = !{ptr @sx9310_channels, !69, !"sx9310_channels", i1 false, i1 false}
!69 = !{!"../drivers/iio/proximity/sx9310.c", i32 215, i32 35}
!70 = !{ptr @sx9310_events, !71, !"sx9310_events", i1 false, i1 false}
!71 = !{!"../drivers/iio/proximity/sx9310.c", i32 171, i32 36}
!72 = !{ptr @sx9310_info, !73, !"sx9310_info", i1 false, i1 false}
!73 = !{!"../drivers/iio/proximity/sx9310.c", i32 1043, i32 30}
!74 = !{ptr @sx9310_attribute_group, !75, !"sx9310_attribute_group", i1 false, i1 false}
!75 = !{!"../drivers/iio/proximity/sx9310.c", i32 1039, i32 37}
!76 = !{ptr @sx9310_attributes, !77, !"sx9310_attributes", i1 false, i1 false}
!77 = !{!"../drivers/iio/proximity/sx9310.c", i32 1034, i32 26}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/proximity/sx9310.c", i32 268, i32 8}
!80 = !{ptr @iio_dev_attr_sampling_frequency_available, !79, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/proximity/sx9310.c", i32 262, i32 48}
!83 = !{ptr @sx9310_samp_freq_table, !84, !"sx9310_samp_freq_table", i1 false, i1 false}
!84 = !{!"../drivers/iio/proximity/sx9310.c", i32 231, i32 3}
!85 = !{ptr @sx9310_scan_period_table, !86, !"sx9310_scan_period_table", i1 false, i1 false}
!86 = !{!"../drivers/iio/proximity/sx9310.c", i32 249, i32 27}
!87 = !{ptr @sx9310_gain_vals, !88, !"sx9310_gain_vals", i1 false, i1 false}
!88 = !{!"../drivers/iio/proximity/sx9310.c", i32 549, i32 18}
!89 = !{ptr @sx9310_pthresh_codes, !90, !"sx9310_pthresh_codes", i1 false, i1 false}
!90 = !{!"../drivers/iio/proximity/sx9310.c", i32 570, i32 27}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/proximity/sx9310.c", i32 1237, i32 38}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/proximity/sx9310.c", i32 1242, i32 42}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/proximity/sx9310.c", i32 1265, i32 42}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/proximity/sx9310.c", i32 1270, i32 20}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/proximity/sx9310.c", i32 1272, i32 25}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/proximity/sx9310.c", i32 1274, i32 25}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/proximity/sx9310.c", i32 1276, i32 25}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/proximity/sx9310.c", i32 1278, i32 25}
!107 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/proximity/sx9310.c", i32 1280, i32 25}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/proximity/sx9310.c", i32 1282, i32 25}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/proximity/sx9310.c", i32 1284, i32 25}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/proximity/sx9310.c", i32 1289, i32 39}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/proximity/sx9310.c", i32 1299, i32 39}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/proximity/sx9310.c", i32 1312, i32 39}
!119 = !{ptr @sx9310_default_regs, !120, !"sx9310_default_regs", i1 false, i1 false}
!120 = !{!"../drivers/iio/proximity/sx9310.c", i32 1149, i32 40}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/proximity/sx9310.c", i32 1214, i32 4}
!123 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sx9310_init_compensation._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @sx9310_init_compensation._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/proximity/sx9310.c", i32 969, i32 3}
!128 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @sx9310_irq_thread_handler._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @sx9310_irq_thread_handler._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/proximity/sx9310.c", i32 935, i32 3}
!133 = !{ptr @sx9310_push_events._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @sx9310_push_events._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @sx9310_trigger_ops, !136, !"sx9310_trigger_ops", i1 false, i1 false}
!136 = !{!"../drivers/iio/proximity/sx9310.c", i32 1077, i32 37}
!137 = !{ptr @sx9310_buffer_setup_ops, !138, !"sx9310_buffer_setup_ops", i1 false, i1 false}
!138 = !{!"../drivers/iio/proximity/sx9310.c", i32 1139, i32 42}
!139 = !{ptr @sx9310_of_match, !140, !"sx9310_of_match", i1 false, i1 false}
!140 = !{!"../drivers/iio/proximity/sx9310.c", i32 1543, i32 34}
!141 = !{ptr @sx9310_acpi_match, !142, !"sx9310_acpi_match", i1 false, i1 false}
!142 = !{!"../drivers/iio/proximity/sx9310.c", i32 1536, i32 36}
!143 = !{ptr @sx9310_pm_ops, !144, !"sx9310_pm_ops", i1 false, i1 false}
!144 = !{!"../drivers/iio/proximity/sx9310.c", i32 1532, i32 32}
!145 = !{ptr @sx9310_id, !146, !"sx9310_id", i1 false, i1 false}
!146 = !{!"../drivers/iio/proximity/sx9310.c", i32 1550, i32 35}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
!157 = !{i32 0, i32 33}
!158 = !{i8 0, i8 2}
