; ModuleID = '/llk/IR_all_yes/drivers/iio/light/opt3001.c_pt.bc'
source_filename = "../drivers/iio/light/opt3001.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.opt3001 = type { ptr, ptr, %struct.mutex, i8, i8, %struct.wait_queue_head, i16, i32, i32, i16, i16, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_opt3001__289_851_opt3001_driver_init6 = internal global ptr @opt3001_driver_init, section ".initcall6.init", align 4
@opt3001_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @opt3001_probe, ptr @opt3001_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @opt3001_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @opt3001_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_opt3001_driver_exit = internal global ptr @opt3001_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [39 x i8] c"opt3001.file=drivers/iio/light/opt3001\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [23 x i8] c"opt3001.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [54 x i8] c"opt3001.author=Andreas Dannenberg <dannenberg@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [66 x i8] c"opt3001.description=Texas Instruments OPT3001 Light Sensor Driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"opt3001\00", [24 x i8] zeroinitializer }, align 32
@opt3001_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,opt3001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@opt3001_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"opt3001\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@opt3001_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&opt->lock\00", [21 x i8] zeroinitializer }, align 32
@opt3001_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&opt->result_ready_queue\00", [39 x i8] zeroinitializer }, align 32
@opt3001_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262146, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @opt3001_event_spec, i32 2, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@opt3001_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @opt3001_attribute_group, ptr @opt3001_read_raw, ptr null, ptr null, ptr @opt3001_write_raw, ptr null, ptr null, ptr @opt3001_read_event_config, ptr @opt3001_write_event_config, ptr @opt3001_read_event_value, ptr @opt3001_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@opt3001_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 776, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"opt3001_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/opt3001.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@opt3001_probe._entry_ptr = internal global ptr @opt3001_probe._entry, section ".printk_index", align 4
@opt3001_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 786, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ #%d\0A\00", [37 x i8] zeroinitializer }, align 32
@opt3001_probe._entry_ptr.11 = internal global ptr @opt3001_probe._entry.9, section ".printk_index", align 4
@opt3001_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.12, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enabling interrupt-less operation\0A\00", [61 x i8] zeroinitializer }, align 32
@opt3001_read_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 599, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read register %02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"opt3001_read_id\00", [16 x i8] zeroinitializer }, align 32
@opt3001_read_id._entry_ptr = internal global ptr @opt3001_read_id._entry, section ".printk_index", align 4
@opt3001_read_id._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 609, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_read_id._entry_ptr.16 = internal global ptr @opt3001_read_id._entry.15, section ".printk_index", align 4
@opt3001_read_id._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.6, i32 616, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Found %c%c OPT%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@opt3001_read_id._entry_ptr.20 = internal global ptr @opt3001_read_id._entry.17, section ".printk_index", align 4
@opt3001_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.6, i32 629, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"opt3001_configure\00", [46 x i8] zeroinitializer }, align 32
@opt3001_configure._entry_ptr = internal global ptr @opt3001_configure._entry, section ".printk_index", align 4
@opt3001_configure._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.6, i32 658, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write register %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@opt3001_configure._entry_ptr.24 = internal global ptr @opt3001_configure._entry.22, section ".printk_index", align 4
@opt3001_configure._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.6, i32 665, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_configure._entry_ptr.26 = internal global ptr @opt3001_configure._entry.25, section ".printk_index", align 4
@opt3001_configure._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.6, i32 675, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_configure._entry_ptr.28 = internal global ptr @opt3001_configure._entry.27, section ".printk_index", align 4
@opt3001_event_spec = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@opt3001_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @opt3001_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@opt3001_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.29, %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.1 0.8\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@opt3001_get_lux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.6, i32 244, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"opt3001_get_lux\00", [16 x i8] zeroinitializer }, align 32
@opt3001_get_lux._entry_ptr = internal global ptr @opt3001_get_lux._entry, section ".printk_index", align 4
@opt3001_get_lux._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.31, ptr @.str.6, i32 259, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_get_lux._entry_ptr.33 = internal global ptr @opt3001_get_lux._entry.32, section ".printk_index", align 4
@opt3001_get_lux._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.6, i32 270, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_get_lux._entry_ptr.35 = internal global ptr @opt3001_get_lux._entry.34, section ".printk_index", align 4
@opt3001_get_lux._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.31, ptr @.str.6, i32 292, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_get_lux._entry_ptr.37 = internal global ptr @opt3001_get_lux._entry.36, section ".printk_index", align 4
@opt3001_get_lux._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.31, ptr @.str.6, i32 305, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_get_lux._entry_ptr.39 = internal global ptr @opt3001_get_lux._entry.38, section ".printk_index", align 4
@opt3001_get_lux._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.6, i32 334, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_get_lux._entry_ptr.41 = internal global ptr @opt3001_get_lux._entry.40, section ".printk_index", align 4
@opt3001_set_int_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.42, ptr @.str.6, i32 363, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"opt3001_set_int_time\00", [43 x i8] zeroinitializer }, align 32
@opt3001_set_int_time._entry_ptr = internal global ptr @opt3001_set_int_time._entry, section ".printk_index", align 4
@opt3001_write_event_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.43, ptr @.str.6, i32 559, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"opt3001_write_event_config\00", [37 x i8] zeroinitializer }, align 32
@opt3001_write_event_config._entry_ptr = internal global ptr @opt3001_write_event_config._entry, section ".printk_index", align 4
@opt3001_write_event_config._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.43, ptr @.str.6, i32 570, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_write_event_config._entry_ptr.45 = internal global ptr @opt3001_write_event_config._entry.44, section ".printk_index", align 4
@opt3001_write_event_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 492, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't find scale for %d.%06u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"opt3001_write_event_value\00", [38 x i8] zeroinitializer }, align 32
@opt3001_write_event_value._entry_ptr = internal global ptr @opt3001_write_event_value._entry, section ".printk_index", align 4
@opt3001_write_event_value._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.47, ptr @.str.6, i32 517, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_write_event_value._entry_ptr.49 = internal global ptr @opt3001_write_event_value._entry.48, section ".printk_index", align 4
@opt3001_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.50, ptr @.str.6, i32 698, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"opt3001_irq\00", [20 x i8] zeroinitializer }, align 32
@opt3001_irq._entry_ptr = internal global ptr @opt3001_irq._entry, section ".printk_index", align 4
@opt3001_irq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.50, ptr @.str.6, i32 720, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_irq._entry_ptr.52 = internal global ptr @opt3001_irq._entry.51, section ".printk_index", align 4
@opt3001_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.53, ptr @.str.6, i32 810, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"opt3001_remove\00", [17 x i8] zeroinitializer }, align 32
@opt3001_remove._entry_ptr = internal global ptr @opt3001_remove._entry, section ".printk_index", align 4
@opt3001_remove._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.53, ptr @.str.6, i32 821, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@opt3001_remove._entry_ptr.55 = internal global ptr @opt3001_remove._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 100000, i64 800000]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"opt3001_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 840, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 846, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"opt3001_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 834, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"opt3001_id\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 828, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 756, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 757, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"opt3001_channels\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 213, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"opt3001_info\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 580, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 776, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 786, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 791, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 598, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 608, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 615, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 628, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 657, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 664, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 674, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"opt3001_event_spec\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 198, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"opt3001_attribute_group\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 194, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"opt3001_attributes\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 189, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [42 x i8] c"iio_const_attr_integration_time_available\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 187, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 243, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 258, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 269, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 291, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 304, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 333, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 362, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 558, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 569, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 492, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 517, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 697, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 719, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 809, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private constant [31 x i8] c"../drivers/iio/light/opt3001.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 820, i32 3 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_opt3001_driver_exit, ptr @__initcall__kmod_opt3001__289_851_opt3001_driver_init6, ptr @opt3001_configure._entry, ptr @opt3001_configure._entry.22, ptr @opt3001_configure._entry.25, ptr @opt3001_configure._entry.27, ptr @opt3001_configure._entry_ptr, ptr @opt3001_configure._entry_ptr.24, ptr @opt3001_configure._entry_ptr.26, ptr @opt3001_configure._entry_ptr.28, ptr @opt3001_driver_exit, ptr @opt3001_get_lux._entry, ptr @opt3001_get_lux._entry.32, ptr @opt3001_get_lux._entry.34, ptr @opt3001_get_lux._entry.36, ptr @opt3001_get_lux._entry.38, ptr @opt3001_get_lux._entry.40, ptr @opt3001_get_lux._entry_ptr, ptr @opt3001_get_lux._entry_ptr.33, ptr @opt3001_get_lux._entry_ptr.35, ptr @opt3001_get_lux._entry_ptr.37, ptr @opt3001_get_lux._entry_ptr.39, ptr @opt3001_get_lux._entry_ptr.41, ptr @opt3001_irq._entry, ptr @opt3001_irq._entry.51, ptr @opt3001_irq._entry_ptr, ptr @opt3001_irq._entry_ptr.52, ptr @opt3001_probe._entry, ptr @opt3001_probe._entry.9, ptr @opt3001_probe._entry_ptr, ptr @opt3001_probe._entry_ptr.11, ptr @opt3001_read_id._entry, ptr @opt3001_read_id._entry.15, ptr @opt3001_read_id._entry.17, ptr @opt3001_read_id._entry_ptr, ptr @opt3001_read_id._entry_ptr.16, ptr @opt3001_read_id._entry_ptr.20, ptr @opt3001_remove._entry, ptr @opt3001_remove._entry.54, ptr @opt3001_remove._entry_ptr, ptr @opt3001_remove._entry_ptr.55, ptr @opt3001_set_int_time._entry, ptr @opt3001_set_int_time._entry_ptr, ptr @opt3001_write_event_config._entry, ptr @opt3001_write_event_config._entry.44, ptr @opt3001_write_event_config._entry_ptr, ptr @opt3001_write_event_config._entry_ptr.45, ptr @opt3001_write_event_value._entry, ptr @opt3001_write_event_value._entry.48, ptr @opt3001_write_event_value._entry_ptr, ptr @opt3001_write_event_value._entry_ptr.49, ptr @opt3001_driver, ptr @.str, ptr @opt3001_of_match, ptr @opt3001_id, ptr @opt3001_probe.__key, ptr @.str.1, ptr @opt3001_probe.__key.2, ptr @.str.3, ptr @opt3001_channels, ptr @opt3001_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @opt3001_event_spec, ptr @opt3001_attribute_group, ptr @opt3001_attributes, ptr @iio_const_attr_integration_time_available, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.53], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_read_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_read_id._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_read_id._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_configure._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_configure._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_configure._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_event_spec to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_get_lux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_get_lux._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_get_lux._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_get_lux._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_get_lux._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_get_lux._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_set_int_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_write_event_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_write_event_config._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_write_event_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_write_event_value._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_irq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3001_remove._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @opt3001_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @opt3001_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @opt3001_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %irq2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq2, align 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 176) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %3, align 4
  %dev5 = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev5, align 4
  %lock = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @opt3001_probe.__key) #7
  %result_ready_queue = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %result_ready_queue, ptr noundef nonnull @.str.3, ptr noundef nonnull @opt3001_probe.__key.2) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %8, i8 noundef zeroext 126) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %conv1.i.i = zext i16 %9 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef 126) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i35.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext 127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp.i36.i = icmp slt i32 %call.i35.i, 0
  br i1 %cmp.i36.i, label %do.end10.i, label %if.end12

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef 127) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %conv.i37.i = trunc i32 %call.i35.i to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv.i37.i) #7
  %conv1.i38.i = zext i16 %16 to i32
  %17 = lshr i32 %cond.i.i, 8
  %18 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev5, align 4
  %conv19.i = and i32 %17, 255
  %conv21.i = and i32 %cond.i.i, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef %conv19.i, i32 noundef %conv21.i, i32 noundef %conv1.i38.i) #10
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call.i.i82 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %21, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %cmp.i.i83 = icmp slt i32 %call.i.i82, 0
  br i1 %cmp.i.i83, label %do.end.i85, label %if.end.i87

do.end.i85:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %cleanup

if.end.i87:                                       ; preds = %if.end12
  %conv.i.i86 = trunc i32 %call.i.i82 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i86) #7
  %25 = and i16 %24, 2528
  %26 = and i16 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i = icmp eq i16 %26, 0
  %spec.select.i = select i1 %tobool.not.i, i32 100000, i32 800000
  %27 = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i, ptr %27, align 4
  %mode6.i.i = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %mode6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mode6.i.i, align 4
  %30 = or i16 %25, -16368
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  %call.i86.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %32, i8 noundef zeroext 1, i16 noundef zeroext %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %cmp24.i = icmp slt i32 %call.i86.i, 0
  br i1 %cmp24.i, label %do.end29.i, label %if.end31.i

do.end29.i:                                       ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.23, i32 noundef 1) #10
  br label %cleanup

if.end31.i:                                       ; preds = %if.end.i87
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %call.i87.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %37, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %cmp.i88.i = icmp slt i32 %call.i87.i, 0
  br i1 %cmp.i88.i, label %do.end39.i, label %if.end41.i

do.end39.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.13, i32 noundef 2) #10
  br label %cleanup

if.end41.i:                                       ; preds = %if.end31.i
  %conv.i89.i = trunc i32 %call.i87.i to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv.i89.i) #7
  %conv43.i = and i16 %40, 4095
  %low_thresh_mantissa.i = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 10
  %41 = ptrtoint ptr %low_thresh_mantissa.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv43.i, ptr %low_thresh_mantissa.i, align 2
  %42 = lshr i16 %40, 12
  %conv44.i = trunc i16 %42 to i8
  %low_thresh_exp.i = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 12
  %43 = ptrtoint ptr %low_thresh_exp.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv44.i, ptr %low_thresh_exp.i, align 1
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %call.i92.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %45, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %cmp.i93.i = icmp slt i32 %call.i92.i, 0
  br i1 %cmp.i93.i, label %do.end52.i, label %if.end16

do.end52.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.13, i32 noundef 3) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end41.i
  %conv.i94.i = trunc i32 %call.i92.i to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv.i94.i) #7
  %conv56.i = and i16 %48, 4095
  %high_thresh_mantissa.i = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 9
  %49 = ptrtoint ptr %high_thresh_mantissa.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv56.i, ptr %high_thresh_mantissa.i, align 4
  %50 = lshr i16 %48, 12
  %conv58.i = trunc i16 %50 to i8
  %high_thresh_exp.i = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 11
  %51 = ptrtoint ptr %high_thresh_exp.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv58.i, ptr %high_thresh_exp.i, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name17 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %52 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %name, ptr %name17, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %53 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @opt3001_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %54 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %num_channels, align 4
  %55 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %56 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @opt3001_info, ptr %info, align 8
  %call18 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then25, label %do.body33

if.then25:                                        ; preds = %if.end24
  %call26 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef null, ptr noundef nonnull @opt3001_irq, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end32, label %do.end31

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %1) #10
  br label %cleanup

if.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %use_irq = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 13
  %57 = ptrtoint ptr %use_irq to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %use_irq, align 2
  br label %cleanup

do.body33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opt3001_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opt3001_probe, %if.then38)) #7
          to label %cleanup [label %if.then38], !srcloc !143

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @opt3001_probe.__UNIQUE_ID_ddebug288, ptr noundef %59, ptr noundef nonnull @.str.12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body33, %if.end32, %do.end31, %do.end23, %do.end52.i, %do.end39.i, %do.end29.i, %do.end.i85, %do.end10.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ %call26, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end32 ], [ 0, %do.body33 ], [ %call.i35.i, %do.end10.i ], [ %call.i.i, %do.end.i ], [ %call.i92.i, %do.end52.i ], [ %call.i87.i, %do.end39.i ], [ %call.i86.i, %do.end29.i ], [ %call.i.i82, %do.end.i85 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_remove(ptr nocapture noundef readonly %client) #2 align 64 {
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
  %use_irq = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %use_irq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_irq, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %9, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %conv.i = trunc i32 %call.i to i16
  %10 = and i16 %conv.i, -7
  %mode6.i = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %mode6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mode6.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i31 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext 1, i16 noundef zeroext %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp9 = icmp slt i32 %call.i31, 0
  br i1 %cmp9, label %if.end6.cleanup.sink.split_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.13, %if.end.cleanup.sink.split_crit_edge ], [ @.str.23, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.end.cleanup.sink.split_crit_edge ], [ %call.i31, %if.end6.cleanup.sink.split_crit_edge ]
  %dev15 = getelementptr inbounds %struct.opt3001, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.23.sink, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_irq(i32 noundef %irq, ptr noundef %_iio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %_iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ok_to_ignore_lock = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ok_to_ignore_lock to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ok_to_ignore_lock, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %conv.i = trunc i32 %call.i to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %conv1.i = zext i16 %6 to i32
  %cond.i = select i1 %cmp.i, i32 %call.i, i32 %conv1.i
  br i1 %cmp.i, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %out

if.end3:                                          ; preds = %if.end
  %and = and i32 %cond.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp4 = icmp eq i32 %and, 1024
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %and6 = and i32 %cond.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then5.if.end11_crit_edge, label %if.then8

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i64 @iio_get_time_ns(ptr noundef %_iio) #7
  %call10 = tail call i32 @iio_push_event(ptr noundef %_iio, i64 noundef 281500746514432, i64 noundef %call9) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then5.if.end11_crit_edge
  %and12 = and i32 %cond.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.then14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i64 @iio_get_time_ns(ptr noundef %_iio) #7
  %call16 = tail call i32 @iio_push_event(ptr noundef %_iio, i64 noundef 562975723225088, i64 noundef %call15) #7
  br label %out

if.else:                                          ; preds = %if.end3
  %and18 = and i32 %cond.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else.out_crit_edge, label %if.then20

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then20:                                        ; preds = %if.else
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i60 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  br i1 %cmp.i61, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %dev28 = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef 0) #10
  br label %out

if.end29:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i62 = trunc i32 %call.i60 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i62) #7
  %result = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %result, align 4
  %result_ready = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %result_ready to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %result_ready, align 1
  br label %out

out:                                              ; preds = %if.end29, %do.end27, %if.else.out_crit_edge, %if.then14, %if.end11.out_crit_edge, %do.end
  %wake_result_ready_queue.0.off0 = phi i1 [ false, %do.end ], [ false, %if.then14 ], [ false, %if.end11.out_crit_edge ], [ false, %do.end27 ], [ true, %if.end29 ], [ false, %if.else.out_crit_edge ]
  %16 = ptrtoint ptr %ok_to_ignore_lock to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ok_to_ignore_lock, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %if.then34, label %out.if.end36_crit_edge

out.if.end36_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %lock35 = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock35) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %out.if.end36_crit_edge
  br i1 %wake_result_ready_queue.0.off0, label %if.then38, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %result_ready_queue = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %result_ready_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_read_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp eq i32 %3, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp1.not = icmp eq i32 %5, 6
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %6 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end3.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 18, label %sw.bb5
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  %use_irq.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %use_irq.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_irq.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %sw.bb.if.end2.i_crit_edge, label %if.then.i

sw.bb.if.end2.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then.i:                                        ; preds = %sw.bb
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %10, i8 noundef zeroext 2, i16 noundef zeroext 192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef 2) #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ok_to_ignore_lock.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %ok_to_ignore_lock.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %ok_to_ignore_lock.i, align 4
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i, %sw.bb.if.end2.i_crit_edge
  %result_ready.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %result_ready.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %result_ready.i, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i196.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %16, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196.i)
  %cmp.i.i = icmp slt i32 %call.i196.i, 0
  br i1 %cmp.i.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev10.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %err.i

if.end11.i:                                       ; preds = %if.end2.i
  %conv.i.i = trunc i32 %call.i196.i to i16
  %19 = and i16 %conv.i.i, -7
  %20 = or i16 %19, 2
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %mode, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i197.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %23, i8 noundef zeroext 1, i16 noundef zeroext %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197.i)
  %cmp14.i = icmp slt i32 %call.i197.i, 0
  br i1 %cmp14.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev20.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.23, i32 noundef 1) #10
  br label %err.i

if.end21.i:                                       ; preds = %if.end11.i
  %26 = ptrtoint ptr %use_irq.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use_irq.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool23.not.i = icmp eq i8 %27, 0
  br i1 %tobool23.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end21.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 278) #7
  %28 = ptrtoint ptr %result_ready.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %result_ready.i, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool33.not.i = icmp eq i8 %29, 0
  br i1 %tobool33.not.i, label %if.then43.i, label %err.thread.i

if.then43.i:                                      ; preds = %if.then24.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %30 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %result_ready_queue.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 5
  %call46230.i = call i32 @prepare_to_wait_event(ptr noundef %result_ready_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %31 = ptrtoint ptr %result_ready.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %result_ready.i, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool49.not231.not.i = icmp eq i8 %32, 0
  br i1 %tobool49.not231.not.i, label %if.then43.i.cleanup.i_crit_edge, label %err.thread238.i

if.then43.i.cleanup.i_crit_edge:                  ; preds = %if.then43.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then43.i.cleanup.i_crit_edge
  %__ret44.1233.i = phi i32 [ %__ret44.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 100, %if.then43.i.cleanup.i_crit_edge ]
  %call68.i = call i32 @schedule_timeout(i32 noundef %__ret44.1233.i) #7
  %call46.i = call i32 @prepare_to_wait_event(ptr noundef %result_ready_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %33 = ptrtoint ptr %result_ready.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %result_ready.i, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool49.not.i = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool54.not.i = icmp eq i32 %call68.i, 0
  %spec.store.select144.i = select i1 %tobool54.not.i, i32 1, i32 %call68.i
  %__ret44.1.i = select i1 %tobool49.not.i, i32 %call68.i, i32 %spec.store.select144.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.1.i)
  %tobool61.not.i = icmp eq i32 %__ret44.1.i, 0
  %not.tobool49.not.i = xor i1 %tobool49.not.i, true
  %35 = select i1 %not.tobool49.not.i, i1 true, i1 %tobool61.not.i
  br i1 %35, label %if.end71.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end71.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %result_ready_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br i1 %tobool61.not.i, label %if.end71.i.sw.epilog_crit_edge, label %if.end71.i.err.i_crit_edge

if.end71.i.err.i_crit_edge:                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end71.i.sw.epilog_crit_edge:                   ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end21.i
  %int_time.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %int_time.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %int_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %37)
  %cmp77.i = icmp eq i32 %37, 100000
  %cond.i = select i1 %cmp77.i, i32 150, i32 1000
  tail call void @msleep(i32 noundef %cond.i) #7
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i198.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %39, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198.i)
  %cmp.i199.i = icmp slt i32 %call.i198.i, 0
  br i1 %cmp.i199.i, label %do.end86.i, label %if.end88.i

do.end86.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev87.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev87.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %err.i

if.end88.i:                                       ; preds = %if.else.i
  %42 = and i32 %call.i198.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool89.not.i = icmp eq i32 %42, 0
  br i1 %tobool89.not.i, label %err.i.thread, label %if.end91.i

if.end91.i:                                       ; preds = %if.end88.i
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i203.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %44, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203.i)
  %cmp.i204.i = icmp slt i32 %call.i203.i, 0
  br i1 %cmp.i204.i, label %do.end99.i, label %if.end101.i

do.end99.i:                                       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev100.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dev100.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev100.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef 0) #10
  br label %err.i

if.end101.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i205.i = trunc i32 %call.i203.i to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv.i205.i) #7
  %conv1.i206.i = zext i16 %47 to i32
  %result.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %result.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %result.i, align 4
  %49 = ptrtoint ptr %result_ready.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %result_ready.i, align 1
  br label %err.i

err.i:                                            ; preds = %if.end101.i, %do.end99.i, %do.end86.i, %if.end71.i.err.i_crit_edge, %do.end19.i, %do.end9.i
  %ret.0.i = phi i32 [ %call.i196.i, %do.end9.i ], [ %call.i197.i, %do.end19.i ], [ %__ret44.1.i, %if.end71.i.err.i_crit_edge ], [ %call.i198.i, %do.end86.i ], [ %call.i203.i, %do.end99.i ], [ %conv1.i206.i, %if.end101.i ]
  %50 = ptrtoint ptr %use_irq.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %use_irq.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool106.not.i = icmp eq i8 %51, 0
  br i1 %tobool106.not.i, label %if.end109.i, label %if.end109.thread.i

err.i.thread:                                     ; preds = %if.end88.i
  %52 = ptrtoint ptr %use_irq.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_irq.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool106.not.i17 = icmp eq i8 %53, 0
  br i1 %tobool106.not.i17, label %err.i.thread.sw.epilog_crit_edge, label %if.end109.thread.i.thread

err.i.thread.sw.epilog_crit_edge:                 ; preds = %err.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end109.thread.i.thread:                        ; preds = %err.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  %ok_to_ignore_lock108.i23 = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %ok_to_ignore_lock108.i23 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %ok_to_ignore_lock108.i23, align 4
  br label %sw.epilog

err.thread238.i:                                  ; preds = %if.then43.i
  call void @finish_wait(ptr noundef %result_ready_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %55 = ptrtoint ptr %use_irq.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %use_irq.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool106.not240.i = icmp eq i8 %56, 0
  br i1 %tobool106.not240.i, label %err.thread238.i.if.end130.i_crit_edge, label %err.thread238.i.if.then116.sink.split.i_crit_edge

err.thread238.i.if.then116.sink.split.i_crit_edge: ; preds = %err.thread238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116.sink.split.i

err.thread238.i.if.end130.i_crit_edge:            ; preds = %err.thread238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.i

err.thread.i:                                     ; preds = %if.then24.i
  %57 = ptrtoint ptr %use_irq.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %use_irq.i, align 2, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool106.not220.i = icmp eq i8 %58, 0
  br i1 %tobool106.not220.i, label %err.thread.i.if.end130.i_crit_edge, label %err.thread.i.if.then116.sink.split.i_crit_edge

err.thread.i.if.then116.sink.split.i_crit_edge:   ; preds = %err.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116.sink.split.i

err.thread.i.if.end130.i_crit_edge:               ; preds = %err.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.i

if.end109.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp110.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp110.i, label %if.end109.i.sw.epilog_crit_edge, label %if.end109.i.if.end130.i_crit_edge

if.end109.i.if.end130.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.i

if.end109.i.sw.epilog_crit_edge:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end109.thread.i:                               ; preds = %err.i
  %ok_to_ignore_lock108.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 3
  %59 = ptrtoint ptr %ok_to_ignore_lock108.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %ok_to_ignore_lock108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp110218.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp110218.i, label %if.end109.thread.i.sw.epilog_crit_edge, label %if.end109.thread.i.if.then116.i_crit_edge

if.end109.thread.i.if.then116.i_crit_edge:        ; preds = %if.end109.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116.i

if.end109.thread.i.sw.epilog_crit_edge:           ; preds = %if.end109.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then116.sink.split.i:                          ; preds = %err.thread.i.if.then116.sink.split.i_crit_edge, %err.thread238.i.if.then116.sink.split.i_crit_edge
  %ok_to_ignore_lock108248.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %ok_to_ignore_lock108248.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %ok_to_ignore_lock108248.i, align 4
  br label %if.then116.i

if.then116.i:                                     ; preds = %if.then116.sink.split.i, %if.end109.thread.i.if.then116.i_crit_edge
  %low_thresh_exp.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %low_thresh_exp.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %low_thresh_exp.i, align 1
  %conv117.i = zext i8 %62 to i16
  %shl.i = shl i16 %conv117.i, 12
  %low_thresh_mantissa.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 10
  %63 = ptrtoint ptr %low_thresh_mantissa.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %low_thresh_mantissa.i, align 2
  %or.i = or i16 %shl.i, %64
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = call i16 @llvm.bswap.i16(i16 %or.i) #7
  %call.i208.i = call i32 @i2c_smbus_write_word_data(ptr noundef %66, i8 noundef zeroext 2, i16 noundef zeroext %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i)
  %cmp122.i = icmp slt i32 %call.i208.i, 0
  br i1 %cmp122.i, label %do.end127.i, label %if.then116.i.if.end130.i_crit_edge

if.then116.i.if.end130.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.i

do.end127.i:                                      ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev128.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %dev128.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev128.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.23, i32 noundef 2) #10
  br label %sw.epilog

if.end130.i:                                      ; preds = %if.then116.i.if.end130.i_crit_edge, %if.end109.i.if.end130.i_crit_edge, %err.thread.i.if.end130.i_crit_edge, %err.thread238.i.if.end130.i_crit_edge
  %result131.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %result131.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %result131.i, align 4
  %72 = lshr i16 %71, 12
  %conv133.i = zext i16 %72 to i32
  %73 = and i16 %71, 4095
  %conv.i209.i = zext i16 %73 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i209.i, %conv133.i
  %mul.i.i = mul nuw nsw i32 %shl.i.i, 10
  %div.i229.i = udiv i32 %shl.i.i, 100
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %div.i229.i, ptr %val, align 4
  %mul2.neg.i.i = mul nsw i32 %div.i229.i, -1000
  %sub.i.i = add nsw i32 %mul2.neg.i.i, %mul.i.i
  %mul3.i.i = mul i32 %sub.i.i, 1000
  %75 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul3.i.i, ptr %val2, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %val, align 4
  %int_time.i15 = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 7
  %77 = ptrtoint ptr %int_time.i15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %int_time.i15, align 4
  %79 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %if.end130.i, %do.end127.i, %if.end109.thread.i.sw.epilog_crit_edge, %if.end109.i.sw.epilog_crit_edge, %if.end109.thread.i.thread, %err.i.thread.sw.epilog_crit_edge, %if.end71.i.sw.epilog_crit_edge, %do.end.i, %if.end3.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 2, %sw.bb5 ], [ -22, %if.end3.sw.epilog_crit_edge ], [ %call.i.i, %do.end.i ], [ %call.i208.i, %do.end127.i ], [ 2, %if.end130.i ], [ -110, %if.end71.i.sw.epilog_crit_edge ], [ %ret.0.i, %if.end109.i.sw.epilog_crit_edge ], [ %ret.0.i, %if.end109.thread.i.sw.epilog_crit_edge ], [ -110, %if.end109.thread.i.thread ], [ -110, %err.i.thread.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_write_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp eq i32 %3, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp1.not = icmp eq i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %mask)
  %cmp4.not = icmp eq i32 %mask, 18
  %or.cond = and i1 %cmp4.not, %cmp1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp7.not = icmp eq i32 %val, 0
  %or.cond16 = and i1 %cmp7.not, %or.cond
  br i1 %or.cond16, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %conv1.i.i = zext i16 %8 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %opt3001_set_int_time.exit

if.end.i:                                         ; preds = %if.end9
  %11 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %val2, label %if.end.i.opt3001_set_int_time.exit_crit_edge [
    i32 100000, label %sw.bb.i
    i32 800000, label %sw.bb3.i
  ]

if.end.i.opt3001_set_int_time.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %opt3001_set_int_time.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = trunc i32 %cond.i.i to i16
  %conv2.i = and i16 %12, -2049
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = trunc i32 %cond.i.i to i16
  %conv5.i = or i16 %13, 2048
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb.i
  %reg.0.i = phi i16 [ %conv5.i, %sw.bb3.i ], [ %conv2.i, %sw.bb.i ]
  %int_time6.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %int_time6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %val2, ptr %int_time6.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %reg.0.i) #7
  %call.i18.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %16, i8 noundef zeroext 1, i16 noundef zeroext %17) #7
  br label %opt3001_set_int_time.exit

opt3001_set_int_time.exit:                        ; preds = %sw.epilog.i, %if.end.i.opt3001_set_int_time.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i18.i, %sw.epilog.i ], [ -22, %if.end.i.opt3001_set_int_time.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %opt3001_set_int_time.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %opt3001_set_int_time.exit ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @opt3001_read_event_config(ptr nocapture noundef readonly %iio, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp eq i32 %3, 1024
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_write_event_config(ptr nocapture noundef readonly %iio, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %mode4 = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode4, align 4
  br i1 %tobool.not, label %land.lhs.true3.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp eq i32 %3, 1024
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true3.critedge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %land.lhs.true3.critedge.cleanup_crit_edge, label %land.lhs.true3.critedge.if.end7_crit_edge

land.lhs.true3.critedge.if.end7_crit_edge:        ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true3.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true3.critedge.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge
  %cond = phi i16 [ 0, %land.lhs.true3.critedge.if.end7_crit_edge ], [ 1024, %land.lhs.true.if.end7_crit_edge ]
  %lock = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.err.sink.split_crit_edge, label %if.end13

if.end7.err.sink.split_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split

if.end13:                                         ; preds = %if.end7
  %conv.i = trunc i32 %call.i to i16
  %6 = and i16 %conv.i, -7
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv2.i = zext i16 %cond to i32
  %or9.i = or i16 %7, %cond
  %mode6.i = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %mode6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2.i, ptr %mode6.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %or9.i) #7
  %call.i42 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %10, i8 noundef zeroext 1, i16 noundef zeroext %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp17 = icmp slt i32 %call.i42, 0
  br i1 %cmp17, label %if.end13.err.sink.split_crit_edge, label %if.end13.err_crit_edge

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end13.err.sink.split_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split

err.sink.split:                                   ; preds = %if.end13.err.sink.split_crit_edge, %if.end7.err.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.13, %if.end7.err.sink.split_crit_edge ], [ @.str.23, %if.end13.err.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %if.end7.err.sink.split_crit_edge ], [ %call.i42, %if.end13.err.sink.split_crit_edge ]
  %dev23 = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.23.sink, i32 noundef 1) #10
  br label %err

err:                                              ; preds = %err.sink.split, %if.end13.err_crit_edge
  %ret.0 = phi i32 [ %call.i42, %if.end13.err_crit_edge ], [ %ret.0.ph, %err.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %land.lhs.true3.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true3.critedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_read_event_value(ptr nocapture noundef readonly %iio, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %dir, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %high_thresh_exp = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 11
  %high_thresh_mantissa = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 9
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %low_thresh_exp = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 12
  %low_thresh_mantissa = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %.sink21.in = phi ptr [ %high_thresh_mantissa, %sw.bb ], [ %low_thresh_mantissa, %sw.bb1 ]
  %.sink.in = phi ptr [ %high_thresh_exp, %sw.bb ], [ %low_thresh_exp, %sw.bb1 ]
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %.sink = load i8, ptr %.sink.in, align 1
  %4 = ptrtoint ptr %.sink21.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %.sink21 = load i16, ptr %.sink21.in, align 2
  %conv.i = zext i16 %.sink21 to i32
  %conv1.i = zext i8 %.sink to i32
  %shl.i = shl i32 %conv.i, %conv1.i
  %mul.i.sink = mul i32 %shl.i, 10
  %div.i = sdiv i32 %mul.i.sink, 1000
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %val, align 4
  %mul2.neg.i17 = mul nsw i32 %div.i, -1000
  %sub.i18 = add i32 %mul2.neg.i17, %mul.i.sink
  %mul3.i19 = mul i32 %sub.i18, 1000
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul3.i19, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 2, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opt3001_write_event_value(ptr nocapture noundef readonly %iio, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp slt i32 %val, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %mul.i = mul i32 %val, 1000
  %div.i = sdiv i32 %val2, 1000
  %add.i = add i32 %div.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40950, i32 %add.i)
  %cmp6.not.i = icmp sgt i32 %add.i, 40950
  br i1 %cmp6.not.i, label %for.inc.critedge.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 81900, i32 %add.i)
  %cmp6.not.1.i = icmp ugt i32 %add.i, 81900
  br i1 %cmp6.not.1.i, label %for.inc.critedge.1.i, label %for.inc.critedge.i.if.end4_crit_edge

for.inc.critedge.i.if.end4_crit_edge:             ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.1.i:                             ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 163800, i32 %add.i)
  %cmp6.not.2.i = icmp ugt i32 %add.i, 163800
  br i1 %cmp6.not.2.i, label %for.inc.critedge.2.i, label %for.inc.critedge.1.i.if.end4_crit_edge

for.inc.critedge.1.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.2.i:                             ; preds = %for.inc.critedge.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 327600, i32 %add.i)
  %cmp6.not.3.i = icmp ugt i32 %add.i, 327600
  br i1 %cmp6.not.3.i, label %for.inc.critedge.3.i, label %for.inc.critedge.2.i.if.end4_crit_edge

for.inc.critedge.2.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.3.i:                             ; preds = %for.inc.critedge.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 655200, i32 %add.i)
  %cmp6.not.4.i = icmp ugt i32 %add.i, 655200
  br i1 %cmp6.not.4.i, label %for.inc.critedge.4.i, label %for.inc.critedge.3.i.if.end4_crit_edge

for.inc.critedge.3.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.4.i:                             ; preds = %for.inc.critedge.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1310400, i32 %add.i)
  %cmp6.not.5.i = icmp ugt i32 %add.i, 1310400
  br i1 %cmp6.not.5.i, label %for.inc.critedge.5.i, label %for.inc.critedge.4.i.if.end4_crit_edge

for.inc.critedge.4.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.5.i:                             ; preds = %for.inc.critedge.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2620800, i32 %add.i)
  %cmp6.not.6.i = icmp ugt i32 %add.i, 2620800
  br i1 %cmp6.not.6.i, label %for.inc.critedge.6.i, label %for.inc.critedge.5.i.if.end4_crit_edge

for.inc.critedge.5.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.6.i:                             ; preds = %for.inc.critedge.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5241600, i32 %add.i)
  %cmp6.not.7.i = icmp ugt i32 %add.i, 5241600
  br i1 %cmp6.not.7.i, label %for.inc.critedge.7.i, label %for.inc.critedge.6.i.if.end4_crit_edge

for.inc.critedge.6.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.7.i:                             ; preds = %for.inc.critedge.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10483200, i32 %add.i)
  %cmp6.not.8.i = icmp ugt i32 %add.i, 10483200
  br i1 %cmp6.not.8.i, label %for.inc.critedge.8.i, label %for.inc.critedge.7.i.if.end4_crit_edge

for.inc.critedge.7.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.8.i:                             ; preds = %for.inc.critedge.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20966400, i32 %add.i)
  %cmp6.not.9.i = icmp ugt i32 %add.i, 20966400
  br i1 %cmp6.not.9.i, label %for.inc.critedge.9.i, label %for.inc.critedge.8.i.if.end4_crit_edge

for.inc.critedge.8.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.critedge.9.i:                             ; preds = %for.inc.critedge.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 83865600, i32 %add.i)
  %cmp6.not.10.i = icmp ugt i32 %add.i, 83865600
  br i1 %cmp6.not.10.i, label %do.end, label %for.inc.critedge.9.i.if.end4_crit_edge

for.inc.critedge.9.i.if.end4_crit_edge:           ; preds = %for.inc.critedge.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %for.inc.critedge.9.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef %val, i32 noundef %val2) #10
  br label %err

if.end4:                                          ; preds = %for.inc.critedge.9.i.if.end4_crit_edge, %for.inc.critedge.8.i.if.end4_crit_edge, %for.inc.critedge.7.i.if.end4_crit_edge, %for.inc.critedge.6.i.if.end4_crit_edge, %for.inc.critedge.5.i.if.end4_crit_edge, %for.inc.critedge.4.i.if.end4_crit_edge, %for.inc.critedge.3.i.if.end4_crit_edge, %for.inc.critedge.2.i.if.end4_crit_edge, %for.inc.critedge.1.i.if.end4_crit_edge, %for.inc.critedge.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %i.02.lcssa.i = phi i8 [ 0, %if.end.if.end4_crit_edge ], [ 1, %for.inc.critedge.i.if.end4_crit_edge ], [ 2, %for.inc.critedge.1.i.if.end4_crit_edge ], [ 3, %for.inc.critedge.2.i.if.end4_crit_edge ], [ 4, %for.inc.critedge.3.i.if.end4_crit_edge ], [ 5, %for.inc.critedge.4.i.if.end4_crit_edge ], [ 6, %for.inc.critedge.5.i.if.end4_crit_edge ], [ 7, %for.inc.critedge.6.i.if.end4_crit_edge ], [ 8, %for.inc.critedge.7.i.if.end4_crit_edge ], [ 9, %for.inc.critedge.8.i.if.end4_crit_edge ], [ 10, %for.inc.critedge.9.i.if.end4_crit_edge ]
  %div5 = sdiv i32 %add.i, 10
  %conv = zext i8 %i.02.lcssa.i to i32
  %shr = ashr i32 %div5, %conv
  %conv6 = trunc i32 %shr to i16
  %shl = shl nuw nsw i32 %conv, 12
  %or = or i32 %shl, %shr
  %conv9 = trunc i32 %or to i16
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %dir, label %if.end4.err_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %high_thresh_mantissa = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %high_thresh_mantissa to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv6, ptr %high_thresh_mantissa, align 4
  %high_thresh_exp = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %high_thresh_exp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %i.02.lcssa.i, ptr %high_thresh_exp, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %low_thresh_mantissa = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %low_thresh_mantissa to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv6, ptr %low_thresh_mantissa, align 2
  %low_thresh_exp = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %low_thresh_exp to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %i.02.lcssa.i, ptr %low_thresh_exp, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb
  %reg.0 = phi i16 [ 2, %sw.bb10 ], [ 3, %sw.bb ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv11 = trunc i16 %reg.0 to i8
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv9) #7
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %10, i8 noundef zeroext %conv11, i16 noundef zeroext %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %do.end18, label %sw.epilog.err_crit_edge

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.opt3001, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev19, align 4
  %conv20 = zext i16 %reg.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %conv20) #10
  br label %err

err:                                              ; preds = %do.end18, %sw.epilog.err_crit_edge, %if.end4.err_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end18 ], [ %call.i, %sw.epilog.err_crit_edge ], [ -22, %if.end4.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_opt3001__289_851_opt3001_driver_init6, !1, !"__initcall__kmod_opt3001__289_851_opt3001_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/opt3001.c", i32 851, i32 1}
!2 = !{ptr @__exitcall_opt3001_driver_exit, !1, !"__exitcall_opt3001_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/opt3001.c", i32 853, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/iio/light/opt3001.c", i32 854, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/iio/light/opt3001.c", i32 855, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/opt3001.c", i32 846, i32 11}
!12 = !{ptr @opt3001_driver, !13, !"opt3001_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/opt3001.c", i32 840, i32 26}
!14 = !{ptr @opt3001_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/opt3001.c", i32 756, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @opt3001_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/opt3001.c", i32 757, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/light/opt3001.c", i32 776, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @opt3001_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @opt3001_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/opt3001.c", i32 786, i32 4}
!30 = !{ptr @opt3001_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @opt3001_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/opt3001.c", i32 791, i32 3}
!34 = !{ptr @opt3001_probe.__UNIQUE_ID_ddebug288, !33, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/opt3001.c", i32 598, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @opt3001_read_id._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @opt3001_read_id._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @opt3001_read_id._entry.15, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/opt3001.c", i32 608, i32 3}
!42 = !{ptr @opt3001_read_id._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/opt3001.c", i32 615, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @opt3001_read_id._entry.17, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @opt3001_read_id._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/opt3001.c", i32 628, i32 3}
!50 = !{ptr @opt3001_configure._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @opt3001_configure._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/opt3001.c", i32 657, i32 3}
!54 = !{ptr @opt3001_configure._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @opt3001_configure._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @opt3001_configure._entry.25, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/opt3001.c", i32 664, i32 3}
!58 = !{ptr @opt3001_configure._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @opt3001_configure._entry.27, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/opt3001.c", i32 674, i32 3}
!61 = !{ptr @opt3001_configure._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @opt3001_channels, !63, !"opt3001_channels", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/opt3001.c", i32 213, i32 35}
!64 = !{ptr @opt3001_event_spec, !65, !"opt3001_event_spec", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/opt3001.c", i32 198, i32 36}
!66 = !{ptr @opt3001_info, !67, !"opt3001_info", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/opt3001.c", i32 580, i32 30}
!68 = !{ptr @opt3001_attribute_group, !69, !"opt3001_attribute_group", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/opt3001.c", i32 194, i32 37}
!70 = !{ptr @opt3001_attributes, !71, !"opt3001_attributes", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/opt3001.c", i32 189, i32 26}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/opt3001.c", i32 187, i32 8}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @iio_const_attr_integration_time_available, !73, !"iio_const_attr_integration_time_available", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/light/opt3001.c", i32 243, i32 4}
!78 = !{ptr @opt3001_get_lux._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @opt3001_get_lux._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @opt3001_get_lux._entry.32, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/iio/light/opt3001.c", i32 258, i32 3}
!82 = !{ptr @opt3001_get_lux._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @opt3001_get_lux._entry.34, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/opt3001.c", i32 269, i32 3}
!85 = !{ptr @opt3001_get_lux._entry_ptr.35, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @opt3001_get_lux._entry.36, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/iio/light/opt3001.c", i32 291, i32 4}
!88 = !{ptr @opt3001_get_lux._entry_ptr.37, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @opt3001_get_lux._entry.38, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/iio/light/opt3001.c", i32 304, i32 4}
!91 = !{ptr @opt3001_get_lux._entry_ptr.39, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @opt3001_get_lux._entry.40, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/opt3001.c", i32 333, i32 4}
!94 = !{ptr @opt3001_get_lux._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/opt3001.c", i32 362, i32 3}
!97 = !{ptr @opt3001_set_int_time._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @opt3001_set_int_time._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/light/opt3001.c", i32 558, i32 3}
!101 = !{ptr @opt3001_write_event_config._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @opt3001_write_event_config._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @opt3001_write_event_config._entry.44, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/iio/light/opt3001.c", i32 569, i32 3}
!105 = !{ptr @opt3001_write_event_config._entry_ptr.45, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/light/opt3001.c", i32 492, i32 3}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @opt3001_write_event_value._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @opt3001_write_event_value._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @opt3001_write_event_value._entry.48, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/iio/light/opt3001.c", i32 517, i32 3}
!113 = !{ptr @opt3001_write_event_value._entry_ptr.49, !112, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"opt3001_scales", i1 false, i1 false}
!115 = !{!"../drivers/iio/light/opt3001.c", i32 100, i32 35}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/light/opt3001.c", i32 697, i32 3}
!118 = !{ptr @opt3001_irq._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @opt3001_irq._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @opt3001_irq._entry.51, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/iio/light/opt3001.c", i32 719, i32 4}
!122 = !{ptr @opt3001_irq._entry_ptr.52, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/light/opt3001.c", i32 809, i32 3}
!125 = !{ptr @opt3001_remove._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @opt3001_remove._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @opt3001_remove._entry.54, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/iio/light/opt3001.c", i32 820, i32 3}
!129 = !{ptr @opt3001_remove._entry_ptr.55, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @opt3001_of_match, !131, !"opt3001_of_match", i1 false, i1 false}
!131 = !{!"../drivers/iio/light/opt3001.c", i32 834, i32 34}
!132 = !{ptr @opt3001_id, !133, !"opt3001_id", i1 false, i1 false}
!133 = !{!"../drivers/iio/light/opt3001.c", i32 828, i32 35}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148774350, i64 2148774355, i64 2148774368, i64 2148774412, i64 2148774446, i64 2148774467}
!144 = !{i8 0, i8 2}
