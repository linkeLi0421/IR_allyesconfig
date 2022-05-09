; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/goodix.c_pt.bc'
source_filename = "../drivers/input/touchscreen/goodix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.goodix_chip_id = type { ptr, ptr }
%struct.goodix_chip_data = type { i16, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.goodix_ts_data = type { ptr, ptr, ptr, ptr, ptr, %struct.touchscreen_properties, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, [5 x i8], [64 x i8], i16, i8, i8, %struct.completion, i32, i32, i32, [240 x i8], [7 x i16], [6 x i8], i32, ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@goodix_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error reading %d bytes from 0x%04x: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goodix_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/goodix.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@goodix_i2c_read._entry_ptr = internal global ptr @goodix_i2c_read._entry, section ".printk_index", align 4
@goodix_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error writing %d bytes to 0x%04x: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"goodix_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@goodix_i2c_write._entry_ptr = internal global ptr @goodix_i2c_write._entry, section ".printk_index", align 4
@goodix_send_cfg.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"goodix_ts\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goodix_send_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Config sent successfully.\00", [38 x i8] zeroinitializer }, align 32
@goodix_int_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 741, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Controller irq sync failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goodix_int_sync\00", [16 x i8] zeroinitializer }, align 32
@goodix_int_sync._entry_ptr = internal global ptr @goodix_int_sync._entry, section ".printk_index", align 4
@goodix_reset_no_int_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Controller reset failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"goodix_reset_no_int_sync\00", [39 x i8] zeroinitializer }, align 32
@goodix_reset_no_int_sync._entry_ptr = internal global ptr @goodix_reset_no_int_sync._entry, section ".printk_index", align 4
@__initcall__kmod_goodix_ts__292_1539_goodix_ts_driver_init6 = internal global ptr @goodix_ts_driver_init, section ".initcall6.init", align 4
@goodix_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @goodix_ts_probe, ptr @goodix_ts_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.22, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @goodix_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @goodix_pm_ops, ptr null, ptr null }, ptr @goodix_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_goodix_ts_driver_exit = internal global ptr @goodix_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [67 x i8] c"goodix_ts.author=Benjamin Tissoires <benjamin.tissoires@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"goodix_ts.author=Bastien Nocera <hadess@hadess.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [48 x i8] c"goodix_ts.description=Goodix touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [51 x i8] c"goodix_ts.file=drivers/input/touchscreen/goodix_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [25 x i8] c"goodix_ts.license=GPL v2\00", section ".modinfo", align 1
@goodix_check_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 614, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"The length of the config fw is not correct\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"goodix_check_cfg\00", [47 x i8] zeroinitializer }, align 32
@goodix_check_cfg._entry_ptr = internal global ptr @goodix_check_cfg._entry, section ".printk_index", align 4
@goodix_irq_direction_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 688, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s called without an irq_pin_access_method set\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"goodix_irq_direction_output\00", [36 x i8] zeroinitializer }, align 32
@goodix_irq_direction_output._entry_ptr = internal global ptr @goodix_irq_direction_output._entry, section ".printk_index", align 4
@goodix_pin_acpi_output_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s called on device without ACPI support\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"goodix_pin_acpi_output_method\00", [34 x i8] zeroinitializer }, align 32
@goodix_pin_acpi_output_method._entry_ptr = internal global ptr @goodix_pin_acpi_output_method._entry, section ".printk_index", align 4
@goodix_irq_direction_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.20, ptr @.str.2, i32 711, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"goodix_irq_direction_input\00", [37 x i8] zeroinitializer }, align 32
@goodix_irq_direction_input._entry_ptr = internal global ptr @goodix_irq_direction_input._entry, section ".printk_index", align 4
@goodix_pin_acpi_direction_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.21, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"goodix_pin_acpi_direction_input\00", [32 x i8] zeroinitializer }, align 32
@goodix_pin_acpi_direction_input._entry_ptr = internal global ptr @goodix_pin_acpi_direction_input._entry, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Goodix-TS\00", [22 x i8] zeroinitializer }, align 32
@goodix_of_match = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt1151\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt5663\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt5688\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt9110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt9147\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt917s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt927\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt9271\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt928\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt9286\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"goodix,gt967\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@goodix_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @goodix_suspend, ptr @goodix_resume, ptr @goodix_suspend, ptr @goodix_resume, ptr @goodix_suspend, ptr @goodix_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@goodix_ts_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"GDIX1001:00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@goodix_ts_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goodix_ts_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I2C Address: 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@goodix_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I2C check functionality failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@goodix_ts_probe._entry_ptr = internal global ptr @goodix_ts_probe._entry, section ".printk_index", align 4
@goodix_ts_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.2, i32 1305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable AVDD28 regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@goodix_ts_probe._entry_ptr.28 = internal global ptr @goodix_ts_probe._entry.26, section ".printk_index", align 4
@goodix_ts_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.2, i32 1313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable VDDIO regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@goodix_ts_probe._entry_ptr.31 = internal global ptr @goodix_ts_probe._entry.29, section ".printk_index", align 4
@goodix_ts_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.2, i32 1339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2C communication failure: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@goodix_ts_probe._entry_ptr.34 = internal global ptr @goodix_ts_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"goodix,config-name\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"goodix/%s\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"goodix_%s_cfg.bin\00", [46 x i8] zeroinitializer }, align 32
@goodix_ts_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.23, ptr @.str.2, i32 1371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to invoke firmware loader: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@goodix_ts_probe._entry_ptr.40 = internal global ptr @goodix_ts_probe._entry.38, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AVDD28\00", [25 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 960, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get AVDD28 regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"goodix_get_gpio_config\00", [41 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry_ptr = internal global ptr @goodix_get_gpio_config._entry, section ".printk_index", align 4
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDIO\00", [26 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 969, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get VDDIO regulator: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry_ptr.48 = internal global ptr @goodix_get_gpio_config._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.2, i32 980, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get %s GPIO: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry_ptr.52 = internal global ptr @goodix_get_gpio_config._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.2, i32 997, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@goodix_get_gpio_config._entry_ptr.55 = internal global ptr @goodix_get_gpio_config._entry.54, section ".printk_index", align 4
@goodix_read_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1093, ptr @.str.58, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ID %s, version: %04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"goodix_read_version\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@goodix_read_version._entry_ptr = internal global ptr @goodix_read_version._entry, section ".printk_index", align 4
@goodix_chip_ids = internal constant { [15 x %struct.goodix_chip_id], [40 x i8] } { [15 x %struct.goodix_chip_id] [%struct.goodix_chip_id { ptr @.str.59, ptr @gt1x_chip_data }, %struct.goodix_chip_id { ptr @.str.60, ptr @gt1x_chip_data }, %struct.goodix_chip_id { ptr @.str.61, ptr @gt1x_chip_data }, %struct.goodix_chip_id { ptr @.str.62, ptr @gt1x_chip_data }, %struct.goodix_chip_id { ptr @.str.63, ptr @gt1x_chip_data }, %struct.goodix_chip_id { ptr @.str.64, ptr @gt911_chip_data }, %struct.goodix_chip_id { ptr @.str.65, ptr @gt911_chip_data }, %struct.goodix_chip_id { ptr @.str.66, ptr @gt911_chip_data }, %struct.goodix_chip_id { ptr @.str.67, ptr @gt911_chip_data }, %struct.goodix_chip_id { ptr @.str.68, ptr @gt911_chip_data }, %struct.goodix_chip_id { ptr @.str.69, ptr @gt911_chip_data }, %struct.goodix_chip_id { ptr @.str.70, ptr @gt967_chip_data }, %struct.goodix_chip_id { ptr @.str.71, ptr @gt967_chip_data }, %struct.goodix_chip_id { ptr @.str.72, ptr @gt967_chip_data }, %struct.goodix_chip_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gt9x_chip_data = internal constant { %struct.goodix_chip_data, [16 x i8] } { %struct.goodix_chip_data { i16 -32697, i32 240, ptr @goodix_check_cfg_8, ptr @goodix_calc_cfg_checksum_8 }, [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1151\00", [27 x i8] zeroinitializer }, align 32
@gt1x_chip_data = internal constant { %struct.goodix_chip_data, [16 x i8] } { %struct.goodix_chip_data { i16 -32688, i32 240, ptr @goodix_check_cfg_16, ptr @goodix_calc_cfg_checksum_16 }, [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5663\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5688\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"917S\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9286\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"911\00", [28 x i8] zeroinitializer }, align 32
@gt911_chip_data = internal constant { %struct.goodix_chip_data, [16 x i8] } { %struct.goodix_chip_data { i16 -32697, i32 186, ptr @goodix_check_cfg_8, ptr @goodix_calc_cfg_checksum_8 }, [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9271\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9110\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9111\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"927\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"928\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"912\00", [28 x i8] zeroinitializer }, align 32
@gt967_chip_data = internal constant { %struct.goodix_chip_data, [16 x i8] } { %struct.goodix_chip_data { i16 -32697, i32 228, ptr @goodix_check_cfg_8, ptr @goodix_calc_cfg_checksum_8 }, [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9147\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"967\00", [28 x i8] zeroinitializer }, align 32
@goodix_check_cfg_16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"The checksum of the config fw is not correct\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"goodix_check_cfg_16\00", [44 x i8] zeroinitializer }, align 32
@goodix_check_cfg_16._entry_ptr = internal global ptr @goodix_check_cfg_16._entry, section ".printk_index", align 4
@goodix_check_cfg_16._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 582, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Config fw must have Config_Fresh register set\00", [50 x i8] zeroinitializer }, align 32
@goodix_check_cfg_16._entry_ptr.77 = internal global ptr @goodix_check_cfg_16._entry.75, section ".printk_index", align 4
@goodix_check_cfg_8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.78, ptr @.str.2, i32 539, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"goodix_check_cfg_8\00", [45 x i8] zeroinitializer }, align 32
@goodix_check_cfg_8._entry_ptr = internal global ptr @goodix_check_cfg_8._entry, section ".printk_index", align 4
@goodix_check_cfg_8._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.78, ptr @.str.2, i32 545, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@goodix_check_cfg_8._entry_ptr.80 = internal global ptr @goodix_check_cfg_8._entry.79, section ".printk_index", align 4
@goodix_configure_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device.\00", [63 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"goodix_configure_dev\00", [43 x i8] zeroinitializer }, align 32
@goodix_configure_dev._entry_ptr = internal global ptr @goodix_configure_dev._entry, section ".printk_index", align 4
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Goodix Capacitive TouchScreen\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"input/ts\00", [23 x i8] zeroinitializer }, align 32
@goodix_configure_dev._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.2, i32 1180, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid config (%d, %d, %d), using defaults\0A\00", [51 x i8] zeroinitializer }, align 32
@goodix_configure_dev._entry_ptr.87 = internal global ptr @goodix_configure_dev._entry.85, section ".printk_index", align 4
@goodix_configure_dev._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.82, ptr @.str.2, i32 1207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize MT slots: %d\00", [62 x i8] zeroinitializer }, align 32
@goodix_configure_dev._entry_ptr.92 = internal global ptr @goodix_configure_dev._entry.90, section ".printk_index", align 4
@goodix_configure_dev._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.82, ptr @.str.2, i32 1214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register input device: %d\00", [60 x i8] zeroinitializer }, align 32
@goodix_configure_dev._entry_ptr.95 = internal global ptr @goodix_configure_dev._entry.93, section ".printk_index", align 4
@goodix_irq_flags = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 8, i32 4], [16 x i8] zeroinitializer }, align 32
@goodix_configure_dev._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.82, ptr @.str.2, i32 1221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request IRQ failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@goodix_configure_dev._entry_ptr.98 = internal global ptr @goodix_configure_dev._entry.96, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Goodix Active Pen\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"input/pen\00", [22 x i8] zeroinitializer }, align 32
@goodix_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1472, ptr @.str.58, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Config version mismatch %d != %d, resetting controller\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"goodix_resume\00", [18 x i8] zeroinitializer }, align 32
@goodix_resume._entry_ptr = internal global ptr @goodix_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 181, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 220, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 640, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 741, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 788, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"goodix_ts_driver\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1528, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 613, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 686, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 676, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 709, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 669, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1533, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"goodix_of_match\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1509, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"goodix_pm_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1491, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"goodix_ts_id\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1493, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1280, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1283, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1303, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1311, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1339, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1356, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1360, i32 6 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1363, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1369, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 87, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 955, i32 39 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 959, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 964, i32 38 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 968, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 975, i32 39 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 979, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 992, i32 39 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 996, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1092, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [16 x i8] c"goodix_chip_ids\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 96, i32 36 }
@___asan_gen_.319 = private unnamed_addr constant [15 x i8] c"gt9x_chip_data\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 89, i32 38 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 97, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant [15 x i8] c"gt1x_chip_data\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 68, i32 38 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 98, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 99, i32 10 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 100, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 101, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 103, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant [16 x i8] c"gt911_chip_data\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 75, i32 38 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 104, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 105, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 106, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 107, i32 10 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 108, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 110, i32 10 }
@___asan_gen_.364 = private unnamed_addr constant [16 x i8] c"gt967_chip_data\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 82, i32 38 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 111, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 112, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 575, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 581, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 538, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 544, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1140, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1144, i32 24 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1145, i32 24 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1178, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1206, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1213, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant [17 x i8] c"goodix_irq_flags\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 116, i32 28 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1221, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 335, i32 16 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 336, i32 16 }
@___asan_gen_.445 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.452 = private constant [38 x i8] c"../drivers/input/touchscreen/goodix.c\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 1471, i32 3 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_goodix_ts_driver_exit, ptr @__initcall__kmod_goodix_ts__292_1539_goodix_ts_driver_init6, ptr @goodix_check_cfg._entry, ptr @goodix_check_cfg._entry_ptr, ptr @goodix_check_cfg_16._entry, ptr @goodix_check_cfg_16._entry.75, ptr @goodix_check_cfg_16._entry_ptr, ptr @goodix_check_cfg_16._entry_ptr.77, ptr @goodix_check_cfg_8._entry, ptr @goodix_check_cfg_8._entry.79, ptr @goodix_check_cfg_8._entry_ptr, ptr @goodix_check_cfg_8._entry_ptr.80, ptr @goodix_configure_dev._entry, ptr @goodix_configure_dev._entry.85, ptr @goodix_configure_dev._entry.90, ptr @goodix_configure_dev._entry.93, ptr @goodix_configure_dev._entry.96, ptr @goodix_configure_dev._entry_ptr, ptr @goodix_configure_dev._entry_ptr.87, ptr @goodix_configure_dev._entry_ptr.92, ptr @goodix_configure_dev._entry_ptr.95, ptr @goodix_configure_dev._entry_ptr.98, ptr @goodix_get_gpio_config._entry, ptr @goodix_get_gpio_config._entry.46, ptr @goodix_get_gpio_config._entry.50, ptr @goodix_get_gpio_config._entry.54, ptr @goodix_get_gpio_config._entry_ptr, ptr @goodix_get_gpio_config._entry_ptr.48, ptr @goodix_get_gpio_config._entry_ptr.52, ptr @goodix_get_gpio_config._entry_ptr.55, ptr @goodix_i2c_read._entry, ptr @goodix_i2c_read._entry_ptr, ptr @goodix_i2c_write._entry, ptr @goodix_i2c_write._entry_ptr, ptr @goodix_int_sync._entry, ptr @goodix_int_sync._entry_ptr, ptr @goodix_irq_direction_input._entry, ptr @goodix_irq_direction_input._entry_ptr, ptr @goodix_irq_direction_output._entry, ptr @goodix_irq_direction_output._entry_ptr, ptr @goodix_pin_acpi_direction_input._entry, ptr @goodix_pin_acpi_direction_input._entry_ptr, ptr @goodix_pin_acpi_output_method._entry, ptr @goodix_pin_acpi_output_method._entry_ptr, ptr @goodix_read_version._entry, ptr @goodix_read_version._entry_ptr, ptr @goodix_reset_no_int_sync._entry, ptr @goodix_reset_no_int_sync._entry_ptr, ptr @goodix_resume._entry, ptr @goodix_resume._entry_ptr, ptr @goodix_ts_driver_exit, ptr @goodix_ts_probe._entry, ptr @goodix_ts_probe._entry.26, ptr @goodix_ts_probe._entry.29, ptr @goodix_ts_probe._entry.32, ptr @goodix_ts_probe._entry.38, ptr @goodix_ts_probe._entry_ptr, ptr @goodix_ts_probe._entry_ptr.28, ptr @goodix_ts_probe._entry_ptr.31, ptr @goodix_ts_probe._entry_ptr.34, ptr @goodix_ts_probe._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @goodix_ts_driver, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @goodix_of_match, ptr @goodix_pm_ops, ptr @goodix_ts_id, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @init_completion.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @goodix_chip_ids, ptr @gt9x_chip_data, ptr @.str.59, ptr @gt1x_chip_data, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @gt911_chip_data, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @gt967_chip_data, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.91, ptr @.str.94, ptr @goodix_irq_flags, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_int_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_reset_no_int_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_check_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_irq_direction_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_pin_acpi_output_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_irq_direction_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_pin_acpi_direction_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_of_match to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_ts_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_ts_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_ts_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_ts_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_ts_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_get_gpio_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_get_gpio_config._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_get_gpio_config._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_get_gpio_config._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_read_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_chip_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt9x_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt1x_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt911_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt967_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_check_cfg_16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_check_cfg_16._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_check_cfg_8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_check_cfg_8._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_configure_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_configure_dev._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_configure_dev._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_configure_dev._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_irq_flags to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_configure_dev._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goodix_i2c_read(ptr noundef %client, i16 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %wbuf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #11
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf) #11
  %2 = ptrtoint ptr %wbuf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %reg, ptr %wbuf, align 2
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs, align 4
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len4, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %8 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %wbuf, ptr %buf6, align 4
  %arrayidx7 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %flags8 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags8, align 2
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayidx7, align 4
  %conv = trunc i32 %len to i16
  %len13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %len13 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %len13, align 4
  %buf15 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %buf15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf15, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp17 = icmp eq i32 %call, 2
  %cond = select i1 %cmp17, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31 = icmp slt i32 %call, 0
  %ret.0 = select i1 %cmp31, i32 %call, i32 %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %do.end

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv20 = zext i16 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %len, i32 noundef %conv20, i32 noundef %ret.0) #14
  br label %if.end21

if.end21:                                         ; preds = %do.end, %entry.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #11
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goodix_i2c_write(ptr noundef %client, i16 noundef zeroext %reg, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #11
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %add = add i32 %len, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = lshr i16 %reg, 8
  %conv1 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %call9.i, align 128
  %conv3 = trunc i16 %reg to i8
  %arrayidx4 = getelementptr i8, ptr %call9.i, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %call9.i, i32 2
  %5 = call ptr @memcpy(ptr %arrayidx5, ptr %buf, i32 %len)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %buf7, align 4
  %conv9 = trunc i32 %add to i16
  %len10 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv9, ptr %len10, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call11 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp14 = icmp eq i32 %call11, 1
  %cond = select i1 %cmp14, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp42 = icmp slt i32 %call11, 0
  %ret.0 = select i1 %cmp42, i32 %call11, i32 %cond
  call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool17.not = icmp eq i32 %ret.0, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %reg to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %len, i32 noundef %conv, i32 noundef %ret.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goodix_i2c_write_u8(ptr noundef %client, i16 noundef zeroext %reg, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %value.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %value, ptr %value.addr, align 1
  %call = call i32 @goodix_i2c_write(ptr noundef %client, i16 noundef zeroext %reg, ptr noundef nonnull %value.addr, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goodix_send_cfg(ptr noundef %ts, ptr noundef %cfg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %len, -241
  call void @__sanitizer_cov_trace_const_cmp4(i32 -55, i32 %0)
  %1 = icmp ult i32 %0, -55
  br i1 %1, label %goodix_check_cfg.exit.thread, label %goodix_check_cfg.exit

goodix_check_cfg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #14
  br label %cleanup

goodix_check_cfg.exit:                            ; preds = %entry
  %chip.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 3
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %check_config.i = getelementptr inbounds %struct.goodix_chip_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %check_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_config.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ts, ptr noundef %cfg, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %goodix_check_cfg.exit.cleanup_crit_edge

goodix_check_cfg.exit.cleanup_crit_edge:          ; preds = %goodix_check_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %goodix_check_cfg.exit
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 4
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %call1 = tail call i32 @goodix_i2c_write(ptr noundef %9, i16 noundef zeroext %13, ptr noundef %cfg, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @goodix_send_cfg.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@goodix_send_cfg, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !245

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @goodix_send_cfg.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %goodix_check_cfg.exit.cleanup_crit_edge, %goodix_check_cfg.exit.thread
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i, %goodix_check_cfg.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %goodix_check_cfg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goodix_int_sync(ptr nocapture noundef readonly %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_pin_access_method.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 22
  %0 = ptrtoint ptr %irq_pin_access_method.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_pin_access_method.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.do.end_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb5.i
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #14
  br label %do.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 10
  %5 = ptrtoint ptr %gpiod_int.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpiod_int.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %6, i32 noundef 0) #11
  br label %goodix_irq_direction_output.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int3.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 10
  %7 = ptrtoint ptr %gpiod_int3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpiod_int3.i, align 4
  %call4.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %8, i32 noundef 0) #11
  br label %goodix_irq_direction_output.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ts, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  br label %do.end

goodix_irq_direction_output.exit:                 ; preds = %sw.bb2.i, %sw.bb1.i
  %retval.0.i = phi i32 [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %goodix_irq_direction_output.exit.do.end_crit_edge

goodix_irq_direction_output.exit.do.end_crit_edge: ; preds = %goodix_irq_direction_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %goodix_irq_direction_output.exit
  tail call void @msleep(i32 noundef 50) #11
  %11 = ptrtoint ptr %irq_pin_access_method.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_pin_access_method.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %12, label %if.end.do.end_crit_edge [
    i32 0, label %do.end.i12
    i32 1, label %if.end.goodix_irq_direction_input.exit_crit_edge
    i32 2, label %if.end.goodix_irq_direction_input.exit_crit_edge26
    i32 3, label %sw.bb5.i20
  ]

if.end.goodix_irq_direction_input.exit_crit_edge26: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_irq_direction_input.exit

if.end.goodix_irq_direction_input.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_irq_direction_input.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.i12:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ts, align 4
  %dev.i11 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i11, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20) #14
  br label %do.end

sw.bb5.i20:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ts, align 4
  %dev.i.i19 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i19, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21) #14
  br label %do.end

goodix_irq_direction_input.exit:                  ; preds = %if.end.goodix_irq_direction_input.exit_crit_edge, %if.end.goodix_irq_direction_input.exit_crit_edge26
  %gpiod_int.i13 = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 10
  %18 = ptrtoint ptr %gpiod_int.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpiod_int.i13, align 4
  %call.i14 = tail call i32 @gpiod_direction_input(ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool2.not = icmp eq i32 %call.i14, 0
  br i1 %tobool2.not, label %goodix_irq_direction_input.exit.cleanup_crit_edge, label %goodix_irq_direction_input.exit.do.end_crit_edge

goodix_irq_direction_input.exit.do.end_crit_edge: ; preds = %goodix_irq_direction_input.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

goodix_irq_direction_input.exit.cleanup_crit_edge: ; preds = %goodix_irq_direction_input.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %goodix_irq_direction_input.exit.do.end_crit_edge, %sw.bb5.i20, %do.end.i12, %if.end.do.end_crit_edge, %goodix_irq_direction_output.exit.do.end_crit_edge, %sw.bb5.i, %do.end.i, %entry.do.end_crit_edge
  %error.0 = phi i32 [ %retval.0.i, %goodix_irq_direction_output.exit.do.end_crit_edge ], [ %call.i14, %goodix_irq_direction_input.exit.do.end_crit_edge ], [ -22, %sw.bb5.i ], [ -22, %do.end.i ], [ -22, %entry.do.end_crit_edge ], [ -22, %sw.bb5.i20 ], [ -22, %do.end.i12 ], [ -22, %if.end.do.end_crit_edge ]
  %20 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %goodix_irq_direction_input.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %do.end ], [ 0, %goodix_irq_direction_input.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goodix_reset_no_int_sync(ptr nocapture noundef readonly %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_rst = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 11
  %0 = ptrtoint ptr %gpiod_rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_rst, align 4
  %call = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #11
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %5)
  %cmp = icmp eq i16 %5, 20
  %conv1 = zext i1 %cmp to i32
  %irq_pin_access_method.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 22
  %6 = ptrtoint ptr %irq_pin_access_method.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_pin_access_method.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %7, label %if.end.do.end_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb5.i
  ]

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #14
  br label %do.end

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 10
  %9 = ptrtoint ptr %gpiod_int.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpiod_int.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %10, i32 noundef %conv1) #11
  br label %goodix_irq_direction_output.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int3.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 10
  %11 = ptrtoint ptr %gpiod_int3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpiod_int3.i, align 4
  %call4.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %12, i32 noundef %conv1) #11
  br label %goodix_irq_direction_output.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  br label %do.end

goodix_irq_direction_output.exit:                 ; preds = %sw.bb2.i, %sw.bb1.i
  %retval.0.i = phi i32 [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %if.end5, label %goodix_irq_direction_output.exit.do.end_crit_edge

goodix_irq_direction_output.exit.do.end_crit_edge: ; preds = %goodix_irq_direction_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end5:                                          ; preds = %goodix_irq_direction_output.exit
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 2000, i32 noundef 2) #11
  %13 = ptrtoint ptr %gpiod_rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod_rst, align 4
  %call7 = tail call i32 @gpiod_direction_output(ptr noundef %14, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end10:                                         ; preds = %if.end5
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 10000, i32 noundef 2) #11
  %15 = ptrtoint ptr %irq_pin_access_method.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_pin_access_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp11 = icmp eq i32 %16, 1
  br i1 %cmp11, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %17 = ptrtoint ptr %gpiod_rst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpiod_rst, align 4
  %call15 = tail call i32 @gpiod_direction_input(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.cleanup_crit_edge, label %if.then13.do.end_crit_edge

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then13.do.end_crit_edge, %if.end5.do.end_crit_edge, %goodix_irq_direction_output.exit.do.end_crit_edge, %sw.bb5.i, %do.end.i, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %error.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %retval.0.i, %goodix_irq_direction_output.exit.do.end_crit_edge ], [ %call7, %if.end5.do.end_crit_edge ], [ %call15, %if.then13.do.end_crit_edge ], [ -22, %sw.bb5.i ], [ -22, %do.end.i ], [ -22, %if.end.do.end_crit_edge ]
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %do.end ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_ts_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @goodix_ts_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @goodix_ts_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @goodix_ts_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_ts_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i.i = alloca i16, align 2
  %test.i = alloca i8, align 1
  %cfg_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg_name) #11
  %0 = ptrtoint ptr %cfg_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cfg_name, align 4, !annotation !246
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @goodix_ts_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@goodix_ts_probe, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr, align 2
  %conv = zext i16 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @goodix_ts_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %4) #11
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not = icmp eq i32 %and.i, 0
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev9, i32 noundef 480, i32 noundef 3520) #11
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %firmware_loading_complete = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %firmware_loading_complete to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %firmware_loading_complete, align 4
  %wait.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #11
  %contact_size = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 23
  %12 = ptrtoint ptr %contact_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %contact_size, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end15.cleanup_crit_edge, label %if.end.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %gpiod_rst_flags.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %gpiod_rst_flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %gpiod_rst_flags.i, align 4
  %call.i172 = tail call ptr @devm_regulator_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.42) #11
  %avdd28.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %avdd28.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i172, ptr %avdd28.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i172, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  %cmp.not.i = icmp eq ptr %call.i172, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then5.i.cleanup_crit_edge, label %do.end.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call.i172 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.43, i32 noundef %17) #14
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call ptr @devm_regulator_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.45) #11
  %vddio.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %vddio.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11.i, ptr %vddio.i, align 4
  %cmp.i130.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130.i, label %if.then14.i, label %retry_get_irq_gpio.i

if.then14.i:                                      ; preds = %if.end10.i
  %cmp17.not.i = icmp eq ptr %call11.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp17.not.i, label %if.then14.i.cleanup_crit_edge, label %do.end21.i

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call11.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.47, i32 noundef %19) #14
  br label %cleanup

retry_get_irq_gpio.i:                             ; preds = %if.end10.i
  %call24.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev2.i, ptr noundef nonnull @.str.49, i32 noundef 1) #11
  %cmp.i131.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131.i, label %if.then26.i, label %if.end44.i

if.then26.i:                                      ; preds = %retry_get_irq_gpio.i
  %cmp28.not.i = icmp eq ptr %call24.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp28.not.i, label %if.then26.i.cleanup_crit_edge, label %do.end32.i

if.then26.i.cleanup_crit_edge:                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end32.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call24.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %20) #14
  br label %cleanup

if.end44.i:                                       ; preds = %retry_get_irq_gpio.i
  %gpiod_int.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %gpiod_int.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call24.i, ptr %gpiod_int.i, align 4
  %22 = ptrtoint ptr %gpiod_rst_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gpiod_rst_flags.i, align 4
  %call46.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev2.i, ptr noundef nonnull @.str.53, i32 noundef %23) #11
  %cmp.i132.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132.i, label %if.then48.i, label %if.end56.i

if.then48.i:                                      ; preds = %if.end44.i
  %cmp50.not.i = icmp eq ptr %call46.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp50.not.i, label %if.then48.i.cleanup_crit_edge, label %do.end54.i

if.then48.i.cleanup_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end54.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call46.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53, i32 noundef %24) #14
  br label %cleanup

if.end56.i:                                       ; preds = %if.end44.i
  %gpiod_rst.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call46.i, ptr %gpiod_rst.i, align 4
  %irq_pin_access_method.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 22
  %26 = ptrtoint ptr %irq_pin_access_method.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_pin_access_method.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %27, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb64.i
  ]

sw.bb.i:                                          ; preds = %if.end56.i
  %29 = ptrtoint ptr %gpiod_int.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpiod_int.i, align 4
  %tobool58.not.i = icmp eq ptr %30, null
  %tobool60.not.i = icmp eq ptr %call46.i, null
  %or.cond.i = or i1 %tobool60.not.i, %tobool58.not.i
  br i1 %or.cond.i, label %sw.bb.i.if.end20.sink.split_crit_edge, label %sw.bb.i.if.end20_crit_edge

sw.bb.i.if.end20_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

sw.bb.i.if.end20.sink.split_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

sw.bb64.i:                                        ; preds = %if.end56.i
  %tobool66.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool66.not.i, label %sw.bb64.i.if.end20.sink.split_crit_edge, label %sw.bb64.i.if.end20_crit_edge

sw.bb64.i.if.end20_crit_edge:                     ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

sw.bb64.i.if.end20.sink.split_crit_edge:          ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

sw.default.i:                                     ; preds = %if.end56.i
  %31 = ptrtoint ptr %gpiod_int.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpiod_int.i, align 4
  %tobool71.not.i = icmp eq ptr %32, null
  %tobool74.not.i = icmp eq ptr %call46.i, null
  %or.cond129.i = or i1 %tobool74.not.i, %tobool71.not.i
  br i1 %or.cond129.i, label %sw.default.i.if.end20_crit_edge, label %if.then75.i

sw.default.i.if.end20_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then75.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  %reset_controller_at_probe.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 18
  %33 = ptrtoint ptr %reset_controller_at_probe.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %reset_controller_at_probe.i, align 4
  %load_cfg_from_disk.i = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 19
  %34 = ptrtoint ptr %load_cfg_from_disk.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %load_cfg_from_disk.i, align 1
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then75.i, %sw.bb64.i.if.end20.sink.split_crit_edge, %sw.bb.i.if.end20.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then75.i ], [ 0, %sw.bb.i.if.end20.sink.split_crit_edge ], [ 0, %sw.bb64.i.if.end20.sink.split_crit_edge ]
  %35 = ptrtoint ptr %irq_pin_access_method.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %irq_pin_access_method.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %sw.default.i.if.end20_crit_edge, %sw.bb64.i.if.end20_crit_edge, %sw.bb.i.if.end20_crit_edge
  %36 = ptrtoint ptr %avdd28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %avdd28.i, align 4
  %call21 = tail call i32 @regulator_enable(ptr noundef %37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.27, i32 noundef %call21) #14
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %38 = ptrtoint ptr %vddio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vddio.i, align 4
  %call29 = tail call i32 @regulator_enable(ptr noundef %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end38, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.30, i32 noundef %call29) #14
  %40 = ptrtoint ptr %avdd28.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %avdd28.i, align 4
  %call37 = tail call i32 @regulator_disable(ptr noundef %41) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %call.i174 = tail call i32 @devm_add_action(ptr noundef %dev9, ptr noundef nonnull @goodix_disable_regulators, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i175 = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i175, label %reset.preheader, label %devm_add_action_or_reset.exit.thread

reset.preheader:                                  ; preds = %if.end38
  %reset_controller_at_probe = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 18
  %42 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %flags8.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %len13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %reset_controller_at_probe to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr = load i8, ptr %reset_controller_at_probe, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  br i1 %phi.cmp, label %reset.preheader.if.end50_crit_edge, label %reset.preheader.if.then45_crit_edge

reset.preheader.if.then45_crit_edge:              ; preds = %reset.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

reset.preheader.if.end50_crit_edge:               ; preds = %reset.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

devm_add_action_or_reset.exit.thread:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %vddio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vddio.i, align 4
  %call.i.i176 = tail call i32 @regulator_disable(ptr noundef %45) #11
  %46 = ptrtoint ptr %avdd28.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %avdd28.i, align 4
  %call1.i.i = tail call i32 @regulator_disable(ptr noundef %47) #11
  br label %cleanup

if.then45:                                        ; preds = %if.then57, %reset.preheader.if.then45_crit_edge
  %call.i178 = call i32 @goodix_reset_no_int_sync(ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i179 = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i179, label %goodix_reset.exit, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

goodix_reset.exit:                                ; preds = %if.then45
  %call1.i = call i32 @goodix_int_sync(ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool47.not = icmp eq i32 %call1.i, 0
  br i1 %tobool47.not, label %goodix_reset.exit.if.end50_crit_edge, label %goodix_reset.exit.cleanup_crit_edge

goodix_reset.exit.cleanup_crit_edge:              ; preds = %goodix_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

goodix_reset.exit.if.end50_crit_edge:             ; preds = %goodix_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50:                                         ; preds = %goodix_reset.exit.if.end50_crit_edge, %reset.preheader.if.end50_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %test.i) #11
  %48 = ptrtoint ptr %test.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %test.i, align 1, !annotation !246
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #11
  %49 = call ptr @memset(ptr %42, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  %50 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -32448, ptr %wbuf.i.i, align 2
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i.i, align 2
  %52 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr.i.i, align 2
  %54 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %msgs.i.i, align 4
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %42, align 4
  %56 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %wbuf.i.i, ptr %buf6.i.i, align 4
  %57 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %flags8.i.i, align 2
  %58 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %53, ptr %arrayidx7.i.i, align 4
  %59 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len13.i.i, align 4
  %60 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test.i, ptr %buf15.i.i, align 4
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 8
  %call.i.i182 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i182)
  %cmp17.i.i = icmp eq i32 %call.i.i182, 2
  %cond.i.i = select i1 %cmp17.i.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %cmp31.i.i = icmp slt i32 %call.i.i182, 0
  %ret.0.i.i = select i1 %cmp31.i.i, i32 %call.i.i182, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i.i, label %if.end50.if.end64_crit_edge, label %if.end.i183

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end.i183:                                      ; preds = %if.end50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 33088, i32 noundef %ret.0.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #11
  call void @msleep(i32 noundef 20) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #11
  %63 = call ptr @memset(ptr %42, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  %64 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -32448, ptr %wbuf.i.i, align 2
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i.i, align 2
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr.i.i, align 2
  %68 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %msgs.i.i, align 4
  %69 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 2, ptr %42, align 4
  %70 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %wbuf.i.i, ptr %buf6.i.i, align 4
  %71 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %flags8.i.i, align 2
  %72 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %67, ptr %arrayidx7.i.i, align 4
  %73 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %len13.i.i, align 4
  %74 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %test.i, ptr %buf15.i.i, align 4
  %75 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter, align 8
  %call.i.1.i = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.1.i)
  %cmp17.i.1.i = icmp eq i32 %call.i.1.i, 2
  %cond.i.1.i = select i1 %cmp17.i.1.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp31.i.1.i = icmp slt i32 %call.i.1.i, 0
  %ret.0.i.1.i = select i1 %cmp31.i.1.i, i32 %call.i.1.i, i32 %cond.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %ret.0.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i183.if.end64_crit_edge, label %if.then53

if.end.i183.if.end64_crit_edge:                   ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then53:                                        ; preds = %if.end.i183
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 33088, i32 noundef %ret.0.i.1.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #11
  call void @msleep(i32 noundef 20) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %test.i) #11
  %77 = ptrtoint ptr %reset_controller_at_probe to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %reset_controller_at_probe, align 4, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool55.not = icmp eq i8 %78, 0
  br i1 %tobool55.not, label %land.lhs.true, label %if.then53.do.end62_crit_edge

if.then53.do.end62_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

land.lhs.true:                                    ; preds = %if.then53
  %79 = ptrtoint ptr %irq_pin_access_method.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq_pin_access_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not = icmp eq i32 %80, 0
  br i1 %cmp.not, label %land.lhs.true.do.end62_crit_edge, label %if.then57

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %reset_controller_at_probe to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %reset_controller_at_probe, align 4
  br label %if.then45

do.end62:                                         ; preds = %land.lhs.true.do.end62_crit_edge, %if.then53.do.end62_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.33, i32 noundef %ret.0.i.1.i) #14
  br label %cleanup

if.end64:                                         ; preds = %if.end.i183.if.end64_crit_edge, %if.end50.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %test.i) #11
  %call65 = call i32 @goodix_firmware_check(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  %call69 = call fastcc i32 @goodix_read_version(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  %id73 = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 15
  %call74 = call fastcc ptr @goodix_get_chip_data(ptr noundef %id73)
  %chip = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 3
  %82 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call74, ptr %chip, align 4
  %load_cfg_from_disk = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 19
  %83 = ptrtoint ptr %load_cfg_from_disk to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %load_cfg_from_disk, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool75.not = icmp eq i8 %84, 0
  br i1 %tobool75.not, label %if.else101, label %if.then76

if.then76:                                        ; preds = %if.end72
  %call78 = call i32 @device_property_read_string(ptr noundef %dev9, ptr noundef nonnull @.str.35, ptr noundef nonnull %cfg_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  %cfg_name81 = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 16
  br i1 %tobool79.not, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %cfg_name to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg_name, align 4
  %call83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cfg_name81, i32 noundef 64, ptr noundef nonnull @.str.36, ptr noundef %86)
  br label %if.end89

if.else:                                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cfg_name81, i32 noundef 64, ptr noundef nonnull @.str.37, ptr noundef %id73)
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then80
  %cfg_name90 = getelementptr inbounds %struct.goodix_ts_data, ptr %call.i, i32 0, i32 16
  %call93 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %cfg_name90, ptr noundef %dev9, i32 noundef 3264, ptr noundef nonnull %call.i, ptr noundef nonnull @goodix_config_cb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end89.cleanup_crit_edge, label %do.end98

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end98:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.39, i32 noundef %call93) #14
  br label %cleanup

if.else101:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %call102 = call fastcc i32 @goodix_configure_dev(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else101, %do.end98, %if.end89.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end62, %goodix_reset.exit.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %devm_add_action_or_reset.exit.thread, %do.end34, %do.end26, %do.end54.i, %if.then48.i.cleanup_crit_edge, %do.end32.i, %if.then26.i.cleanup_crit_edge, %do.end21.i, %if.then14.i.cleanup_crit_edge, %do.end.i, %if.then5.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %call21, %do.end26 ], [ %call29, %do.end34 ], [ %ret.0.i.1.i, %do.end62 ], [ %call93, %do.end98 ], [ -6, %do.end8 ], [ -12, %if.end10.cleanup_crit_edge ], [ %call65, %if.end64.cleanup_crit_edge ], [ %call69, %if.end68.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ], [ %call102, %if.else101 ], [ %call.i174, %devm_add_action_or_reset.exit.thread ], [ -517, %if.then48.i.cleanup_crit_edge ], [ -517, %if.then26.i.cleanup_crit_edge ], [ -517, %if.then14.i.cleanup_crit_edge ], [ -517, %if.then5.i.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ %17, %do.end.i ], [ %19, %do.end21.i ], [ %20, %do.end32.i ], [ %24, %do.end54.i ], [ %call1.i, %goodix_reset.exit.cleanup_crit_edge ], [ %call.i178, %if.then45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg_name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_ts_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %load_cfg_from_disk = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %load_cfg_from_disk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %load_cfg_from_disk, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %firmware_loading_complete = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 20
  tail call void @wait_for_completion(ptr noundef %firmware_loading_complete) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goodix_disable_regulators(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vddio = getelementptr inbounds %struct.goodix_ts_data, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %vddio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vddio, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #11
  %avdd28 = getelementptr inbounds %struct.goodix_ts_data, ptr %arg, i32 0, i32 8
  %2 = ptrtoint ptr %avdd28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %avdd28, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @goodix_firmware_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goodix_read_version(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i = alloca i16, align 2
  %buf = alloca [6 x i8], align 4
  %id_str = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %id_str) #11
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #11
  %3 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #11
  %5 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32448, ptr %wbuf.i, align 2
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %3, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wbuf.i, ptr %buf6.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %flags8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags8.i, align 2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %arrayidx7.i, align 4
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 6, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp17.i = icmp eq i32 %call.i, 2
  %cond.i = select i1 %cmp17.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31.i = icmp slt i32 %call.i, 0
  %ret.0.i = select i1 %cmp31.i, i32 %call.i, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %if.end, label %goodix_i2c_read.exit

goodix_i2c_read.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef 6, i32 noundef 33088, i32 noundef %ret.0.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %18 = getelementptr inbounds [5 x i8], ptr %id_str, i32 0, i32 4
  %19 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf, align 4
  %22 = ptrtoint ptr %id_str to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %id_str, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %18, align 4
  %id = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 15
  %call5 = call i32 @strscpy(ptr noundef %id, ptr noundef nonnull %id_str, i32 noundef 5) #11
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %19, align 4
  %26 = call i16 @llvm.bswap.i16(i16 %25) #11
  %version = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 17
  %27 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %version, align 2
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %conv = zext i16 %26 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef %id, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %goodix_i2c_read.exit
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %id_str) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #11
  ret i32 %ret.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @goodix_get_chip_data(ptr nocapture noundef readonly %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.59, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ]
  %data = getelementptr [15 x %struct.goodix_chip_id], ptr @goodix_chip_ids, i32 0, i32 %i.010.lcssa, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.60, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool4.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool4.not.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.61, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool4.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool4.not.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.62, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool4.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool4.not.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.63, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool4.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool4.not.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.64, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool4.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool4.not.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.65, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool4.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool4.not.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.66, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool4.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool4.not.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.67, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool4.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool4.not.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.68, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool4.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool4.not.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %call.10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.69, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool4.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool4.not.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %call.11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.70, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %tobool4.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool4.not.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %call.12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.71, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %tobool4.not.12 = icmp eq i32 %call.12, 0
  br i1 %tobool4.not.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %call.13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.72, ptr noundef %id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13)
  %tobool4.not.13 = icmp eq i32 %call.13, 0
  br i1 %tobool4.not.13, label %for.inc.12.if.then_crit_edge, label %for.inc.12.cleanup_crit_edge

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

cleanup:                                          ; preds = %for.inc.12.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ @gt9x_chip_data, %for.inc.12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goodix_config_cb(ptr noundef %cfg, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_name = getelementptr inbounds %struct.goodix_ts_data, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware_name, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool8.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool8.not, label %if.then.err_release_cfg_crit_edge, label %if.end

if.then.err_release_cfg_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_release_cfg

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.firmware, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %4 = add i32 %3, -241
  call void @__sanitizer_cov_trace_const_cmp4(i32 -55, i32 %4)
  %5 = icmp ult i32 %4, -55
  br i1 %5, label %goodix_check_cfg.exit.thread, label %goodix_check_cfg.exit

goodix_check_cfg.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #14
  br label %err_release_cfg

goodix_check_cfg.exit:                            ; preds = %if.end
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %chip.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i, align 4
  %check_config.i = getelementptr inbounds %struct.goodix_chip_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %check_config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %check_config.i, align 4
  %call.i = tail call i32 %13(ptr noundef %ctx, ptr noundef %9, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %goodix_check_cfg.exit.err_release_cfg_crit_edge

goodix_check_cfg.exit.err_release_cfg_crit_edge:  ; preds = %goodix_check_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_release_cfg

if.end5:                                          ; preds = %goodix_check_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.goodix_ts_data, ptr %ctx, i32 0, i32 24
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg, align 4
  %18 = call ptr @memcpy(ptr %config, ptr %15, i32 %17)
  br label %if.end17

if.else:                                          ; preds = %entry
  br i1 %tobool8.not, label %if.else.if.end17_crit_edge, label %if.then9

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then9:                                         ; preds = %if.else
  %data10 = getelementptr inbounds %struct.firmware, ptr %cfg, i32 0, i32 1
  %19 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data10, align 4
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg, align 4
  %call12 = tail call i32 @goodix_send_cfg(ptr noundef %ctx, ptr noundef %20, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then9.if.end17_crit_edge, label %if.then9.err_release_cfg_crit_edge

if.then9.err_release_cfg_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_release_cfg

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %if.else.if.end17_crit_edge, %if.end5
  %call18 = tail call fastcc i32 @goodix_configure_dev(ptr noundef %ctx)
  br label %err_release_cfg

err_release_cfg:                                  ; preds = %if.end17, %if.then9.err_release_cfg_crit_edge, %goodix_check_cfg.exit.err_release_cfg_crit_edge, %goodix_check_cfg.exit.thread, %if.then.err_release_cfg_crit_edge
  tail call void @release_firmware(ptr noundef %cfg) #11
  %firmware_loading_complete = getelementptr inbounds %struct.goodix_ts_data, ptr %ctx, i32 0, i32 20
  tail call void @complete_all(ptr noundef %firmware_loading_complete) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goodix_configure_dev(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %int_trigger_type = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 7
  %0 = ptrtoint ptr %int_trigger_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %int_trigger_type, align 4
  %max_touch_num = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 6
  %1 = ptrtoint ptr %max_touch_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %max_touch_num, align 4
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #11
  %input_dev = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %input_dev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ts, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.81) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.83, ptr %call, align 8
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.84, ptr %phys, align 4
  %11 = load ptr, ptr %input_dev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 24, ptr %id, align 4
  %13 = load ptr, ptr %input_dev, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1046, ptr %vendor, align 2
  %id9 = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 15
  %15 = load ptr, ptr %input_dev, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 3, i32 2
  %call12 = tail call i32 @kstrtou16(ptr noundef %id9, i32 noundef 10, ptr noundef %product) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.if.end31.6_crit_edge, label %if.then14

if.end.if.end31.6_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.6

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4097, ptr %product17, align 4
  br label %if.end31.6

if.end31.6:                                       ; preds = %if.then14, %if.end.if.end31.6_crit_edge
  %version = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 17
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %version, align 2
  %21 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input_dev, align 4
  %version21 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %version21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %version21, align 2
  %keymap = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25
  %24 = load ptr, ptr %input_dev, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %keymap, ptr %keycode, align 4
  %26 = load ptr, ptr %input_dev, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %keycodesize, align 8
  %28 = load ptr, ptr %input_dev, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %keycodemax, align 4
  %30 = ptrtoint ptr %keymap to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 125, ptr %keymap, align 2
  %31 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %31, i32 noundef 1, i32 noundef 125) #11
  %arrayidx30.1 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 1
  %32 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 59, ptr %arrayidx30.1, align 2
  %33 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %34, i32 noundef 1, i32 noundef 59) #11
  %arrayidx30.2 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 2
  %35 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 60, ptr %arrayidx30.2, align 2
  %36 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %37, i32 noundef 1, i32 noundef 60) #11
  %arrayidx30.3 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 3
  %38 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 61, ptr %arrayidx30.3, align 2
  %39 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %40, i32 noundef 1, i32 noundef 61) #11
  %arrayidx30.4 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 4
  %41 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 62, ptr %arrayidx30.4, align 2
  %42 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %43, i32 noundef 1, i32 noundef 62) #11
  %arrayidx30.5 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 5
  %44 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 63, ptr %arrayidx30.5, align 2
  %45 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %46, i32 noundef 1, i32 noundef 63) #11
  %arrayidx30.6 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 6
  %47 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 64, ptr %arrayidx30.6, align 2
  %48 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %49, i32 noundef 1, i32 noundef 64) #11
  %50 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %51, i32 noundef 3, i32 noundef 53) #11
  %52 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %53, i32 noundef 3, i32 noundef 54) #11
  %54 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %55, i32 noundef 50, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  %56 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %57, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  %firmware_name.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 4
  %58 = ptrtoint ptr %firmware_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %firmware_name.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end31.6.if.end4.i_crit_edge

if.end31.6.if.end4.i_crit_edge:                   ; preds = %if.end31.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end31.6
  %60 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ts, align 4
  %chip.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 3
  %62 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chip.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %63, align 4
  %config.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 24
  %config_len.i = getelementptr inbounds %struct.goodix_chip_data, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %config_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %config_len.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #11
  %68 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %69 = call ptr @memset(ptr %68, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  %70 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %65, ptr %wbuf.i.i, align 2
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %72 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %addr.i.i, align 2
  %74 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %msgs.i.i, align 4
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 2, ptr %68, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %wbuf.i.i, ptr %buf6.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %flags8.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flags8.i.i, align 2
  %78 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %73, ptr %arrayidx7.i.i, align 4
  %conv.i.i = trunc i32 %67 to i16
  %len13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i.i, ptr %len13.i.i, align 4
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %config.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %81 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp17.i.i = icmp eq i32 %call.i.i, 2
  %cond.i.i = select i1 %cmp17.i.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp31.i.i = icmp slt i32 %call.i.i, 0
  %ret.0.i.i = select i1 %cmp31.i.i, i32 %call.i.i, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i.i, label %goodix_i2c_read.exit.thread.i, label %if.then3.i

goodix_i2c_read.exit.thread.i:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  %conv20.i.i = zext i16 %65 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str, i32 noundef %67, i32 noundef %conv20.i.i, i32 noundef %ret.0.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #11
  %83 = ptrtoint ptr %int_trigger_type to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %int_trigger_type, align 4
  %84 = ptrtoint ptr %max_touch_num to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 10, ptr %max_touch_num, align 4
  br label %goodix_read_config.exit

if.end4.i:                                        ; preds = %goodix_i2c_read.exit.thread.i, %if.end31.6.if.end4.i_crit_edge
  %arrayidx.i = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 6
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i, align 2
  %87 = and i8 %86, 3
  %and.i = zext i8 %87 to i32
  %88 = ptrtoint ptr %int_trigger_type to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and.i, ptr %int_trigger_type, align 4
  %arrayidx8.i = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 5
  %89 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx8.i, align 1
  %91 = and i8 %90, 15
  %and10.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %max_touch_num to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and10.i, ptr %max_touch_num, align 4
  %arrayidx13.i = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 1
  %93 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %arrayidx13.i, align 1
  %arrayidx17.i = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 3
  %95 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %arrayidx17.i, align 1
  %97 = call i16 @llvm.bswap.i16(i16 %96) #11
  %conv19.i = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool20.not.i = icmp eq i16 %94, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool21.not.i = icmp eq i16 %96, 0
  %or.cond.i = select i1 %tobool20.not.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %if.end4.i.if.end25.i_crit_edge, label %if.then22.i

if.end4.i.if.end25.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end4.i
  %98 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %input_dev, align 4
  call void @input_alloc_absinfo(ptr noundef %99) #11
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %99, i32 0, i32 26
  %100 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i47.i = icmp eq ptr %101, null
  br i1 %tobool.not.i47.i, label %if.then22.i.input_abs_set_max.exit.i_crit_edge, label %if.then.i.i

if.then22.i.input_abs_set_max.exit.i_crit_edge:   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_max.exit.i

if.then.i.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = call i16 @llvm.bswap.i16(i16 %94) #11
  %conv15.i = zext i16 %102 to i32
  %sub.i = add nsw i32 %conv15.i, -1
  %maximum.i.i = getelementptr %struct.input_absinfo, ptr %101, i32 53, i32 2
  %103 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub.i, ptr %maximum.i.i, align 4
  br label %input_abs_set_max.exit.i

input_abs_set_max.exit.i:                         ; preds = %if.then.i.i, %if.then22.i.input_abs_set_max.exit.i_crit_edge
  %104 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %input_dev, align 4
  call void @input_alloc_absinfo(ptr noundef %105) #11
  %absinfo.i48.i = getelementptr inbounds %struct.input_dev, ptr %105, i32 0, i32 26
  %106 = ptrtoint ptr %absinfo.i48.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %absinfo.i48.i, align 8
  %tobool.not.i49.i = icmp eq ptr %107, null
  br i1 %tobool.not.i49.i, label %input_abs_set_max.exit.i.if.end25.i_crit_edge, label %if.then.i51.i

input_abs_set_max.exit.i.if.end25.i_crit_edge:    ; preds = %input_abs_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then.i51.i:                                    ; preds = %input_abs_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub24.i = add nsw i32 %conv19.i, -1
  %maximum.i50.i = getelementptr %struct.input_absinfo, ptr %107, i32 54, i32 2
  %108 = ptrtoint ptr %maximum.i50.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %sub24.i, ptr %maximum.i50.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then.i51.i, %input_abs_set_max.exit.i.if.end25.i_crit_edge, %if.end4.i.if.end25.i_crit_edge
  %chip26.i = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 3
  %109 = ptrtoint ptr %chip26.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chip26.i, align 4
  %calc_config_checksum.i = getelementptr inbounds %struct.goodix_chip_data, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %calc_config_checksum.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %calc_config_checksum.i, align 4
  call void %112(ptr noundef %ts) #11
  br label %goodix_read_config.exit

goodix_read_config.exit:                          ; preds = %if.end25.i, %if.then3.i
  %113 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %input_dev, align 4
  %prop = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 5
  call void @touchscreen_parse_properties(ptr noundef %114, i1 noundef zeroext true, ptr noundef %prop) #11
  %115 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %prop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool42.not = icmp eq i32 %116, 0
  br i1 %tobool42.not, label %goodix_read_config.exit.do.end51_crit_edge, label %lor.lhs.false

goodix_read_config.exit.do.end51_crit_edge:       ; preds = %goodix_read_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

lor.lhs.false:                                    ; preds = %goodix_read_config.exit
  %max_y = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 5, i32 1
  %117 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool44.not = icmp eq i32 %118, 0
  br i1 %tobool44.not, label %lor.lhs.false.do.end51_crit_edge, label %lor.lhs.false45

lor.lhs.false.do.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %119 = ptrtoint ptr %max_touch_num to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_touch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool47.not = icmp eq i32 %120, 0
  br i1 %tobool47.not, label %lor.lhs.false45.do.end51_crit_edge, label %lor.lhs.false45.if.end70_crit_edge

lor.lhs.false45.if.end70_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

lor.lhs.false45.do.end51_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

do.end51:                                         ; preds = %lor.lhs.false45.do.end51_crit_edge, %lor.lhs.false.do.end51_crit_edge, %goodix_read_config.exit.do.end51_crit_edge
  %121 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ts, align 4
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 4
  %max_y57 = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 5, i32 1
  %123 = ptrtoint ptr %max_y57 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_y57, align 4
  %125 = ptrtoint ptr %max_touch_num to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max_touch_num, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.86, i32 noundef %116, i32 noundef %124, i32 noundef %126) #14
  %127 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4095, ptr %prop, align 4
  %128 = ptrtoint ptr %max_y57 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4095, ptr %max_y57, align 4
  %129 = ptrtoint ptr %max_touch_num to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 10, ptr %max_touch_num, align 4
  %130 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %input_dev, align 4
  call void @input_alloc_absinfo(ptr noundef %131) #11
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %131, i32 0, i32 26
  %132 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i212 = icmp eq ptr %133, null
  br i1 %tobool.not.i212, label %do.end51.input_abs_set_max.exit_crit_edge, label %if.then.i213

do.end51.input_abs_set_max.exit_crit_edge:        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_max.exit

if.then.i213:                                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  %maximum.i = getelementptr %struct.input_absinfo, ptr %133, i32 53, i32 2
  %134 = ptrtoint ptr %maximum.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 4095, ptr %maximum.i, align 4
  br label %input_abs_set_max.exit

input_abs_set_max.exit:                           ; preds = %if.then.i213, %do.end51.input_abs_set_max.exit_crit_edge
  %135 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %input_dev, align 4
  %137 = ptrtoint ptr %max_y57 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_y57, align 4
  call void @input_alloc_absinfo(ptr noundef %136) #11
  %absinfo.i214 = getelementptr inbounds %struct.input_dev, ptr %136, i32 0, i32 26
  %139 = ptrtoint ptr %absinfo.i214 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %absinfo.i214, align 8
  %tobool.not.i215 = icmp eq ptr %140, null
  br i1 %tobool.not.i215, label %input_abs_set_max.exit.if.end70_crit_edge, label %if.then.i217

input_abs_set_max.exit.if.end70_crit_edge:        ; preds = %input_abs_set_max.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then.i217:                                     ; preds = %input_abs_set_max.exit
  call void @__sanitizer_cov_trace_pc() #13
  %maximum.i216 = getelementptr %struct.input_absinfo, ptr %140, i32 54, i32 2
  %141 = ptrtoint ptr %maximum.i216 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %138, ptr %maximum.i216, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then.i217, %input_abs_set_max.exit.if.end70_crit_edge, %lor.lhs.false45.if.end70_crit_edge
  %142 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %input_dev, align 4
  %144 = ptrtoint ptr %max_touch_num to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %max_touch_num, align 4
  %call111 = call i32 @input_mt_init_slots(ptr noundef %143, i32 noundef %145, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end119, label %do.end116

do.end116:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ts, align 4
  %dev118 = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev118, ptr noundef nonnull @.str.91, i32 noundef %call111) #14
  br label %cleanup

if.end119:                                        ; preds = %if.end70
  %148 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %input_dev, align 4
  %call121 = call i32 @input_register_device(ptr noundef %149) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end129, label %do.end126

do.end126:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ts, align 4
  %dev128 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev128, ptr noundef nonnull @.str.94, i32 noundef %call121) #14
  br label %cleanup

if.end129:                                        ; preds = %if.end119
  %152 = ptrtoint ptr %int_trigger_type to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %int_trigger_type, align 4
  %arrayidx131 = getelementptr [4 x i32], ptr @goodix_irq_flags, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx131, align 4
  %or = or i32 %155, 8192
  %irq_flags = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 21
  %156 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or, ptr %irq_flags, align 4
  %157 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %irq.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 2
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev.i, i32 noundef %160, ptr noundef null, ptr noundef nonnull @goodix_ts_irq_handler, i32 noundef %or, ptr noundef %name.i, ptr noundef %ts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool133.not = icmp eq i32 %call.i, 0
  br i1 %tobool133.not, label %if.end129.cleanup_crit_edge, label %do.end137

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end137:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ts, align 4
  %dev139 = getelementptr inbounds %struct.i2c_client, ptr %162, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev139, ptr noundef nonnull @.str.97, i32 noundef %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %if.end129.cleanup_crit_edge, %do.end126, %do.end116, %do.end
  %retval.0 = phi i32 [ %call111, %do.end116 ], [ %call121, %do.end126 ], [ %call.i, %do.end137 ], [ -12, %do.end ], [ 0, %if.end129.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_check_cfg_16(ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %cfg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp36 = icmp sgt i32 %sub, 0
  br i1 %cmp36, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %check_sum.038 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.037 = phi i32 [ %add3, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %cfg, i32 %i.037
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx, align 1
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %check_sum.038, %conv
  %add3 = add i32 %i.037, 2
  %phi.cast = and i32 %add, 65535
  %cmp = icmp slt i32 %add3, %sub
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast39 = trunc i32 %add to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %check_sum.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %phi.cast39, %for.end.loopexit ]
  %arrayidx8 = getelementptr i8, ptr %cfg, i32 %sub
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %arrayidx8, align 1
  %4 = sub i16 0, %check_sum.0.lcssa
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %4)
  %cmp11.not = icmp eq i16 %3, %4
  br i1 %cmp11.not, label %if.end, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.end
  %add13 = add i32 %len, -1
  %arrayidx14 = getelementptr i8, ptr %cfg, i32 %add13
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp16.not = icmp eq i8 %6, 1
  br i1 %cmp16.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.76.sink = phi ptr [ @.str.73, %for.end.cleanup.sink.split_crit_edge ], [ @.str.76, %if.end.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ts, align 4
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull %.str.76.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goodix_calc_cfg_checksum_16(ptr nocapture noundef %ts) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %config_len = getelementptr inbounds %struct.goodix_chip_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_len, align 4
  %sub = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp sgt i32 %sub, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %check_sum.023 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %add3, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx, align 1
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %check_sum.023, %conv
  %add3 = add i32 %i.022, 2
  %phi.cast = and i32 %add, 65535
  %cmp = icmp slt i32 %add3, %sub
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast24 = trunc i32 %add to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %check_sum.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %phi.cast24, %for.end.loopexit ]
  %conv6 = sub i16 0, %check_sum.0.lcssa
  %arrayidx8 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 %sub
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %conv6, ptr %arrayidx8, align 1
  %add10 = add i32 %3, -1
  %arrayidx11 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 %add10
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx11, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_check_cfg_8(ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %cfg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp sgt i32 %sub, 0
  br i1 %cmp34, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %check_sum.036 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %cfg, i32 %i.035
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %check_sum.036, %conv
  %inc = add nuw nsw i32 %i.035, 1
  %phi.cast = and i32 %add, 255
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast37 = trunc i32 %add to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %check_sum.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast37, %for.end.loopexit ]
  %arrayidx7 = getelementptr i8, ptr %cfg, i32 %sub
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1
  %4 = sub i8 0, %check_sum.0.lcssa
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp9.not = icmp eq i8 %3, %4
  br i1 %cmp9.not, label %if.end, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.end
  %add11 = add i32 %len, -1
  %arrayidx12 = getelementptr i8, ptr %cfg, i32 %add11
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp14.not = icmp eq i8 %6, 1
  br i1 %cmp14.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.76.sink = phi ptr [ @.str.73, %for.end.cleanup.sink.split_crit_edge ], [ @.str.76, %if.end.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ts, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull %.str.76.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goodix_calc_cfg_checksum_8(ptr nocapture noundef %ts) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 3
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %config_len = getelementptr inbounds %struct.goodix_chip_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_len, align 4
  %sub = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp sgt i32 %sub, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %check_sum.022 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 %i.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %check_sum.022, %conv
  %inc = add nuw nsw i32 %i.021, 1
  %phi.cast = and i32 %add, 255
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast23 = trunc i32 %add to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %check_sum.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast23, %for.end.loopexit ]
  %conv5 = sub i8 0, %check_sum.0.lcssa
  %arrayidx7 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 %sub
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv5, ptr %arrayidx7, align 1
  %add9 = add i32 %3, -1
  %arrayidx10 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 %add9
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx10, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_ts_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  %msgs.i64.i.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i65.i.i = alloca i16, align 2
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i.i.i = alloca i16, align 2
  %point_data.i = alloca [92 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %point_data.i) #11
  %0 = call ptr @memset(ptr %point_data.i, i32 255, i32 92)
  %contact_size.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 23
  %1 = ptrtoint ptr %contact_size.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %contact_size.i.i, align 4
  %add1.i.i = add i32 %2, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %buf6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %arrayidx7.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i.i, i32 0, i32 1
  %flags8.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i.i, i32 0, i32 1, i32 1
  %conv.i.i.i = trunc i32 %add1.i.i to i16
  %len13.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i.i, i32 0, i32 1, i32 2
  %buf15.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i.i, i32 0, i32 1, i32 3
  %firmware_name.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 4
  %add2.neg.i.i = sub i32 -2, %3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end35.i.i.do.body.i.i_crit_edge, %entry
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #11
  %7 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i.i.i) #11
  %8 = ptrtoint ptr %wbuf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -32434, ptr %wbuf.i.i.i, align 2
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i.i.i, align 2
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr.i.i.i, align 2
  %12 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msgs.i.i.i, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %4, align 4
  %14 = ptrtoint ptr %buf6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wbuf.i.i.i, ptr %buf6.i.i.i, align 4
  %15 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags8.i.i.i, align 2
  %16 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %11, ptr %arrayidx7.i.i.i, align 4
  %17 = ptrtoint ptr %len13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i.i, ptr %len13.i.i.i, align 4
  %18 = ptrtoint ptr %buf15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %point_data.i, ptr %buf15.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp17.i.i.i = icmp eq i32 %call.i.i.i, 2
  %cond.i.i.i = select i1 %cmp17.i.i.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp31.i.i.i = icmp slt i32 %call.i.i.i, 0
  %ret.0.i.i.i = select i1 %cmp31.i.i.i, i32 %call.i.i.i, i32 %cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %ret.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %goodix_i2c_read.exit.i.i

goodix_i2c_read.exit.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str, i32 noundef %add1.i.i, i32 noundef 33102, i32 noundef %ret.0.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #11
  br label %goodix_process_events.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #11
  %21 = ptrtoint ptr %point_data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %point_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool4.not.i.i = icmp sgt i8 %22, -1
  br i1 %tobool4.not.i.i, label %if.end25.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %23 = and i8 %22, 15
  %and8.i.i = zext i8 %23 to i32
  %max_touch_num.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 6
  %24 = ptrtoint ptr %max_touch_num.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_touch_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %and8.i.i)
  %cmp.i.i = icmp ult i32 %25, %and8.i.i
  br i1 %cmp.i.i, label %if.then5.i.i.goodix_process_events.exit_crit_edge, label %if.end11.i.i

if.then5.i.i.goodix_process_events.exit_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_process_events.exit

if.end11.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp12.i.i = icmp ugt i8 %23, 1
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %26 = trunc i32 %2 to i16
  %conv17.i.i = add i16 %26, -32432
  %add.ptr.i.i = getelementptr i8, ptr %point_data.i, i32 %add1.i.i
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 4
  %29 = ptrtoint ptr %contact_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %contact_size.i.i, align 4
  %sub.i.i = add nsw i32 %and8.i.i, -1
  %mul.i.i = mul i32 %30, %sub.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i64.i.i) #11
  %31 = getelementptr inbounds i8, ptr %msgs.i64.i.i, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i65.i.i) #11
  %33 = ptrtoint ptr %wbuf.i65.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv17.i.i, ptr %wbuf.i65.i.i, align 2
  %flags.i66.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i64.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i66.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i66.i.i, align 2
  %addr.i67.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i67.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i67.i.i, align 2
  %37 = ptrtoint ptr %msgs.i64.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msgs.i64.i.i, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2, ptr %31, align 4
  %buf6.i69.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i64.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf6.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %wbuf.i65.i.i, ptr %buf6.i69.i.i, align 4
  %arrayidx7.i70.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i64.i.i, i32 0, i32 1
  %flags8.i71.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i64.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %flags8.i71.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags8.i71.i.i, align 2
  %41 = ptrtoint ptr %arrayidx7.i70.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %36, ptr %arrayidx7.i70.i.i, align 4
  %conv.i72.i.i = trunc i32 %mul.i.i to i16
  %len13.i73.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i64.i.i, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %len13.i73.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i72.i.i, ptr %len13.i73.i.i, align 4
  %buf15.i74.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i64.i.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %buf15.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i.i, ptr %buf15.i74.i.i, align 4
  %adapter.i75.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %44 = ptrtoint ptr %adapter.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i75.i.i, align 8
  %call.i76.i.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msgs.i64.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i76.i.i)
  %cmp17.i77.i.i = icmp eq i32 %call.i76.i.i, 2
  %cond.i78.i.i = select i1 %cmp17.i77.i.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i.i)
  %cmp31.i79.i.i = icmp slt i32 %call.i76.i.i, 0
  %ret.0.i80.i.i = select i1 %cmp31.i79.i.i, i32 %call.i76.i.i, i32 %cond.i78.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i80.i.i)
  %tobool.not.i81.i.i = icmp eq i32 %ret.0.i80.i.i, 0
  br i1 %tobool.not.i81.i.i, label %if.end.thread.i, label %goodix_i2c_read.exit84.i.i

if.end.thread.i:                                  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i65.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i64.i.i) #11
  br label %if.else.i

goodix_i2c_read.exit84.i.i:                       ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i82.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %conv20.i.i.i = zext i16 %conv17.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82.i.i, ptr noundef nonnull @.str, i32 noundef %mul.i.i, i32 noundef %conv20.i.i.i, i32 noundef %ret.0.i80.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i65.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i64.i.i) #11
  br label %goodix_process_events.exit

if.end25.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp28.i.i = icmp eq i8 %22, 0
  br i1 %cmp28.i.i, label %land.lhs.true.i.i, label %if.end25.i.i.if.end35.i.i_crit_edge

if.end25.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

land.lhs.true.i.i:                                ; preds = %if.end25.i.i
  %46 = ptrtoint ptr %firmware_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %firmware_name.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %47, null
  br i1 %tobool30.not.i.i, label %land.lhs.true.i.i.if.end35.i.i_crit_edge, label %if.then31.i.i

land.lhs.true.i.i.if.end35.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true.i.i
  %call32.i.i = call zeroext i1 @goodix_handle_fw_request(ptr noundef %dev_id) #11
  br i1 %call32.i.i, label %if.then31.i.i.if.else.i_crit_edge, label %if.then31.i.i.if.end35.i.i_crit_edge

if.then31.i.i.if.end35.i.i_crit_edge:             ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then31.i.i.if.else.i_crit_edge:                ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end35.i.i:                                     ; preds = %if.then31.i.i.if.end35.i.i_crit_edge, %land.lhs.true.i.i.if.end35.i.i_crit_edge, %if.end25.i.i.if.end35.i.i_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub36.i.i = add i32 %add2.neg.i.i, %48
  %cmp37.i.i = icmp slt i32 %sub36.i.i, 0
  br i1 %cmp37.i.i, label %if.end35.i.i.do.body.i.i_crit_edge, label %if.end35.i.i.goodix_process_events.exit_crit_edge

if.end35.i.i.goodix_process_events.exit_crit_edge: ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_process_events.exit

if.end35.i.i.do.body.i.i_crit_edge:               ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.end.i:                                         ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp1.i = icmp eq i8 %23, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr inbounds [92 x i8], ptr %point_data.i, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %tobool.not.i = icmp sgt i8 %50, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then2.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  %input_pen.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 2
  %51 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input_pen.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then2.i.if.end5.i.i_crit_edge

if.then2.i.if.end5.i.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  %53 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_id, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  %call.i.i38.i = call ptr @devm_input_allocate_device(ptr noundef %dev1.i.i.i) #11
  %tobool.not.i.i39.i = icmp eq ptr %call.i.i38.i, null
  br i1 %tobool.not.i.i39.i, label %if.then.i.i.goodix_create_pen_input.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.goodix_create_pen_input.exit.thread.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_create_pen_input.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i38.i) #11
  %absinfo.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 26
  %55 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool2.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %input_dev.i.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 1
  %57 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input_dev.i.i.i, align 4
  %absinfo6.i.i.i = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 26
  %59 = ptrtoint ptr %absinfo6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %absinfo6.i.i.i, align 8
  %arrayidx7.i.i40.i = getelementptr %struct.input_absinfo, ptr %60, i32 53
  %61 = call ptr @memcpy(ptr %56, ptr %arrayidx7.i.i40.i, i32 24)
  %62 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %absinfo.i.i.i, align 8
  %arrayidx9.i.i.i = getelementptr %struct.input_absinfo, ptr %63, i32 1
  %64 = load ptr, ptr %input_dev.i.i.i, align 4
  %absinfo11.i.i.i = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 26
  %65 = ptrtoint ptr %absinfo11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %absinfo11.i.i.i, align 8
  %arrayidx12.i.i.i = getelementptr %struct.input_absinfo, ptr %66, i32 54
  %67 = call ptr @memcpy(ptr %arrayidx9.i.i.i, ptr %arrayidx12.i.i.i, i32 24)
  %absbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 8
  %68 = ptrtoint ptr %absbit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %absbit.i.i.i, align 4
  %or.i61.i.i.i = or i32 %69, 3
  store i32 %or.i61.i.i.i, ptr %absbit.i.i.i, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call.i.i38.i, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  call void @input_set_capability(ptr noundef nonnull %call.i.i38.i, i32 noundef 1, i32 noundef 330) #11
  call void @input_set_capability(ptr noundef nonnull %call.i.i38.i, i32 noundef 1, i32 noundef 320) #11
  call void @input_set_capability(ptr noundef nonnull %call.i.i38.i, i32 noundef 1, i32 noundef 331) #11
  call void @input_set_capability(ptr noundef nonnull %call.i.i38.i, i32 noundef 1, i32 noundef 332) #11
  %propbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 4
  %70 = ptrtoint ptr %propbit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %propbit.i.i.i, align 4
  %or.i62.i.i.i = or i32 %71, 2
  store i32 %or.i62.i.i.i, ptr %propbit.i.i.i, align 4
  call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i38.i) #11
  %72 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i.i.i, label %if.end4.i.i.i.input_abs_set_res.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end4.i.i.i.input_abs_set_res.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i.i.i.i = getelementptr %struct.input_absinfo, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %resolution.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 10, ptr %resolution.i.i.i.i, align 4
  br label %input_abs_set_res.exit.i.i.i

input_abs_set_res.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.end4.i.i.i.input_abs_set_res.exit.i.i.i_crit_edge
  call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i38.i) #11
  %75 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i64.i.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i64.i.i.i, label %input_abs_set_res.exit.i.i.i.input_abs_set_res.exit67.i.i.i_crit_edge, label %if.then.i66.i.i.i

input_abs_set_res.exit.i.i.i.input_abs_set_res.exit67.i.i.i_crit_edge: ; preds = %input_abs_set_res.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit67.i.i.i

if.then.i66.i.i.i:                                ; preds = %input_abs_set_res.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i65.i.i.i = getelementptr %struct.input_absinfo, ptr %76, i32 1, i32 5
  %77 = ptrtoint ptr %resolution.i65.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10, ptr %resolution.i65.i.i.i, align 4
  br label %input_abs_set_res.exit67.i.i.i

input_abs_set_res.exit67.i.i.i:                   ; preds = %if.then.i66.i.i.i, %input_abs_set_res.exit.i.i.i.input_abs_set_res.exit67.i.i.i_crit_edge
  %78 = ptrtoint ptr %call.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.99, ptr %call.i.i38.i, align 8
  %phys.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 1
  %79 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.100, ptr %phys.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 3
  %80 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 24, ptr %id.i.i.i, align 4
  %vendor.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1046, ptr %vendor.i.i.i, align 2
  %id17.i.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 15
  %product.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 3, i32 2
  %call20.i.i.i = call i32 @kstrtou16(ptr noundef %id17.i.i.i, i32 noundef 10, ptr noundef %product.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %input_abs_set_res.exit67.i.i.i.if.end25.i.i.i_crit_edge, label %if.then22.i.i.i

input_abs_set_res.exit67.i.i.i.if.end25.i.i.i_crit_edge: ; preds = %input_abs_set_res.exit67.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i.i

if.then22.i.i.i:                                  ; preds = %input_abs_set_res.exit67.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 4097, ptr %product.i.i.i, align 4
  br label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %if.then22.i.i.i, %input_abs_set_res.exit67.i.i.i.if.end25.i.i.i_crit_edge
  %version.i.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 17
  %83 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %version.i.i.i, align 2
  %version27.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i38.i, i32 0, i32 3, i32 3
  %85 = ptrtoint ptr %version27.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %version27.i.i.i, align 2
  %call28.i.i.i = call i32 @input_register_device(ptr noundef nonnull %call.i.i38.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call28.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %goodix_create_pen_input.exit.i.i, label %if.end25.i.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end25.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.end25.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  call void @input_free_device(ptr noundef nonnull %call.i.i38.i) #11
  br label %goodix_create_pen_input.exit.thread.i.i

goodix_create_pen_input.exit.thread.i.i:          ; preds = %cleanup.sink.split.i.i.i, %if.then.i.i.goodix_create_pen_input.exit.thread.i.i_crit_edge
  %86 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %input_pen.i.i, align 4
  br label %goodix_ts_report_pen_down.exit.i

goodix_create_pen_input.exit.i.i:                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i.i38.i, ptr %input_pen.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %goodix_create_pen_input.exit.i.i, %if.then2.i.if.end5.i.i_crit_edge
  %88 = ptrtoint ptr %contact_size.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %contact_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %89)
  %cmp.i42.i = icmp eq i32 %89, 9
  %..i.i = select i1 %cmp.i42.i, i32 4, i32 2
  %.79.i.i = select i1 %cmp.i42.i, i32 6, i32 4
  %.80.i.i = select i1 %cmp.i42.i, i32 8, i32 6
  %arrayidx14.i.i = getelementptr i8, ptr %point_data.i, i32 %..i.i
  %90 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %arrayidx14.i.i, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91) #11
  %arrayidx17.i.i = getelementptr i8, ptr %point_data.i, i32 %.79.i.i
  %93 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %arrayidx17.i.i, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94) #11
  %arrayidx20.i.i = getelementptr i8, ptr %point_data.i, i32 %.80.i.i
  %96 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %arrayidx20.i.i, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97) #11
  %input_w.0.i.i = zext i16 %98 to i32
  %input_y.0.i.i = zext i16 %95 to i32
  %input_x.0.i.i = zext i16 %92 to i32
  %99 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %input_pen.i.i, align 4
  %prop.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 5
  call void @touchscreen_report_pos(ptr noundef %100, ptr noundef %prop.i.i, i32 noundef %input_x.0.i.i, i32 noundef %input_y.0.i.i, i1 noundef zeroext false) #11
  %101 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %input_pen.i.i, align 4
  call void @input_event(ptr noundef %102, i32 noundef 3, i32 noundef 24, i32 noundef %input_w.0.i.i) #11
  %103 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %input_pen.i.i, align 4
  call void @input_event(ptr noundef %104, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  %105 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %input_pen.i.i, align 4
  call void @input_event(ptr noundef %106, i32 noundef 1, i32 noundef 320, i32 noundef 1) #11
  %107 = ptrtoint ptr %point_data.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %point_data.i, align 1
  %109 = and i8 %108, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool30.not.i43.i = icmp eq i8 %109, 0
  br i1 %tobool30.not.i43.i, label %if.else40.i.i, label %if.then31.i44.i

if.then31.i44.i:                                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %contact_size.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %contact_size.i.i, align 4
  %add.i.i = add i32 %111, 1
  %arrayidx33.i.i = getelementptr i8, ptr %point_data.i, i32 %add.i.i
  %112 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx33.i.i, align 1
  %114 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %input_pen.i.i, align 4
  %conv35.i.i = zext i8 %113 to i32
  %and36.i.i = lshr i32 %conv35.i.i, 4
  %and36.lobit.i.i = and i32 %and36.i.i, 1
  call void @input_event(ptr noundef %115, i32 noundef 1, i32 noundef 331, i32 noundef %and36.lobit.i.i) #11
  %116 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %input_pen.i.i, align 4
  %and39.i.i = lshr i32 %conv35.i.i, 5
  %and39.lobit.i.i = and i32 %and39.i.i, 1
  call void @input_event(ptr noundef %117, i32 noundef 1, i32 noundef 332, i32 noundef %and39.lobit.i.i) #11
  br label %if.end43.i.i

if.else40.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %input_pen.i.i, align 4
  call void @input_event(ptr noundef %119, i32 noundef 1, i32 noundef 331, i32 noundef 0) #11
  %120 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %input_pen.i.i, align 4
  call void @input_event(ptr noundef %121, i32 noundef 1, i32 noundef 332, i32 noundef 0) #11
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.else40.i.i, %if.then31.i44.i
  %122 = ptrtoint ptr %input_pen.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %input_pen.i.i, align 4
  call void @input_event(ptr noundef %123, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %goodix_ts_report_pen_down.exit.i

goodix_ts_report_pen_down.exit.i:                 ; preds = %if.end43.i.i, %goodix_create_pen_input.exit.thread.i.i
  call fastcc void @goodix_ts_release_keys(ptr noundef %dev_id) #11
  br label %sync.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge, %if.then31.i.i.if.else.i_crit_edge, %if.end.thread.i
  %retval.0.i70.i = phi i32 [ 1, %land.lhs.true.i.if.else.i_crit_edge ], [ %and8.i.i, %if.end.i.if.else.i_crit_edge ], [ %and8.i.i, %if.end.thread.i ], [ 0, %if.then31.i.i.if.else.i_crit_edge ]
  %input_pen.i45.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 2
  %124 = ptrtoint ptr %input_pen.i45.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %input_pen.i45.i, align 4
  %tobool.not.i46.i = icmp eq ptr %125, null
  br i1 %tobool.not.i46.i, label %if.else.i.goodix_ts_report_pen_up.exit.i_crit_edge, label %if.end.i47.i

if.else.i.goodix_ts_report_pen_up.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_ts_report_pen_up.exit.i

if.end.i47.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @input_event(ptr noundef nonnull %125, i32 noundef 1, i32 noundef 330, i32 noundef 0) #11
  %126 = ptrtoint ptr %input_pen.i45.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %input_pen.i45.i, align 4
  call void @input_event(ptr noundef %127, i32 noundef 1, i32 noundef 320, i32 noundef 0) #11
  %128 = ptrtoint ptr %input_pen.i45.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %input_pen.i45.i, align 4
  call void @input_event(ptr noundef %129, i32 noundef 1, i32 noundef 331, i32 noundef 0) #11
  %130 = ptrtoint ptr %input_pen.i45.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %input_pen.i45.i, align 4
  call void @input_event(ptr noundef %131, i32 noundef 1, i32 noundef 332, i32 noundef 0) #11
  %132 = ptrtoint ptr %input_pen.i45.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %input_pen.i45.i, align 4
  call void @input_event(ptr noundef %133, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %goodix_ts_report_pen_up.exit.i

goodix_ts_report_pen_up.exit.i:                   ; preds = %if.end.i47.i, %if.else.i.goodix_ts_report_pen_up.exit.i_crit_edge
  %134 = ptrtoint ptr %point_data.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %point_data.i, align 1
  %conv.i.i = zext i8 %135 to i32
  %and.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i48.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i48.i, label %if.else.i.i, label %if.then.i52.i

if.then.i52.i:                                    ; preds = %goodix_ts_report_pen_up.exit.i
  %and3.i.i = and i32 %conv.i.i, 15
  %136 = ptrtoint ptr %contact_size.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %contact_size.i.i, align 4
  %mul.i50.i = mul i32 %137, %and3.i.i
  %add.i51.i = add i32 %mul.i50.i, 1
  %arrayidx4.i.i = getelementptr i8, ptr %point_data.i, i32 %add.i51.i
  %138 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx4.i.i, align 1
  %conv6.i.i = zext i8 %139 to i32
  %input_dev.i.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 1
  %and7.i.i = and i32 %conv6.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then.i52.i.for.inc.i.i_crit_edge, label %if.then9.i.i

if.then.i52.i.for.inc.i.i_crit_edge:              ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %input_dev.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 25, i32 0
  %142 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx10.i.i, align 2
  %conv11.i.i = zext i16 %143 to i32
  call void @input_event(ptr noundef %141, i32 noundef 1, i32 noundef %conv11.i.i, i32 noundef 1) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %if.then.i52.i.for.inc.i.i_crit_edge
  %and7.1.i.i = and i32 %conv6.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1.i.i)
  %tobool8.not.1.i.i = icmp eq i32 %and7.1.i.i, 0
  br i1 %tobool8.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then9.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i

if.then9.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %input_dev.i.i, align 4
  %arrayidx10.1.i.i = getelementptr %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 25, i32 1
  %146 = ptrtoint ptr %arrayidx10.1.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx10.1.i.i, align 2
  %conv11.1.i.i = zext i16 %147 to i32
  call void @input_event(ptr noundef %145, i32 noundef 1, i32 noundef %conv11.1.i.i, i32 noundef 1) #11
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then9.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %and7.2.i.i = and i32 %conv6.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2.i.i)
  %tobool8.not.2.i.i = icmp eq i32 %and7.2.i.i, 0
  br i1 %tobool8.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then9.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i.i

if.then9.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %input_dev.i.i, align 4
  %arrayidx10.2.i.i = getelementptr %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 25, i32 2
  %150 = ptrtoint ptr %arrayidx10.2.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx10.2.i.i, align 2
  %conv11.2.i.i = zext i16 %151 to i32
  call void @input_event(ptr noundef %149, i32 noundef 1, i32 noundef %conv11.2.i.i, i32 noundef 1) #11
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then9.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %and7.3.i.i = and i32 %conv6.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3.i.i)
  %tobool8.not.3.i.i = icmp eq i32 %and7.3.i.i, 0
  br i1 %tobool8.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.then9.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i.i

if.then9.3.i.i:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %input_dev.i.i, align 4
  %arrayidx10.3.i.i = getelementptr %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 25, i32 3
  %154 = ptrtoint ptr %arrayidx10.3.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx10.3.i.i, align 2
  %conv11.3.i.i = zext i16 %155 to i32
  call void @input_event(ptr noundef %153, i32 noundef 1, i32 noundef %conv11.3.i.i, i32 noundef 1) #11
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then9.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %and7.4.i.i = and i32 %conv6.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.4.i.i)
  %tobool8.not.4.i.i = icmp eq i32 %and7.4.i.i, 0
  br i1 %tobool8.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.then9.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i.i

if.then9.4.i.i:                                   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %input_dev.i.i, align 4
  %arrayidx10.4.i.i = getelementptr %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 25, i32 4
  %158 = ptrtoint ptr %arrayidx10.4.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx10.4.i.i, align 2
  %conv11.4.i.i = zext i16 %159 to i32
  call void @input_event(ptr noundef %157, i32 noundef 1, i32 noundef %conv11.4.i.i, i32 noundef 1) #11
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then9.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %and7.5.i.i = and i32 %conv6.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.5.i.i)
  %tobool8.not.5.i.i = icmp eq i32 %and7.5.i.i, 0
  br i1 %tobool8.not.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.then9.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i.i

if.then9.5.i.i:                                   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %input_dev.i.i, align 4
  %arrayidx10.5.i.i = getelementptr %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 25, i32 5
  %162 = ptrtoint ptr %arrayidx10.5.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx10.5.i.i, align 2
  %conv11.5.i.i = zext i16 %163 to i32
  call void @input_event(ptr noundef %161, i32 noundef 1, i32 noundef %conv11.5.i.i, i32 noundef 1) #11
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.then9.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %and7.6.i.i = and i32 %conv6.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.6.i.i)
  %tobool8.not.6.i.i = icmp eq i32 %and7.6.i.i, 0
  br i1 %tobool8.not.6.i.i, label %for.inc.5.i.i.goodix_ts_report_key.exit.i_crit_edge, label %if.then9.6.i.i

for.inc.5.i.i.goodix_ts_report_key.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_ts_report_key.exit.i

if.then9.6.i.i:                                   ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %164 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %input_dev.i.i, align 4
  %arrayidx10.6.i.i = getelementptr %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 25, i32 6
  %166 = ptrtoint ptr %arrayidx10.6.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx10.6.i.i, align 2
  %conv11.6.i.i = zext i16 %167 to i32
  call void @input_event(ptr noundef %165, i32 noundef 1, i32 noundef %conv11.6.i.i, i32 noundef 1) #11
  br label %goodix_ts_report_key.exit.i

if.else.i.i:                                      ; preds = %goodix_ts_report_pen_up.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @goodix_ts_release_keys(ptr noundef %dev_id) #11
  br label %goodix_ts_report_key.exit.i

goodix_ts_report_key.exit.i:                      ; preds = %if.else.i.i, %if.then9.6.i.i, %for.inc.5.i.i.goodix_ts_report_key.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i70.i)
  %cmp680.not.i = icmp eq i32 %retval.0.i70.i, 0
  br i1 %cmp680.not.i, label %goodix_ts_report_key.exit.i.sync.i_crit_edge, label %for.body.lr.ph.i

goodix_ts_report_key.exit.i.sync.i_crit_edge:     ; preds = %goodix_ts_report_key.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync.i

for.body.lr.ph.i:                                 ; preds = %goodix_ts_report_key.exit.i
  %input_dev.i63.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 1
  %prop.i65.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %168 = ptrtoint ptr %contact_size.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %contact_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %169)
  %cmp8.i = icmp eq i32 %169, 9
  br i1 %cmp8.i, label %if.then10.i, label %if.else13.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = mul nuw nsw i32 %i.081.i, 9
  %add.i = add nuw nsw i32 %mul.i, 1
  %arrayidx12.i = getelementptr [92 x i8], ptr %point_data.i, i32 0, i32 %add.i
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx12.i, i32 1
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i.i, align 1
  %172 = and i8 %171, 15
  %and.i53.i = zext i8 %172 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %arrayidx12.i, i32 3
  %173 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %arrayidx1.i.i, align 1
  %175 = call i16 @llvm.bswap.i16(i16 %174) #11
  %conv2.i.i = zext i16 %175 to i32
  %arrayidx3.i.i = getelementptr i8, ptr %arrayidx12.i, i32 5
  %176 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %arrayidx3.i.i, align 1
  %178 = call i16 @llvm.bswap.i16(i16 %177) #11
  %conv5.i.i = zext i16 %178 to i32
  %arrayidx6.i.i = getelementptr i8, ptr %arrayidx12.i, i32 7
  %179 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 2)
  %180 = load i16, ptr %arrayidx6.i.i, align 1
  %181 = call i16 @llvm.bswap.i16(i16 %180) #11
  %182 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %input_dev.i63.i, align 4
  call void @input_event(ptr noundef %183, i32 noundef 3, i32 noundef 47, i32 noundef %and.i53.i) #11
  %184 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %input_dev.i63.i, align 4
  %call10.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %185, i32 noundef 0, i1 noundef zeroext true) #11
  %186 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %input_dev.i63.i, align 4
  call void @touchscreen_report_pos(ptr noundef %187, ptr noundef %prop.i65.i, i32 noundef %conv2.i.i, i32 noundef %conv5.i.i, i1 noundef zeroext true) #11
  br label %for.inc.i

if.else13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul15.i = mul i32 %169, %i.081.i
  %add16.i = add i32 %mul15.i, 1
  %arrayidx17.i = getelementptr [92 x i8], ptr %point_data.i, i32 0, i32 %add16.i
  %188 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx17.i, align 1
  %190 = and i8 %189, 15
  %and.i56.i = zext i8 %190 to i32
  %arrayidx1.i57.i = getelementptr i8, ptr %arrayidx17.i, i32 1
  %191 = ptrtoint ptr %arrayidx1.i57.i to i32
  call void @__asan_loadN_noabort(i32 %191, i32 2)
  %192 = load i16, ptr %arrayidx1.i57.i, align 1
  %193 = call i16 @llvm.bswap.i16(i16 %192) #11
  %conv2.i58.i = zext i16 %193 to i32
  %arrayidx3.i59.i = getelementptr i8, ptr %arrayidx17.i, i32 3
  %194 = ptrtoint ptr %arrayidx3.i59.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 2)
  %195 = load i16, ptr %arrayidx3.i59.i, align 1
  %196 = call i16 @llvm.bswap.i16(i16 %195) #11
  %conv5.i60.i = zext i16 %196 to i32
  %arrayidx6.i61.i = getelementptr i8, ptr %arrayidx17.i, i32 5
  %197 = ptrtoint ptr %arrayidx6.i61.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %198 = load i16, ptr %arrayidx6.i61.i, align 1
  %199 = call i16 @llvm.bswap.i16(i16 %198) #11
  %200 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %input_dev.i63.i, align 4
  call void @input_event(ptr noundef %201, i32 noundef 3, i32 noundef 47, i32 noundef %and.i56.i) #11
  %202 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %input_dev.i63.i, align 4
  %call10.i64.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %203, i32 noundef 0, i1 noundef zeroext true) #11
  %204 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %input_dev.i63.i, align 4
  call void @touchscreen_report_pos(ptr noundef %205, ptr noundef %prop.i65.i, i32 noundef %conv2.i58.i, i32 noundef %conv5.i60.i, i1 noundef zeroext true) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else13.i, %if.then10.i
  %conv8.i.sink102.in.i = phi i16 [ %181, %if.then10.i ], [ %199, %if.else13.i ]
  %conv8.i.sink102.i = zext i16 %conv8.i.sink102.in.i to i32
  %206 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %input_dev.i63.i, align 4
  call void @input_event(ptr noundef %207, i32 noundef 3, i32 noundef 48, i32 noundef %conv8.i.sink102.i) #11
  %208 = ptrtoint ptr %input_dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %input_dev.i63.i, align 4
  call void @input_event(ptr noundef %209, i32 noundef 3, i32 noundef 50, i32 noundef %conv8.i.sink102.i) #11
  %inc.i = add nuw nsw i32 %i.081.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %retval.0.i70.i
  br i1 %exitcond.not.i, label %for.inc.i.sync.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.sync.i_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sync.i

sync.i:                                           ; preds = %for.inc.i.sync.i_crit_edge, %goodix_ts_report_key.exit.i.sync.i_crit_edge, %goodix_ts_report_pen_down.exit.i
  %input_dev.i = getelementptr inbounds %struct.goodix_ts_data, ptr %dev_id, i32 0, i32 1
  %210 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %input_dev.i, align 4
  call void @input_mt_sync_frame(ptr noundef %211) #11
  %212 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %input_dev.i, align 4
  call void @input_event(ptr noundef %213, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %goodix_process_events.exit

goodix_process_events.exit:                       ; preds = %sync.i, %if.end35.i.i.goodix_process_events.exit_crit_edge, %goodix_i2c_read.exit84.i.i, %if.then5.i.i.goodix_process_events.exit_crit_edge, %goodix_i2c_read.exit.i.i
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %point_data.i) #11
  %214 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %216 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %value.addr.i, align 1
  %call.i = call i32 @goodix_i2c_write(ptr noundef %215, i16 noundef zeroext -32434, ptr noundef nonnull %value.addr.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @goodix_ts_release_keys(ptr nocapture noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 4
  %arrayidx = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef 0) #11
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %arrayidx.1 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %7 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %conv.1, i32 noundef 0) #11
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 4
  %arrayidx.2 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %11 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef %conv.2, i32 noundef 0) #11
  %12 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev, align 4
  %arrayidx.3 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %15 to i32
  tail call void @input_event(ptr noundef %13, i32 noundef 1, i32 noundef %conv.3, i32 noundef 0) #11
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 4
  %arrayidx.4 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef %conv.4, i32 noundef 0) #11
  %20 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_dev, align 4
  %arrayidx.5 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %23 to i32
  tail call void @input_event(ptr noundef %21, i32 noundef 1, i32 noundef %conv.5, i32 noundef 0) #11
  %24 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_dev, align 4
  %arrayidx.6 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 25, i32 6
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %27 to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %conv.6, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @goodix_handle_fw_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %load_cfg_from_disk = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %load_cfg_from_disk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %load_cfg_from_disk, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %firmware_loading_complete = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 20
  tail call void @wait_for_completion(ptr noundef %firmware_loading_complete) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq_pin_access_method = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %irq_pin_access_method to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_pin_access_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr i8, ptr %dev, i32 932
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %7) #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %dev.i, i32 noundef %11, ptr noundef %1) #11
  tail call void @goodix_save_bak_ref(ptr noundef %1) #11
  %12 = ptrtoint ptr %irq_pin_access_method to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_pin_access_method, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %13, label %if.end2.if.then5_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb5.i
  ]

if.end2.if.then5_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

do.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev.i29 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i29, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #14
  br label %if.then5

sw.bb1.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int.i = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %gpiod_int.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpiod_int.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %18, i32 noundef 0) #11
  br label %goodix_irq_direction_output.exit

sw.bb2.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int3.i = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %gpiod_int3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpiod_int3.i, align 4
  %call4.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %20, i32 noundef 0) #11
  br label %goodix_irq_direction_output.exit

sw.bb5.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  br label %if.then5

goodix_irq_direction_output.exit:                 ; preds = %sw.bb2.i, %sw.bb1.i
  %retval.0.i = phi i32 [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %if.end7, label %goodix_irq_direction_output.exit.if.then5_crit_edge

goodix_irq_direction_output.exit.if.then5_crit_edge: ; preds = %goodix_irq_direction_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %goodix_irq_direction_output.exit.if.then5_crit_edge, %sw.bb5.i, %do.end.i, %if.end2.if.then5_crit_edge
  %retval.0.i53 = phi i32 [ %retval.0.i, %goodix_irq_direction_output.exit.if.then5_crit_edge ], [ -22, %sw.bb5.i ], [ -22, %do.end.i ], [ -22, %if.end2.if.then5_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %dev.i30 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %irq.i31 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %irq.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i31, align 4
  %irq_flags.i = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 21
  %27 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_flags.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 2
  %call.i32 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i30, i32 noundef %26, ptr noundef null, ptr noundef nonnull @goodix_ts_irq_handler, i32 noundef %28, ptr noundef %name.i, ptr noundef %1) #11
  br label %cleanup

if.end7:                                          ; preds = %goodix_irq_direction_output.exit
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %31 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %value.addr.i, align 1
  %call.i33 = call i32 @goodix_i2c_write(ptr noundef %30, i16 noundef zeroext -32704, ptr noundef nonnull %value.addr.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool10.not = icmp eq i32 %call.i33, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end7
  %32 = ptrtoint ptr %irq_pin_access_method to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq_pin_access_method, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %33, label %if.then11.goodix_irq_direction_input.exit_crit_edge [
    i32 0, label %do.end.i36
    i32 1, label %sw.bb1.i39
    i32 2, label %sw.bb2.i42
    i32 3, label %sw.bb5.i44
  ]

if.then11.goodix_irq_direction_input.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %goodix_irq_direction_input.exit

do.end.i36:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %dev.i35 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i35, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20) #14
  br label %goodix_irq_direction_input.exit

sw.bb1.i39:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int.i37 = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %gpiod_int.i37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gpiod_int.i37, align 4
  %call.i38 = tail call i32 @gpiod_direction_input(ptr noundef %38) #11
  br label %goodix_irq_direction_input.exit

sw.bb2.i42:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int3.i40 = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %gpiod_int3.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gpiod_int3.i40, align 4
  %call4.i41 = tail call i32 @gpiod_direction_input(ptr noundef %40) #11
  br label %goodix_irq_direction_input.exit

sw.bb5.i44:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %dev.i.i43 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i43, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21) #14
  br label %goodix_irq_direction_input.exit

goodix_irq_direction_input.exit:                  ; preds = %sw.bb5.i44, %sw.bb2.i42, %sw.bb1.i39, %do.end.i36, %if.then11.goodix_irq_direction_input.exit_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %dev.i46 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %irq.i47 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %irq.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i47, align 4
  %irq_flags.i48 = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 21
  %47 = ptrtoint ptr %irq_flags.i48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq_flags.i48, align 4
  %name.i49 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 2
  %call.i50 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i46, i32 noundef %46, ptr noundef null, ptr noundef nonnull @goodix_ts_irq_handler, i32 noundef %48, ptr noundef %name.i49, ptr noundef %1) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 58) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %goodix_irq_direction_input.exit, %if.then5, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %retval.0.i53, %if.then5 ], [ -11, %goodix_irq_direction_input.exit ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goodix_resume(ptr noundef %dev) #0 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i = alloca i16, align 2
  %config_ver = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config_ver) #11
  %2 = ptrtoint ptr %config_ver to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %config_ver, align 1, !annotation !246
  %irq_pin_access_method = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %irq_pin_access_method to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_pin_access_method, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 3, label %sw.bb5.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr i8, ptr %dev, i32 932
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %7) #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int.i = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %gpiod_int.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_int.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %9, i32 noundef 1) #11
  br label %goodix_irq_direction_output.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gpiod_int3.i = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %gpiod_int3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_int3.i, align 4
  %call4.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %11, i32 noundef 1) #11
  br label %goodix_irq_direction_output.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  br label %cleanup

goodix_irq_direction_output.exit:                 ; preds = %sw.bb2.i, %sw.bb1.i
  %retval.0.i = phi i32 [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end3, label %goodix_irq_direction_output.exit.cleanup_crit_edge

goodix_irq_direction_output.exit.cleanup_crit_edge: ; preds = %goodix_irq_direction_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %goodix_irq_direction_output.exit
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 5000, i32 noundef 2) #11
  %call4 = tail call i32 @goodix_int_sync(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %chip = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #11
  %20 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #11
  %22 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %19, ptr %wbuf.i, align 2
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.i, align 2
  %26 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %msgs.i, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %20, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %wbuf.i, ptr %buf6.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %flags8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %flags8.i, align 2
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %25, ptr %arrayidx7.i, align 4
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %config_ver, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i73 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i73)
  %cmp17.i = icmp eq i32 %call.i73, 2
  %cond.i = select i1 %cmp17.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp31.i = icmp slt i32 %call.i73, 0
  %ret.0.i = select i1 %cmp31.i, i32 %call.i73, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %goodix_i2c_read.exit

goodix_i2c_read.exit:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i74 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %conv20.i = zext i16 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i74, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %conv20.i, i32 noundef %ret.0.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  br label %if.then28

land.lhs.true:                                    ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  %35 = ptrtoint ptr %config_ver to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %config_ver, align 1
  %config = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 24
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp12.not = icmp eq i8 %36, %38
  br i1 %cmp12.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %do.end

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = zext i8 %38 to i32
  %conv = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.101, i32 noundef %conv, i32 noundef %conv11) #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end, %land.lhs.true.lor.lhs.false_crit_edge
  %39 = ptrtoint ptr %config_ver to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %config_ver, align 1
  %41 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp26.not = icmp eq i8 %40, %42
  br i1 %cmp26.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %goodix_i2c_read.exit
  %call.i76 = call i32 @goodix_reset_no_int_sync(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %goodix_reset.exit, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

goodix_reset.exit:                                ; preds = %if.then28
  %call1.i = call i32 @goodix_int_sync(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool30.not = icmp eq i32 %call1.i, 0
  br i1 %tobool30.not, label %if.end32, label %goodix_reset.exit.cleanup_crit_edge

goodix_reset.exit.cleanup_crit_edge:              ; preds = %goodix_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %goodix_reset.exit
  %config33 = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 24
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip, align 4
  %config_len = getelementptr inbounds %struct.goodix_chip_data, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %config_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %config_len, align 4
  %call35 = call i32 @goodix_send_cfg(ptr noundef %1, ptr noundef %config33, i32 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end32.if.end39_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %if.end32.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %dev.i79 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq.i, align 4
  %irq_flags.i = getelementptr inbounds %struct.goodix_ts_data, ptr %1, i32 0, i32 21
  %51 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq_flags.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 2
  %call.i80 = call i32 @devm_request_threaded_irq(ptr noundef %dev.i79, i32 noundef %50, ptr noundef null, ptr noundef nonnull @goodix_ts_irq_handler, i32 noundef %52, ptr noundef %name.i, ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end32.cleanup_crit_edge, %goodix_reset.exit.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %goodix_irq_direction_output.exit.cleanup_crit_edge, %sw.bb5.i, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %goodix_irq_direction_output.exit.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call1.i, %goodix_reset.exit.cleanup_crit_edge ], [ %call35, %if.end32.cleanup_crit_edge ], [ %call.i80, %if.end39 ], [ -22, %sw.bb5.i ], [ %call.i76, %if.then28.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config_ver) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @goodix_save_bak_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !35, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !96, !97, !99, !100, !102, !104, !105, !106, !107, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !124, !126, !127, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !175, !176, !177, !179, !180, !182, !184, !186, !187, !188, !189, !191, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !233, !234}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/goodix.c", i32 181, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @goodix_i2c_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @goodix_i2c_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/goodix.c", i32 220, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @goodix_i2c_write._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @goodix_i2c_write._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/goodix.c", i32 640, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @goodix_send_cfg.__UNIQUE_ID_ddebug288, !14, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/goodix.c", i32 741, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @goodix_int_sync._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @goodix_int_sync._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/goodix.c", i32 788, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @goodix_reset_no_int_sync._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @goodix_reset_no_int_sync._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_goodix_ts__292_1539_goodix_ts_driver_init6, !29, !"__initcall__kmod_goodix_ts__292_1539_goodix_ts_driver_init6", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/goodix.c", i32 1539, i32 1}
!30 = !{ptr @__exitcall_goodix_ts_driver_exit, !29, !"__exitcall_goodix_ts_driver_exit", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_author293, !32, !"__UNIQUE_ID_author293", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/goodix.c", i32 1541, i32 1}
!33 = !{ptr @__UNIQUE_ID_author294, !34, !"__UNIQUE_ID_author294", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/goodix.c", i32 1542, i32 1}
!35 = !{ptr @__UNIQUE_ID_description295, !36, !"__UNIQUE_ID_description295", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/goodix.c", i32 1543, i32 1}
!37 = !{ptr @__UNIQUE_ID_file296, !38, !"__UNIQUE_ID_file296", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/goodix.c", i32 1544, i32 1}
!39 = !{ptr @__UNIQUE_ID_license297, !38, !"__UNIQUE_ID_license297", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/goodix.c", i32 613, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @goodix_check_cfg._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @goodix_check_cfg._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/goodix.c", i32 686, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @goodix_irq_direction_output._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @goodix_irq_direction_output._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/goodix.c", i32 676, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @goodix_pin_acpi_output_method._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @goodix_pin_acpi_output_method._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/goodix.c", i32 709, i32 3}
!57 = !{ptr @goodix_irq_direction_input._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @goodix_irq_direction_input._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/goodix.c", i32 669, i32 2}
!61 = !{ptr @goodix_pin_acpi_direction_input._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @goodix_pin_acpi_direction_input._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/goodix.c", i32 1533, i32 11}
!65 = !{ptr @goodix_ts_driver, !66, !"goodix_ts_driver", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/goodix.c", i32 1528, i32 26}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/goodix.c", i32 1280, i32 2}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @goodix_ts_probe.__UNIQUE_ID_ddebug291, !68, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/goodix.c", i32 1283, i32 3}
!73 = !{ptr @goodix_ts_probe._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @goodix_ts_probe._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/goodix.c", i32 1303, i32 3}
!77 = !{ptr @goodix_ts_probe._entry.26, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @goodix_ts_probe._entry_ptr.28, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/goodix.c", i32 1311, i32 3}
!81 = !{ptr @goodix_ts_probe._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @goodix_ts_probe._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/goodix.c", i32 1339, i32 3}
!85 = !{ptr @goodix_ts_probe._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @goodix_ts_probe._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/touchscreen/goodix.c", i32 1356, i32 11}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/goodix.c", i32 1360, i32 6}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/goodix.c", i32 1363, i32 6}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/goodix.c", i32 1369, i32 4}
!95 = !{ptr @goodix_ts_probe._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @goodix_ts_probe._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @init_completion.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../include/linux/completion.h", i32 87, i32 2}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/goodix.c", i32 955, i32 39}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/goodix.c", i32 959, i32 4}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @goodix_get_gpio_config._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @goodix_get_gpio_config._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/touchscreen/goodix.c", i32 964, i32 38}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/touchscreen/goodix.c", i32 968, i32 4}
!111 = !{ptr @goodix_get_gpio_config._entry.46, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @goodix_get_gpio_config._entry_ptr.48, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/goodix.c", i32 975, i32 39}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/goodix.c", i32 979, i32 4}
!117 = !{ptr @goodix_get_gpio_config._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @goodix_get_gpio_config._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/goodix.c", i32 992, i32 39}
!121 = !{ptr @goodix_get_gpio_config._entry.54, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/goodix.c", i32 996, i32 4}
!123 = !{ptr @goodix_get_gpio_config._entry_ptr.55, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/touchscreen/goodix.c", i32 1092, i32 2}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @goodix_read_version._entry, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @goodix_read_version._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/touchscreen/goodix.c", i32 97, i32 10}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/goodix.c", i32 98, i32 10}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/touchscreen/goodix.c", i32 99, i32 10}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/goodix.c", i32 100, i32 10}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/goodix.c", i32 101, i32 10}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/touchscreen/goodix.c", i32 103, i32 10}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/goodix.c", i32 104, i32 10}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/touchscreen/goodix.c", i32 105, i32 10}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/goodix.c", i32 106, i32 10}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/touchscreen/goodix.c", i32 107, i32 10}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/touchscreen/goodix.c", i32 108, i32 10}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/touchscreen/goodix.c", i32 110, i32 10}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/touchscreen/goodix.c", i32 111, i32 10}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/goodix.c", i32 112, i32 10}
!158 = !{ptr @goodix_chip_ids, !159, !"goodix_chip_ids", i1 false, i1 false}
!159 = !{!"../drivers/input/touchscreen/goodix.c", i32 96, i32 36}
!160 = !{ptr @gt1x_chip_data, !161, !"gt1x_chip_data", i1 false, i1 false}
!161 = !{!"../drivers/input/touchscreen/goodix.c", i32 68, i32 38}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/touchscreen/goodix.c", i32 575, i32 3}
!164 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @goodix_check_cfg_16._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @goodix_check_cfg_16._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/touchscreen/goodix.c", i32 581, i32 3}
!169 = !{ptr @goodix_check_cfg_16._entry.75, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @goodix_check_cfg_16._entry_ptr.77, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @gt911_chip_data, !172, !"gt911_chip_data", i1 false, i1 false}
!172 = !{!"../drivers/input/touchscreen/goodix.c", i32 75, i32 38}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/touchscreen/goodix.c", i32 538, i32 3}
!175 = !{ptr @goodix_check_cfg_8._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @goodix_check_cfg_8._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @goodix_check_cfg_8._entry.79, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/input/touchscreen/goodix.c", i32 544, i32 3}
!179 = !{ptr @goodix_check_cfg_8._entry_ptr.80, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @gt967_chip_data, !181, !"gt967_chip_data", i1 false, i1 false}
!181 = !{!"../drivers/input/touchscreen/goodix.c", i32 82, i32 38}
!182 = !{ptr @gt9x_chip_data, !183, !"gt9x_chip_data", i1 false, i1 false}
!183 = !{!"../drivers/input/touchscreen/goodix.c", i32 89, i32 38}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/input/touchscreen/goodix.c", i32 1140, i32 3}
!186 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @goodix_configure_dev._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @goodix_configure_dev._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/input/touchscreen/goodix.c", i32 1144, i32 24}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/touchscreen/goodix.c", i32 1145, i32 24}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/input/touchscreen/goodix.c", i32 1178, i32 3}
!195 = !{ptr @goodix_configure_dev._entry.85, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @goodix_configure_dev._entry_ptr.87, !194, !"_entry_ptr", i1 false, i1 false}
!197 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/input/touchscreen/goodix.c", i32 1193, i32 3}
!199 = distinct !{null, !198, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!200 = distinct !{null, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/touchscreen/goodix.c", i32 1199, i32 3}
!202 = distinct !{null, !201, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/input/touchscreen/goodix.c", i32 1206, i32 3}
!205 = !{ptr @goodix_configure_dev._entry.90, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @goodix_configure_dev._entry_ptr.92, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/input/touchscreen/goodix.c", i32 1213, i32 3}
!209 = !{ptr @goodix_configure_dev._entry.93, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @goodix_configure_dev._entry_ptr.95, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/input/touchscreen/goodix.c", i32 1221, i32 3}
!213 = !{ptr @goodix_configure_dev._entry.96, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @goodix_configure_dev._entry_ptr.98, !212, !"_entry_ptr", i1 false, i1 false}
!215 = distinct !{null, !216, !"nine_bytes_report", i1 false, i1 false}
!216 = !{!"../drivers/input/touchscreen/goodix.c", i32 123, i32 35}
!217 = distinct !{null, !218, !"inverted_x_screen", i1 false, i1 false}
!218 = !{!"../drivers/input/touchscreen/goodix.c", i32 139, i32 35}
!219 = !{ptr @goodix_irq_flags, !220, !"goodix_irq_flags", i1 false, i1 false}
!220 = !{!"../drivers/input/touchscreen/goodix.c", i32 116, i32 28}
!221 = !{ptr @.str.99, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/touchscreen/goodix.c", i32 335, i32 16}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/input/touchscreen/goodix.c", i32 336, i32 16}
!225 = !{ptr @goodix_of_match, !226, !"goodix_of_match", i1 false, i1 false}
!226 = !{!"../drivers/input/touchscreen/goodix.c", i32 1509, i32 34}
!227 = !{ptr @goodix_pm_ops, !228, !"goodix_pm_ops", i1 false, i1 false}
!228 = !{!"../drivers/input/touchscreen/goodix.c", i32 1491, i32 8}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/input/touchscreen/goodix.c", i32 1471, i32 3}
!231 = !{ptr @.str.102, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @goodix_resume._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @goodix_resume._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @goodix_ts_id, !235, !"goodix_ts_id", i1 false, i1 false}
!235 = !{!"../drivers/input/touchscreen/goodix.c", i32 1493, i32 35}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{i64 2148729984, i64 2148729989, i64 2148730002, i64 2148730046, i64 2148730080, i64 2148730101}
!246 = !{!"auto-init"}
!247 = !{i8 0, i8 2}
