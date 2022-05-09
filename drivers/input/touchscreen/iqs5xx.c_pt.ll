; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/iqs5xx.c_pt.bc'
source_filename = "../drivers/input/touchscreen/iqs5xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.iqs5xx_private = type { ptr, ptr, ptr, %struct.touchscreen_properties, %struct.mutex, %struct.iqs5xx_dev_id_info, [2 x i8] }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.iqs5xx_dev_id_info = type <{ i16, i16, i8, i8, i8 }>
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.iqs5xx_status = type <{ [2 x i8], i8, i16, i16, [5 x %struct.iqs5xx_touch_data] }>
%struct.iqs5xx_touch_data = type <{ i16, i16, i16, i8 }>
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.iqs5xx_ihex_rec = type { i8, [2 x i8], [4 x i8], [2 x i8], [2 x i8] }

@__initcall__kmod_iqs5xx__288_1099_iqs5xx_i2c_driver_init6 = internal global ptr @iqs5xx_i2c_driver_init, section ".initcall6.init", align 4
@iqs5xx_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @iqs5xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iqs5xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iqs5xx_pm, ptr null, ptr null }, ptr @iqs5xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_iqs5xx_i2c_driver_exit = internal global ptr @iqs5xx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [46 x i8] c"iqs5xx.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"iqs5xx.description=Azoteq IQS550/572/525 Trackpad/Touchscreen Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"iqs5xx.file=drivers/input/touchscreen/iqs5xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"iqs5xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iqs5xx\00", [25 x i8] zeroinitializer }, align 32
@iqs5xx_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs572\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs525\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@iqs5xx_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @iqs5xx_suspend, ptr @iqs5xx_resume, ptr @iqs5xx_suspend, ptr @iqs5xx_resume, ptr @iqs5xx_suspend, ptr @iqs5xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iqs5xx_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"iqs550\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"iqs572\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"iqs525\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@iqs5xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1039, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request GPIO: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iqs5xx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/iqs5xx.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iqs5xx_probe._entry_ptr = internal global ptr @iqs5xx_probe._entry, section ".printk_index", align 4
@iqs5xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&iqs5xx->lock\00", [18 x i8] zeroinitializer }, align 32
@iqs5xx_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1053, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iqs5xx_probe._entry_ptr.10 = internal global ptr @iqs5xx_probe._entry.8, section ".printk_index", align 4
@iqs5xx_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @iqs5xx_attr_is_visible, ptr null, ptr @iqs5xx_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iqs5xx_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1059, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add attributes: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iqs5xx_probe._entry_ptr.13 = internal global ptr @iqs5xx_probe._entry.11, section ".printk_index", align 4
@iqs5xx_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1068, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@iqs5xx_probe._entry_ptr.16 = internal global ptr @iqs5xx_probe._entry.14, section ".printk_index", align 4
@iqs5xx_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unrecognized product number: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iqs5xx_dev_init\00", [16 x i8] zeroinitializer }, align 32
@iqs5xx_dev_init._entry_ptr = internal global ptr @iqs5xx_dev_init._entry, section ".printk_index", align 4
@iqs5xx_dev_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Opening bootloader for A000 device\0A\00", [60 x i8] zeroinitializer }, align 32
@iqs5xx_dev_init._entry_ptr.21 = internal global ptr @iqs5xx_dev_init._entry.19, section ".printk_index", align 4
@iqs5xx_read_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read from address 0x%04X: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs5xx_read_burst\00", [46 x i8] zeroinitializer }, align 32
@iqs5xx_read_burst._entry_ptr = internal global ptr @iqs5xx_read_burst._entry, section ".printk_index", align 4
@iqs5xx_bl_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to open bootloader: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iqs5xx_bl_open\00", [17 x i8] zeroinitializer }, align 32
@iqs5xx_bl_open._entry_ptr = internal global ptr @iqs5xx_bl_open._entry, section ".printk_index", align 4
@iqs5xx_bl_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unrecognized bootloader ID: 0x%04X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iqs5xx_bl_cmd\00", [18 x i8] zeroinitializer }, align 32
@iqs5xx_bl_cmd._entry_ptr = internal global ptr @iqs5xx_bl_cmd._entry, section ".printk_index", align 4
@iqs5xx_bl_cmd._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bootloader CRC failed\0A\00", [41 x i8] zeroinitializer }, align 32
@iqs5xx_bl_cmd._entry_ptr.30 = internal global ptr @iqs5xx_bl_cmd._entry.28, section ".printk_index", align 4
@iqs5xx_bl_cmd._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsuccessful bootloader command 0x%02X: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@iqs5xx_bl_cmd._entry_ptr.33 = internal global ptr @iqs5xx_bl_cmd._entry.31, section ".printk_index", align 4
@iqs5xx_axis_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 527, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid touchscreen size: %u*%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iqs5xx_axis_init\00", [47 x i8] zeroinitializer }, align 32
@iqs5xx_axis_init._entry_ptr = internal global ptr @iqs5xx_axis_init._entry, section ".printk_index", align 4
@iqs5xx_axis_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize slots: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@iqs5xx_axis_init._entry_ptr.38 = internal global ptr @iqs5xx_axis_init._entry.36, section ".printk_index", align 4
@iqs5xx_write_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to write to address 0x%04X: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iqs5xx_write_burst\00", [45 x i8] zeroinitializer }, align 32
@iqs5xx_write_burst._entry_ptr = internal global ptr @iqs5xx_write_burst._entry, section ".printk_index", align 4
@iqs5xx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unexpected device reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs5xx_irq\00", [21 x i8] zeroinitializer }, align 32
@iqs5xx_irq._entry_ptr = internal global ptr @iqs5xx_irq._entry, section ".printk_index", align 4
@iqs5xx_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 663, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-initialize device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iqs5xx_irq._entry_ptr.45 = internal global ptr @iqs5xx_irq._entry.43, section ".printk_index", align 4
@iqs5xx_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_fw_file, ptr @dev_attr_fw_info, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_fw_file = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fw_file_store }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw_file\00", [24 x i8] zeroinitializer }, align 32
@fw_file_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.47, ptr @.str.4, i32 930, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fw_file_store\00", [18 x i8] zeroinitializer }, align 32
@fw_file_store._entry_ptr = internal global ptr @fw_file_store._entry, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 727, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request firmware %s: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iqs5xx_fw_file_parse\00", [43 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr = internal global ptr @iqs5xx_fw_file_parse._entry, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 733, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Insufficient firmware size\0A\00", [36 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.52 = internal global ptr @iqs5xx_fw_file_parse._entry.50, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.4, i32 742, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid start at record %u\0A\00", [36 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.55 = internal global ptr @iqs5xx_fw_file_parse._entry.53, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.4, i32 750, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid header at record %u\0A\00", [35 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.58 = internal global ptr @iqs5xx_fw_file_parse._entry.56, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 759, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.60 = internal global ptr @iqs5xx_fw_file_parse._entry.59, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.49, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid data at record %u\0A\00", [37 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.63 = internal global ptr @iqs5xx_fw_file_parse._entry.61, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.49, ptr @.str.4, i32 776, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid checksum at record %u\0A\00", [33 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.66 = internal global ptr @iqs5xx_fw_file_parse._entry.64, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.49, ptr @.str.4, i32 790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Incorrect checksum at record %u\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.69 = internal global ptr @iqs5xx_fw_file_parse._entry.67, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.49, ptr @.str.4, i32 801, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid address at record %u\0A\00", [34 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.72 = internal global ptr @iqs5xx_fw_file_parse._entry.70, section ".printk_index", align 4
@iqs5xx_fw_file_parse._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.49, ptr @.str.4, i32 812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid type at record %u\0A\00", [37 x i8] zeroinitializer }, align 32
@iqs5xx_fw_file_parse._entry_ptr.75 = internal global ptr @iqs5xx_fw_file_parse._entry.73, section ".printk_index", align 4
@iqs5xx_bl_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to write block at address 0x%04X: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iqs5xx_bl_write\00", [16 x i8] zeroinitializer }, align 32
@iqs5xx_bl_write._entry_ptr = internal global ptr @iqs5xx_bl_write._entry, section ".printk_index", align 4
@iqs5xx_bl_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to verify block at address 0x%04X\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iqs5xx_bl_verify\00", [47 x i8] zeroinitializer }, align 32
@iqs5xx_bl_verify._entry_ptr = internal global ptr @iqs5xx_bl_verify._entry, section ".printk_index", align 4
@iqs5xx_bl_verify._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to read block at address 0x%04X: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@iqs5xx_bl_verify._entry_ptr.82 = internal global ptr @iqs5xx_bl_verify._entry.80, section ".printk_index", align 4
@dev_attr_fw_info = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fw_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw_info\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u.%u.%u.%u:%u.%u\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40, i64 52, i64 58]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"iqs5xx_i2c_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1090, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1092, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"iqs5xx_of_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1082, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"iqs5xx_pm\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1020, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"iqs5xx_id\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1074, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1036, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1039, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1043, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1053, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"iqs5xx_attr_group\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 977, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1059, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1066, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 580, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 591, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 169, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 352, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 304, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 310, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 321, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 526, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 546, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 218, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 658, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 662, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"iqs5xx_attrs\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 957, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"dev_attr_fw_file\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 954, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 928, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 726, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 733, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 741, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 749, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 759, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 767, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 775, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 788, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 799, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 811, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 390, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 421, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 434, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"dev_attr_fw_info\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 955, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [38 x i8] c"../drivers/input/touchscreen/iqs5xx.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 946, i32 35 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_iqs5xx_i2c_driver_exit, ptr @__initcall__kmod_iqs5xx__288_1099_iqs5xx_i2c_driver_init6, ptr @fw_file_store._entry, ptr @fw_file_store._entry_ptr, ptr @iqs5xx_axis_init._entry, ptr @iqs5xx_axis_init._entry.36, ptr @iqs5xx_axis_init._entry_ptr, ptr @iqs5xx_axis_init._entry_ptr.38, ptr @iqs5xx_bl_cmd._entry, ptr @iqs5xx_bl_cmd._entry.28, ptr @iqs5xx_bl_cmd._entry.31, ptr @iqs5xx_bl_cmd._entry_ptr, ptr @iqs5xx_bl_cmd._entry_ptr.30, ptr @iqs5xx_bl_cmd._entry_ptr.33, ptr @iqs5xx_bl_open._entry, ptr @iqs5xx_bl_open._entry_ptr, ptr @iqs5xx_bl_verify._entry, ptr @iqs5xx_bl_verify._entry.80, ptr @iqs5xx_bl_verify._entry_ptr, ptr @iqs5xx_bl_verify._entry_ptr.82, ptr @iqs5xx_bl_write._entry, ptr @iqs5xx_bl_write._entry_ptr, ptr @iqs5xx_dev_init._entry, ptr @iqs5xx_dev_init._entry.19, ptr @iqs5xx_dev_init._entry_ptr, ptr @iqs5xx_dev_init._entry_ptr.21, ptr @iqs5xx_fw_file_parse._entry, ptr @iqs5xx_fw_file_parse._entry.50, ptr @iqs5xx_fw_file_parse._entry.53, ptr @iqs5xx_fw_file_parse._entry.56, ptr @iqs5xx_fw_file_parse._entry.59, ptr @iqs5xx_fw_file_parse._entry.61, ptr @iqs5xx_fw_file_parse._entry.64, ptr @iqs5xx_fw_file_parse._entry.67, ptr @iqs5xx_fw_file_parse._entry.70, ptr @iqs5xx_fw_file_parse._entry.73, ptr @iqs5xx_fw_file_parse._entry_ptr, ptr @iqs5xx_fw_file_parse._entry_ptr.52, ptr @iqs5xx_fw_file_parse._entry_ptr.55, ptr @iqs5xx_fw_file_parse._entry_ptr.58, ptr @iqs5xx_fw_file_parse._entry_ptr.60, ptr @iqs5xx_fw_file_parse._entry_ptr.63, ptr @iqs5xx_fw_file_parse._entry_ptr.66, ptr @iqs5xx_fw_file_parse._entry_ptr.69, ptr @iqs5xx_fw_file_parse._entry_ptr.72, ptr @iqs5xx_fw_file_parse._entry_ptr.75, ptr @iqs5xx_i2c_driver_exit, ptr @iqs5xx_irq._entry, ptr @iqs5xx_irq._entry.43, ptr @iqs5xx_irq._entry_ptr, ptr @iqs5xx_irq._entry_ptr.45, ptr @iqs5xx_probe._entry, ptr @iqs5xx_probe._entry.11, ptr @iqs5xx_probe._entry.14, ptr @iqs5xx_probe._entry.8, ptr @iqs5xx_probe._entry_ptr, ptr @iqs5xx_probe._entry_ptr.10, ptr @iqs5xx_probe._entry_ptr.13, ptr @iqs5xx_probe._entry_ptr.16, ptr @iqs5xx_read_burst._entry, ptr @iqs5xx_read_burst._entry_ptr, ptr @iqs5xx_write_burst._entry, ptr @iqs5xx_write_burst._entry_ptr, ptr @iqs5xx_i2c_driver, ptr @.str, ptr @iqs5xx_of_match, ptr @iqs5xx_pm, ptr @iqs5xx_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iqs5xx_probe.__key, ptr @.str.7, ptr @.str.9, ptr @iqs5xx_attr_group, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @iqs5xx_attrs, ptr @dev_attr_fw_file, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @dev_attr_fw_info, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_dev_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_read_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_bl_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_bl_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_bl_cmd._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_bl_cmd._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_axis_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_axis_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_write_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_file to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_file_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_fw_file_parse._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_bl_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_bl_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs5xx_bl_verify._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs5xx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @iqs5xx_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iqs5xx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @iqs5xx_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs5xx_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #8
  %reset_gpio = getelementptr inbounds %struct.iqs5xx_private, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #11
  br label %cleanup

do.body11:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.iqs5xx_private, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @iqs5xx_probe.__key) #8
  %call14 = tail call fastcc i32 @iqs5xx_dev_init(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.body11.cleanup_crit_edge

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %do.body11
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %5, ptr noundef null, ptr noundef nonnull @iqs5xx_irq, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call19) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call28 = tail call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @iqs5xx_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call28) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %input = getelementptr inbounds %struct.iqs5xx_private, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %tobool36.not = icmp eq ptr %7, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  %call39 = tail call i32 @input_register_device(ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then37.cleanup_crit_edge, label %do.end44

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call39) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then37.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end33, %do.end24, %do.body11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call19, %do.end24 ], [ %call28, %do.end33 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %do.body11.cleanup_crit_edge ], [ %call39, %do.end44 ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs5xx_dev_init(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %val.addr.i77 = alloca i8, align 1
  %val.addr.i75 = alloca i8, align 1
  %val.addr.i73 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val_buf.i119.i = alloca i16, align 2
  %val_buf.i117.i = alloca i16, align 2
  %val_buf.i112.i = alloca i16, align 2
  %val_buf.i.i = alloca i16, align 2
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %buf, align 8
  %call1 = call fastcc i32 @iqs5xx_read_burst(ptr noundef %client, i16 noundef zeroext 0, ptr noundef %2, i16 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call fastcc i32 @iqs5xx_bl_open(ptr noundef %client)
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  %cond = zext i1 %tobool5.not to i32
  %arrayidx6 = getelementptr [8 x i8], ptr %buf, i32 0, i32 %cond
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx6, align 1
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %do.end [
    i16 40, label %if.end.sw.epilog_crit_edge
    i16 58, label %if.end.sw.epilog_crit_edge81
    i16 52, label %if.end.sw.epilog_crit_edge82
  ]

if.end.sw.epilog_crit_edge82:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge81:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = zext i16 %8 to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv7) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge81, %if.end.sw.epilog_crit_edge82
  br i1 %tobool5.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.20) #11
  %call17 = call fastcc i32 @iqs5xx_bl_open(ptr noundef %client)
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %exp_file = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 6
  %call19 = call fastcc i32 @iqs5xx_read_burst(ptr noundef %client, i16 noundef zeroext 1655, ptr noundef %exp_file, i16 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %prop1.i = getelementptr inbounds %struct.iqs5xx_private, ptr %11, i32 0, i32 3
  %input2.i = getelementptr inbounds %struct.iqs5xx_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input2.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end22.if.end8.i_crit_edge

if.end22.if.end8.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end22
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call3.i = call ptr @devm_input_allocate_device(ptr noundef %dev.i) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %14 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %name.i, ptr %call3.i, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 3
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 24, ptr %id.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 31
  %16 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @iqs5xx_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 32
  %17 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @iqs5xx_close, ptr %close.i, align 4
  %driver_data.i.i111.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 40, i32 8
  %18 = ptrtoint ptr %driver_data.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %11, ptr %driver_data.i.i111.i, align 4
  %19 = ptrtoint ptr %input2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call3.i, ptr %input2.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %if.end22.if.end8.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_buf.i.i) #8
  %20 = ptrtoint ptr %val_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %val_buf.i.i, align 2, !annotation !179
  %call.i.i = call fastcc i32 @iqs5xx_read_burst(ptr noundef %client, i16 noundef zeroext 1646, ptr noundef nonnull %val_buf.i.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.i, label %iqs5xx_read_word.exit.i

iqs5xx_read_word.exit.i:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i.i) #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  %21 = ptrtoint ptr %val_buf.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val_buf.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_buf.i112.i) #8
  %23 = ptrtoint ptr %val_buf.i112.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %val_buf.i112.i, align 2, !annotation !179
  %call.i113.i = call fastcc i32 @iqs5xx_read_burst(ptr noundef %client, i16 noundef zeroext 1648, ptr noundef nonnull %val_buf.i112.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i)
  %tobool.not.i114.i = icmp eq i32 %call.i113.i, 0
  br i1 %tobool.not.i114.i, label %if.end16.i, label %iqs5xx_read_word.exit116.i

iqs5xx_read_word.exit116.i:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i112.i) #8
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i
  %24 = ptrtoint ptr %val_buf.i112.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val_buf.i112.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i112.i) #8
  %26 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input2.i, align 4
  %conv.i = zext i16 %22 to i32
  call void @input_set_abs_params(ptr noundef %27, i32 noundef 53, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #8
  %28 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input2.i, align 4
  %conv19.i = zext i16 %25 to i32
  call void @input_set_abs_params(ptr noundef %29, i32 noundef 54, i32 noundef 0, i32 noundef %conv19.i, i32 noundef 0, i32 noundef 0) #8
  %30 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input2.i, align 4
  call void @input_set_abs_params(ptr noundef %31, i32 noundef 58, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #8
  %32 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input2.i, align 4
  call void @touchscreen_parse_properties(ptr noundef %33, i1 noundef zeroext true, ptr noundef %prop1.i) #8
  %34 = ptrtoint ptr %prop1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prop1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %35)
  %cmp.i = icmp ugt i32 %35, 65534
  br i1 %cmp.i, label %if.end16.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end16.i.do.end.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %max_y24.i = getelementptr inbounds %struct.iqs5xx_private, ptr %11, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %max_y24.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_y24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %37)
  %cmp25.i = icmp ugt i32 %37, 65534
  br i1 %cmp25.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end31.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end16.i.do.end.i_crit_edge
  %dev28.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %max_y30.i = getelementptr inbounds %struct.iqs5xx_private, ptr %11, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %max_y30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_y30.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.34, i32 noundef %35, i32 noundef %39) #11
  br label %cleanup

if.end31.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i)
  %cmp34.not.i = icmp eq i32 %35, %conv.i
  br i1 %cmp34.not.i, label %if.end31.i.if.end43.i_crit_edge, label %if.then36.i

if.end31.i.if.end43.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then36.i:                                      ; preds = %if.end31.i
  %conv38.i = trunc i32 %35 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_buf.i117.i) #8
  %40 = ptrtoint ptr %val_buf.i117.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv38.i, ptr %val_buf.i117.i, align 2
  %call.i118.i = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext 1646, ptr noundef nonnull %val_buf.i117.i, i16 noundef zeroext 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i117.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %tobool40.not.i = icmp eq i32 %call.i118.i, 0
  br i1 %tobool40.not.i, label %if.then36.i.if.end43.i_crit_edge, label %if.then36.i.cleanup_crit_edge

if.then36.i.cleanup_crit_edge:                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36.i.if.end43.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then36.i.if.end43.i_crit_edge, %if.end31.i.if.end43.i_crit_edge
  %41 = ptrtoint ptr %max_y24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_y24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv19.i)
  %cmp46.not.i = icmp eq i32 %42, %conv19.i
  br i1 %cmp46.not.i, label %if.end43.i.if.end55.i_crit_edge, label %if.then48.i

if.end43.i.if.end55.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then48.i:                                      ; preds = %if.end43.i
  %conv50.i = trunc i32 %42 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_buf.i119.i) #8
  %43 = ptrtoint ptr %val_buf.i119.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv50.i, ptr %val_buf.i119.i, align 2
  %call.i120.i = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext 1648, ptr noundef nonnull %val_buf.i119.i, i16 noundef zeroext 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i119.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %tobool52.not.i = icmp eq i32 %call.i120.i, 0
  br i1 %tobool52.not.i, label %if.then48.i.if.end55.i_crit_edge, label %if.then48.i.cleanup_crit_edge

if.then48.i.cleanup_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48.i.if.end55.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then48.i.if.end55.i_crit_edge, %if.end43.i.if.end55.i_crit_edge
  %44 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input2.i, align 4
  %call57.i = call i32 @input_mt_init_slots(ptr noundef %45, i32 noundef 5, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end26, label %do.end62.i

do.end62.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev63.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63.i, ptr noundef nonnull @.str.37, i32 noundef %call57.i) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end55.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %46 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -128, ptr %val.addr.i, align 1
  %call.i = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext 1073, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i73)
  %47 = ptrtoint ptr %val.addr.i73 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 108, ptr %val.addr.i73, align 1
  %call.i74 = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext 1422, ptr noundef nonnull %val.addr.i73, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool32.not = icmp eq i32 %call.i74, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i75)
  %48 = ptrtoint ptr %val.addr.i75 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 5, ptr %val.addr.i75, align 1
  %call.i76 = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext 1423, ptr noundef nonnull %val.addr.i75, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool36.not = icmp eq i32 %call.i76, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i77)
  %49 = ptrtoint ptr %val.addr.i77 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %val.addr.i77, align 1
  %call.i78 = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext -4370, ptr noundef nonnull %val.addr.i77, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool40.not = icmp eq i32 %call.i78, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %dev_id_info43 = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5
  %50 = call ptr @memcpy(ptr %dev_id_info43, ptr %arrayidx6, i32 7)
  call void @msleep(i32 noundef 250) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end62.i, %if.then48.i.cleanup_crit_edge, %if.then36.i.cleanup_crit_edge, %do.end.i, %iqs5xx_read_word.exit116.i, %iqs5xx_read_word.exit.i, %if.then.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end15, %do.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ -22, %do.end ], [ %call17, %do.end15 ], [ 0, %if.end42 ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call.i, %if.end26.cleanup_crit_edge ], [ %call.i74, %if.end30.cleanup_crit_edge ], [ %call.i76, %if.end34.cleanup_crit_edge ], [ %call.i78, %if.end38.cleanup_crit_edge ], [ %call57.i, %do.end62.i ], [ %call.i120.i, %if.then48.i.cleanup_crit_edge ], [ %call.i118.i, %if.then36.i.cleanup_crit_edge ], [ %call.i113.i, %iqs5xx_read_word.exit116.i ], [ %call.i.i, %iqs5xx_read_word.exit.i ], [ -12, %if.then.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs5xx_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %status = alloca %struct.iqs5xx_status, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %status) #8
  %0 = call ptr @memset(ptr %status, i32 255, i32 42)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %input2 = getelementptr inbounds %struct.iqs5xx_private, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input2, align 4
  %bl_status = getelementptr inbounds %struct.iqs5xx_private, ptr %data, i32 0, i32 5, i32 4
  %5 = ptrtoint ptr %bl_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bl_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @iqs5xx_read_burst(ptr noundef %2, i16 noundef zeroext 15, ptr noundef nonnull %status, i16 noundef zeroext 42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool6.not = icmp sgt i8 %8, -1
  br i1 %tobool6.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end5
  %prop = getelementptr inbounds %struct.iqs5xx_private, ptr %data, i32 0, i32 3
  br label %for.body

do.end:                                           ; preds = %if.end5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #11
  %call8 = call fastcc i32 @iqs5xx_dev_init(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %do.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %call8) #11
  br label %cleanup

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.cond.preheader
  %i.060 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end29.for.body_crit_edge ]
  %strength = getelementptr %struct.iqs5xx_status, ptr %status, i32 0, i32 4, i32 %i.060, i32 2
  %9 = ptrtoint ptr %strength to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %strength, align 1
  call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 47, i32 noundef %i.060) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21 = icmp ne i16 %10, 0
  %call23 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %4, i32 noundef 0, i1 noundef zeroext %cmp21) #8
  br i1 %call23, label %if.then24, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv20 = zext i16 %10 to i32
  %arrayidx19 = getelementptr %struct.iqs5xx_status, ptr %status, i32 0, i32 4, i32 %i.060
  %11 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input2, align 4
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx19, align 1
  %conv26 = zext i16 %14 to i32
  %abs_y = getelementptr %struct.iqs5xx_status, ptr %status, i32 0, i32 4, i32 %i.060, i32 1
  %15 = ptrtoint ptr %abs_y to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %abs_y, align 1
  %conv27 = zext i16 %16 to i32
  call void @touchscreen_report_pos(ptr noundef %12, ptr noundef %prop, i32 noundef %conv26, i32 noundef %conv27, i1 noundef zeroext true) #8
  call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 58, i32 noundef %conv20) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %for.body.if.end29_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end29
  call void @input_mt_sync_frame(ptr noundef %4) #8
  call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %17 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %val.addr.i, align 1
  %call.i = call fastcc i32 @iqs5xx_write_burst(ptr noundef %2, i16 noundef zeroext -4370, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.end33, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %for.end.cleanup_crit_edge, %do.end13, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end13 ], [ 1, %if.end33 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs5xx_read_burst(ptr noundef %client, i16 noundef zeroext %reg, ptr noundef %val, i16 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  %reg_buf = alloca i16, align 2
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_buf) #8
  %0 = ptrtoint ptr %reg_buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %reg, ptr %reg_buf, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len2, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg_buf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %11 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %len, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %12 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %val, ptr %buf7, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp8 = icmp eq i32 %call, 2
  br i1 %cmp8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %call.1 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.1)
  %cmp8.1 = icmp eq i32 %call.1, 2
  br i1 %cmp8.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call.2 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.2)
  %cmp8.2 = icmp eq i32 %call.2, 2
  br i1 %cmp8.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %call.3 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.3)
  %cmp8.3 = icmp eq i32 %call.3, 2
  br i1 %cmp8.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call.4 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.4)
  %cmp8.4 = icmp eq i32 %call.4, 2
  br i1 %cmp8.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %call.5 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.5)
  %cmp8.5 = icmp eq i32 %call.5, 2
  br i1 %cmp8.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %call.6 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.6)
  %cmp8.6 = icmp eq i32 %call.6, 2
  br i1 %cmp8.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %call.7 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.7)
  %cmp8.7 = icmp eq i32 %call.7, 2
  br i1 %cmp8.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %call.8 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.8)
  %cmp8.8 = icmp eq i32 %call.8, 2
  br i1 %cmp8.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %call.9 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.9)
  %cmp8.9 = icmp eq i32 %call.9, 2
  br i1 %cmp8.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.9)
  %cmp9 = icmp sgt i32 %call.9, -1
  %spec.store.select = select i1 %cmp9, i32 -5, i32 %call.9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i16 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %spec.store.select) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end.9 ], [ 0, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs5xx_bl_open(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %mbuf.i = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %1 = getelementptr inbounds [3 x i8], ptr %mbuf.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %mbuf.i, i32 0, i32 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc7.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7.for.body_crit_edge ]
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %reset_gpio.i = getelementptr inbounds %struct.iqs5xx_private, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 1) #8
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %7 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #8
  call void @usleep_range_state(i32 noundef 350, i32 noundef 400, i32 noundef 2) #8
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body
  %j.031 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body3_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131071, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mbuf.i) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %1, align 1, !annotation !179
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %2, align 2, !annotation !179
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i, align 2
  %14 = xor i16 %13, 64
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mbuf.i, ptr %buf.i, align 4
  %18 = ptrtoint ptr %mbuf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mbuf.i, align 2
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %for.body3.msg_fail.i_crit_edge

for.body3.msg_fail.i_crit_edge:                   ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %msg_fail.i

if.end.i:                                         ; preds = %for.body3
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %0, align 4
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags.i, align 2
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call21.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 1
  br i1 %cmp22.not.i, label %if.end25.i, label %if.end.i.msg_fail.i_crit_edge

if.end.i.msg_fail.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msg_fail.i

if.end25.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %mbuf.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mbuf.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %26)
  %cmp32.not.i = icmp eq i16 %26, 512
  br i1 %cmp32.not.i, label %iqs5xx_bl_cmd.exit.thread22, label %iqs5xx_bl_cmd.exit.thread25

iqs5xx_bl_cmd.exit.thread22:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10100, i32 noundef 2) #8
  br label %cleanup

iqs5xx_bl_cmd.exit.thread25:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv37.i = zext i16 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %conv37.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  br label %cleanup

msg_fail.i:                                       ; preds = %if.end.i.msg_fail.i_crit_edge, %for.body3.msg_fail.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %for.body3.msg_fail.i_crit_edge ], [ %call21.i, %if.end.i.msg_fail.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp53.i = icmp sgt i32 %ret.0.i, -1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  br i1 %cmp53.i, label %msg_fail.i.for.inc_crit_edge, label %iqs5xx_bl_cmd.exit

msg_fail.i.for.inc_crit_edge:                     ; preds = %msg_fail.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

iqs5xx_bl_cmd.exit:                               ; preds = %msg_fail.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.0.i)
  %cond = icmp eq i32 %ret.0.i, -22
  br i1 %cond, label %iqs5xx_bl_cmd.exit.cleanup_crit_edge, label %iqs5xx_bl_cmd.exit.for.inc_crit_edge

iqs5xx_bl_cmd.exit.for.inc_crit_edge:             ; preds = %iqs5xx_bl_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

iqs5xx_bl_cmd.exit.cleanup_crit_edge:             ; preds = %iqs5xx_bl_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %iqs5xx_bl_cmd.exit.for.inc_crit_edge, %msg_fail.i.for.inc_crit_edge
  %retval.0.i21 = phi i32 [ %ret.0.i, %iqs5xx_bl_cmd.exit.for.inc_crit_edge ], [ -5, %msg_fail.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.031, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc7, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.inc7:                                         ; preds = %for.inc
  %inc8 = add nuw nsw i32 %i.032, 1
  %exitcond33.not = icmp eq i32 %inc8, 3
  br i1 %exitcond33.not, label %do.end, label %for.inc7.for.body_crit_edge

for.inc7.for.body_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end:                                           ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i21) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %iqs5xx_bl_cmd.exit.cleanup_crit_edge, %iqs5xx_bl_cmd.exit.thread25, %iqs5xx_bl_cmd.exit.thread22
  %retval.0 = phi i32 [ %retval.0.i21, %do.end ], [ 0, %iqs5xx_bl_cmd.exit.thread22 ], [ -22, %iqs5xx_bl_cmd.exit.thread25 ], [ -22, %iqs5xx_bl_cmd.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs5xx_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc i32 @iqs5xx_set_state(ptr noundef %3, i8 noundef zeroext 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iqs5xx_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc i32 @iqs5xx_set_state(ptr noundef %3, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs5xx_set_state(ptr noundef %client, i8 noundef zeroext %state) unnamed_addr #2 align 64 {
entry:
  %val.addr.i17 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl_status = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %bl_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bl_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %6 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %state, ptr %val.addr.i, align 1
  %call.i = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext 1074, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i17)
  %7 = ptrtoint ptr %val.addr.i17 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %val.addr.i17, align 1
  %call.i18 = call fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext -4370, ptr noundef nonnull %val.addr.i17, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i17)
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  %call2.call1 = select i1 %tobool5.not, i32 %call.i18, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2.call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs5xx_write_burst(ptr noundef %client, i16 noundef zeroext %reg, ptr nocapture noundef readonly %val, i16 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  %mbuf = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i16 %len, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbuf) #8
  %0 = getelementptr inbounds [4 x i8], ptr %mbuf, i32 0, i32 2
  %conv = zext i16 %len to i32
  %1 = getelementptr inbounds i8, ptr %mbuf, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2
  %3 = ptrtoint ptr %mbuf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %reg, ptr %mbuf, align 2
  %4 = call ptr @memcpy(ptr %0, ptr %val, i32 %conv)
  %conv9 = zext i16 %add to i32
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv9)
  %cmp11 = icmp eq i32 %call.i, %conv9
  br i1 %cmp11, label %entry.cleanup_crit_edge, label %if.end14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %entry
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.1, i32 %conv9)
  %cmp11.1 = icmp eq i32 %call.i.1, %conv9
  br i1 %cmp11.1, label %if.end14.cleanup_crit_edge, label %if.end14.1

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.1:                                       ; preds = %if.end14
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.2, i32 %conv9)
  %cmp11.2 = icmp eq i32 %call.i.2, %conv9
  br i1 %cmp11.2, label %if.end14.1.cleanup_crit_edge, label %if.end14.2

if.end14.1.cleanup_crit_edge:                     ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.2:                                       ; preds = %if.end14.1
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.3, i32 %conv9)
  %cmp11.3 = icmp eq i32 %call.i.3, %conv9
  br i1 %cmp11.3, label %if.end14.2.cleanup_crit_edge, label %if.end14.3

if.end14.2.cleanup_crit_edge:                     ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.3:                                       ; preds = %if.end14.2
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.4, i32 %conv9)
  %cmp11.4 = icmp eq i32 %call.i.4, %conv9
  br i1 %cmp11.4, label %if.end14.3.cleanup_crit_edge, label %if.end14.4

if.end14.3.cleanup_crit_edge:                     ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.4:                                       ; preds = %if.end14.3
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.5, i32 %conv9)
  %cmp11.5 = icmp eq i32 %call.i.5, %conv9
  br i1 %cmp11.5, label %if.end14.4.cleanup_crit_edge, label %if.end14.5

if.end14.4.cleanup_crit_edge:                     ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.5:                                       ; preds = %if.end14.4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.6, i32 %conv9)
  %cmp11.6 = icmp eq i32 %call.i.6, %conv9
  br i1 %cmp11.6, label %if.end14.5.cleanup_crit_edge, label %if.end14.6

if.end14.5.cleanup_crit_edge:                     ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.6:                                       ; preds = %if.end14.5
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.7 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.7, i32 %conv9)
  %cmp11.7 = icmp eq i32 %call.i.7, %conv9
  br i1 %cmp11.7, label %if.end14.6.cleanup_crit_edge, label %if.end14.7

if.end14.6.cleanup_crit_edge:                     ; preds = %if.end14.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.7:                                       ; preds = %if.end14.6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.8, i32 %conv9)
  %cmp11.8 = icmp eq i32 %call.i.8, %conv9
  br i1 %cmp11.8, label %if.end14.7.cleanup_crit_edge, label %if.end14.8

if.end14.7.cleanup_crit_edge:                     ; preds = %if.end14.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.8:                                       ; preds = %if.end14.7
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call.i.9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %mbuf, i32 noundef %conv9, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.9, i32 %conv9)
  %cmp11.9 = icmp eq i32 %call.i.9, %conv9
  br i1 %cmp11.9, label %if.end14.8.cleanup_crit_edge, label %if.end14.9

if.end14.8.cleanup_crit_edge:                     ; preds = %if.end14.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.9:                                       ; preds = %if.end14.8
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.9)
  %cmp15 = icmp sgt i32 %call.i.9, -1
  %spec.store.select = select i1 %cmp15, i32 -5, i32 %call.i.9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv19 = zext i16 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %conv19, i32 noundef %spec.store.select) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14.9, %if.end14.8.cleanup_crit_edge, %if.end14.7.cleanup_crit_edge, %if.end14.6.cleanup_crit_edge, %if.end14.5.cleanup_crit_edge, %if.end14.4.cleanup_crit_edge, %if.end14.3.cleanup_crit_edge, %if.end14.2.cleanup_crit_edge, %if.end14.1.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end14.9 ], [ 0, %if.end14.8.cleanup_crit_edge ], [ 0, %if.end14.7.cleanup_crit_edge ], [ 0, %if.end14.6.cleanup_crit_edge ], [ 0, %if.end14.5.cleanup_crit_edge ], [ 0, %if.end14.4.cleanup_crit_edge ], [ 0, %if.end14.3.cleanup_crit_edge ], [ 0, %if.end14.2.cleanup_crit_edge ], [ 0, %if.end14.1.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbuf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @iqs5xx_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_fw_file
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bl_status = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %bl_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bl_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %3)
  %cmp2 = icmp eq i8 %3, -18
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %reset_gpio = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_file_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %mbuf.i.i.i = alloca [3 x i8], align 2
  %msg.i103.i = alloca %struct.i2c_msg, align 4
  %bl_data.i.i = alloca [64 x i8], align 1
  %msg.i84.i = alloca %struct.i2c_msg, align 4
  %mbuf.i85.i = alloca [3 x i8], align 2
  %msg.i69.i = alloca %struct.i2c_msg, align 4
  %mbuf.i70.i = alloca [66 x i8], align 2
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mbuf.i.i = alloca [3 x i8], align 2
  %fw.i.i = alloca ptr, align 4
  %rec_chksm.i.i = alloca i8, align 1
  %rec_hdr.i.i = alloca [4 x i8], align 4
  %rec_data.i.i = alloca [255 x i8], align 1
  %fw_file = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %input = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %tobool.not = icmp ne ptr %5, null
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %fw_file) #8
  %6 = call ptr @memset(ptr %fw_file, i32 255, i32 65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not = icmp eq i32 %count, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp = icmp eq i8 %8, 10
  %spec.select = select i1 %cmp, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select)
  %cmp6 = icmp ugt i32 %spec.select, 64
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = call ptr @memcpy(ptr %fw_file, ptr %buf, i32 %spec.select)
  %arrayidx10 = getelementptr [65 x i8], ptr %fw_file, i32 0, i32 %spec.select
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx10, align 1
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 15424, i32 noundef 3520, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.end.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #8
  %13 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rec_chksm.i.i) #8
  %14 = ptrtoint ptr %rec_chksm.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %rec_chksm.i.i, align 1, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rec_hdr.i.i) #8
  %15 = getelementptr inbounds [4 x i8], ptr %rec_hdr.i.i, i32 0, i32 1
  %16 = getelementptr inbounds [4 x i8], ptr %rec_hdr.i.i, i32 0, i32 2
  %17 = getelementptr inbounds [4 x i8], ptr %rec_hdr.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %rec_hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %rec_hdr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %rec_data.i.i) #8
  %19 = call ptr @memset(ptr %rec_data.i.i, i32 255, i32 255)
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull %fw_file, ptr noundef %dev.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.body2.preheader.i.i, label %iqs5xx_fw_file_parse.exit.thread.i

do.body2.preheader.i.i:                           ; preds = %if.end.i
  %add.ptr127.i.i = getelementptr i8, ptr %call1.i.i.i.i, i32 -33728
  br label %do.body2.i.i

iqs5xx_fw_file_parse.exit.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %fw_file, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %rec_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rec_hdr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rec_chksm.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  br label %iqs5xx_fw_file_write.exit

do.body2.i.i:                                     ; preds = %do.cond152.i.i.do.body2.i.i_crit_edge, %do.body2.preheader.i.i
  %pos.0.i.i = phi i32 [ %pos.1.lcssa.i.i, %do.cond152.i.i.do.body2.i.i_crit_edge ], [ 0, %do.body2.preheader.i.i ]
  %rec_num.0.i.i = phi i16 [ %inc140.i.i, %do.cond152.i.i.do.body2.i.i_crit_edge ], [ 1, %do.body2.preheader.i.i ]
  %add.i.i = add i32 %pos.0.i.i, 11
  %20 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %23)
  %cmp.i.i = icmp ugt i32 %add.i.i, %23
  br i1 %cmp.i.i, label %do.end6.i.i, label %if.end8.i.i

do.end6.i.i:                                      ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.51) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.end8.i.i:                                      ; preds = %do.body2.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %pos.0.i.i
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %27)
  %cmp10.not.i.i = icmp eq i8 %27, 58
  br i1 %cmp10.not.i.i, label %if.end18.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv17.i.i = zext i16 %rec_num.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.54, i32 noundef %conv17.i.i) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.end18.i.i:                                     ; preds = %if.end8.i.i
  %len.i.i = getelementptr inbounds %struct.iqs5xx_ihex_rec, ptr %add.ptr.i.i, i32 0, i32 1
  %call20.i.i = call i32 @hex2bin(ptr noundef nonnull %rec_hdr.i.i, ptr noundef %len.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end28.i.i, label %do.end25.i.i

do.end25.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv27.i.i = zext i16 %rec_num.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.57, i32 noundef %conv27.i.i) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.end28.i.i:                                     ; preds = %if.end18.i.i
  %28 = ptrtoint ptr %rec_hdr.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rec_hdr.i.i, align 4
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %15, align 1
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %17, align 1
  %conv36.i.i = zext i8 %29 to i32
  %mul.i.i = shl nuw nsw i32 %conv36.i.i, 1
  %add37.i.i = add i32 %mul.i.i, %add.i.i
  %34 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i.i, i32 %37)
  %cmp39.i.i = icmp ugt i32 %add37.i.i, %37
  br i1 %cmp39.i.i, label %do.end44.i.i, label %if.end46.i.i

do.end44.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.51) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.end46.i.i:                                     ; preds = %if.end28.i.i
  %data51.i.i = getelementptr inbounds %struct.iqs5xx_ihex_rec, ptr %add.ptr.i.i, i32 0, i32 4
  %call54.i.i = call i32 @hex2bin(ptr noundef nonnull %rec_data.i.i, ptr noundef %data51.i.i, i32 noundef %conv36.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool55.not.i.i, label %if.end62.i.i, label %do.end59.i.i

do.end59.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv61.i.i = zext i16 %rec_num.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.62, i32 noundef %conv61.i.i) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.end62.i.i:                                     ; preds = %if.end46.i.i
  %add.ptr67.i.i = getelementptr i8, ptr %data51.i.i, i32 %mul.i.i
  %call68.i.i = call i32 @hex2bin(ptr noundef nonnull %rec_chksm.i.i, ptr noundef %add.ptr67.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %tobool69.not.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %tobool69.not.i.i, label %for.body.preheader.i.i, label %do.end73.i.i

for.body.preheader.i.i:                           ; preds = %if.end62.i.i
  %38 = ptrtoint ptr %rec_hdr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rec_hdr.i.i, align 4
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %15, align 1
  %add81.1.i.i = add i8 %41, %39
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %16, align 2
  %add81.2.i.i = add i8 %add81.1.i.i, %43
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %17, align 1
  %add81.3.i.i = add i8 %add81.2.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp85251.not.i.i = icmp eq i8 %29, 0
  br i1 %cmp85251.not.i.i, label %for.body.preheader.i.i.for.end95.i.i_crit_edge, label %for.body.preheader.i.i.for.body87.i.i_crit_edge

for.body.preheader.i.i.for.body87.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %for.body87.i.i

for.body.preheader.i.i.for.end95.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end95.i.i

do.end73.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv75.i.i = zext i16 %rec_num.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.65, i32 noundef %conv75.i.i) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

for.body87.i.i:                                   ; preds = %for.body87.i.i.for.body87.i.i_crit_edge, %for.body.preheader.i.i.for.body87.i.i_crit_edge
  %chksm.1253.i.i = phi i8 [ %add91.i.i, %for.body87.i.i.for.body87.i.i_crit_edge ], [ %add81.3.i.i, %for.body.preheader.i.i.for.body87.i.i_crit_edge ]
  %i.1252.i.i = phi i32 [ %inc94.i.i, %for.body87.i.i.for.body87.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.for.body87.i.i_crit_edge ]
  %arrayidx88.i.i = getelementptr [255 x i8], ptr %rec_data.i.i, i32 0, i32 %i.1252.i.i
  %46 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx88.i.i, align 1
  %add91.i.i = add i8 %47, %chksm.1253.i.i
  %inc94.i.i = add nuw nsw i32 %i.1252.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc94.i.i, %conv36.i.i
  br i1 %exitcond.not.i.i, label %for.body87.i.i.for.end95.i.i_crit_edge, label %for.body87.i.i.for.body87.i.i_crit_edge

for.body87.i.i.for.body87.i.i_crit_edge:          ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body87.i.i

for.body87.i.i.for.end95.i.i_crit_edge:           ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end95.i.i

for.end95.i.i:                                    ; preds = %for.body87.i.i.for.end95.i.i_crit_edge, %for.body.preheader.i.i.for.end95.i.i_crit_edge
  %chksm.1.lcssa.i.i = phi i8 [ %add81.3.i.i, %for.body.preheader.i.i.for.end95.i.i_crit_edge ], [ %add91.i.i, %for.body87.i.i.for.end95.i.i_crit_edge ]
  %add97.i.i = sub i8 0, %chksm.1.lcssa.i.i
  %48 = ptrtoint ptr %rec_chksm.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rec_chksm.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %add97.i.i)
  %cmp101.not.i.i = icmp ne i8 %49, %add97.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16896, i16 %31)
  %cmp104.i.i = icmp ult i16 %31, -16896
  %or.cond.i.i = select i1 %cmp101.not.i.i, i1 %cmp104.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end109.i.i, label %if.end112.i.i

do.end109.i.i:                                    ; preds = %for.end95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv111.i.i = zext i16 %rec_num.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.68, i32 noundef %conv111.i.i) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.end112.i.i:                                    ; preds = %for.end95.i.i
  %50 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %33, label %do.end134.i.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %if.end112.i.i.if.end139.i.i_crit_edge
  ]

if.end112.i.i.if.end139.i.i_crit_edge:            ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.i.i

sw.bb.i.i:                                        ; preds = %if.end112.i.i
  %51 = add i16 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15424, i16 %51)
  %52 = icmp ult i16 %51, -15424
  br i1 %52, label %do.end123.i.i, label %if.else.i.i

do.end123.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv125.i.i = zext i16 %rec_num.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.71, i32 noundef %conv125.i.i) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv114.i.i = zext i16 %31 to i32
  %add.ptr128.i.i = getelementptr i8, ptr %add.ptr127.i.i, i32 %conv114.i.i
  %53 = call ptr @memcpy(ptr %add.ptr128.i.i, ptr %rec_data.i.i, i32 %conv36.i.i)
  br label %if.end139.i.i

do.end134.i.i:                                    ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv136.i.i = zext i16 %rec_num.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.74, i32 noundef %conv136.i.i) #11
  br label %iqs5xx_fw_file_parse.exit.thread120.i

if.end139.i.i:                                    ; preds = %if.else.i.i, %if.end112.i.i.if.end139.i.i_crit_edge
  %inc140.i.i = add i16 %rec_num.0.i.i, 1
  %54 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i.i, i32 %57)
  %cmp142254.i.i = icmp ult i32 %add37.i.i, %57
  br i1 %cmp142254.i.i, label %while.body.lr.ph.i.i, label %if.end139.i.i.do.cond152.i.i_crit_edge

if.end139.i.i.do.cond152.i.i_crit_edge:           ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond152.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end139.i.i
  %data144.i.i = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %data144.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data144.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end150.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %pos.1255.i.i = phi i32 [ %add37.i.i, %while.body.lr.ph.i.i ], [ %inc151.i.i, %if.end150.i.i.while.body.i.i_crit_edge ]
  %add.ptr145.i.i = getelementptr i8, ptr %59, i32 %pos.1255.i.i
  %60 = ptrtoint ptr %add.ptr145.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr145.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %61)
  %cmp147.i.i = icmp eq i8 %61, 58
  br i1 %cmp147.i.i, label %while.body.i.i.do.cond152.i.i_crit_edge, label %if.end150.i.i

while.body.i.i.do.cond152.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond152.i.i

if.end150.i.i:                                    ; preds = %while.body.i.i
  %inc151.i.i = add nuw i32 %pos.1255.i.i, 1
  %cmp142.i.i = icmp ult i32 %inc151.i.i, %57
  br i1 %cmp142.i.i, label %if.end150.i.i.while.body.i.i_crit_edge, label %if.end150.i.i.do.cond152.i.i_crit_edge

if.end150.i.i.do.cond152.i.i_crit_edge:           ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond152.i.i

if.end150.i.i.while.body.i.i_crit_edge:           ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

do.cond152.i.i:                                   ; preds = %if.end150.i.i.do.cond152.i.i_crit_edge, %while.body.i.i.do.cond152.i.i_crit_edge, %if.end139.i.i.do.cond152.i.i_crit_edge
  %pos.1.lcssa.i.i = phi i32 [ %add37.i.i, %if.end139.i.i.do.cond152.i.i_crit_edge ], [ %57, %if.end150.i.i.do.cond152.i.i_crit_edge ], [ %pos.1255.i.i, %while.body.i.i.do.cond152.i.i_crit_edge ]
  %cmp154.not.i.i = icmp eq i8 %33, 1
  br i1 %cmp154.not.i.i, label %if.end5.i, label %do.cond152.i.i.do.body2.i.i_crit_edge

do.cond152.i.i.do.body2.i.i_crit_edge:            ; preds = %do.cond152.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i

iqs5xx_fw_file_parse.exit.thread120.i:            ; preds = %do.end134.i.i, %do.end123.i.i, %do.end109.i.i, %do.end73.i.i, %do.end59.i.i, %do.end44.i.i, %do.end25.i.i, %do.end15.i.i, %do.end6.i.i
  %error.1.i.ph.i = phi i32 [ -22, %do.end134.i.i ], [ -22, %do.end123.i.i ], [ -22, %do.end109.i.i ], [ %call68.i.i, %do.end73.i.i ], [ %call54.i.i, %do.end59.i.i ], [ -22, %do.end44.i.i ], [ %call20.i.i, %do.end25.i.i ], [ -22, %do.end15.i.i ], [ -22, %do.end6.i.i ]
  %62 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %63) #8
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %rec_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rec_hdr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rec_chksm.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  br label %iqs5xx_fw_file_write.exit

if.end5.i:                                        ; preds = %do.cond152.i.i
  call void @release_firmware(ptr noundef %55) #8
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %rec_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rec_hdr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rec_chksm.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  %lock.i = getelementptr inbounds %struct.iqs5xx_private, ptr %12, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %64 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %65) #8
  %bl_status.i = getelementptr inbounds %struct.iqs5xx_private, ptr %12, i32 0, i32 5, i32 4
  %66 = ptrtoint ptr %bl_status.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %bl_status.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %67 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 131071, ptr %67, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mbuf.i.i) #8
  %69 = getelementptr inbounds [3 x i8], ptr %mbuf.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %69, align 1, !annotation !179
  %71 = getelementptr inbounds [3 x i8], ptr %mbuf.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %71, align 2, !annotation !179
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr.i.i, align 2
  %75 = xor i16 %74, 64
  %76 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %mbuf.i.i, ptr %buf.i.i, align 4
  %79 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %mbuf.i.i, align 2
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %80 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter.i.i, align 8
  %call.i65.i = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i65.i)
  %cmp.not.i.i = icmp eq i32 %call.i65.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end5.i.if.then8.i_crit_edge

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.end.i.i:                                       ; preds = %if.end5.i
  %82 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 2, ptr %67, align 4
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %flags.i.i, align 2
  %84 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter.i.i, align 8
  %call21.i.i = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i.i)
  %cmp22.not.i.i = icmp eq i32 %call21.i.i, 1
  br i1 %cmp22.not.i.i, label %if.end25.i.i, label %if.end.i.i.if.then8.i_crit_edge

if.end.i.i.if.then8.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.end25.i.i:                                     ; preds = %if.end.i.i
  %86 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %mbuf.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %87)
  %cmp32.not.i.i = icmp eq i16 %87, 512
  br i1 %cmp32.not.i.i, label %iqs5xx_bl_cmd.exit.i, label %do.end.i67.i

do.end.i67.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv37.i.i = zext i16 %87 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.26, i32 noundef %conv37.i.i) #11
  br label %if.then8.i

iqs5xx_bl_cmd.exit.i:                             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  br label %if.end13.i

if.then8.i:                                       ; preds = %do.end.i67.i, %if.end.i.i.if.then8.i_crit_edge, %if.end5.i.if.then8.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  %call9.i = call fastcc i32 @iqs5xx_bl_open(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end13.i_crit_edge, label %if.then8.i.err_reset.i_crit_edge

if.then8.i.err_reset.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_reset.i

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %iqs5xx_bl_cmd.exit.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i69.i) #8
  %88 = getelementptr inbounds i8, ptr %msg.i69.i, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4390911, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %mbuf.i70.i) #8
  %90 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %addr.i.i, align 2
  %92 = xor i16 %91, 64
  %93 = ptrtoint ptr %msg.i69.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %msg.i69.i, align 4
  %flags.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i72.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags.i72.i, align 2
  %buf.i74.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 3
  %95 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %mbuf.i70.i, ptr %buf.i74.i, align 4
  %add.ptr.i75.i = getelementptr inbounds i8, ptr %mbuf.i70.i, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end14.i.i.for.body.i.i_crit_edge, %if.end13.i
  %i.01.i.i = phi i32 [ 0, %if.end13.i ], [ %add15.i.i, %if.end14.i.i.for.body.i.i_crit_edge ]
  %add.i77.i = add nuw nsw i32 %i.01.i.i, 33728
  %conv7.i.i = trunc i32 %add.i77.i to i16
  %96 = ptrtoint ptr %mbuf.i70.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv7.i.i, ptr %mbuf.i70.i, align 2
  %add.ptr10.i.i = getelementptr i8, ptr %call1.i.i.i.i, i32 %i.01.i.i
  %97 = call ptr @memcpy(ptr %add.ptr.i75.i, ptr %add.ptr10.i.i, i32 64)
  %98 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter.i.i, align 8
  %call.i78.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i69.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i78.i)
  %cmp11.not.i.i = icmp eq i32 %call.i78.i, 1
  br i1 %cmp11.not.i.i, label %if.end14.i.i, label %iqs5xx_bl_write.exit.i

if.end14.i.i:                                     ; preds = %for.body.i.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10100, i32 noundef 2) #8
  %add15.i.i = add nuw nsw i32 %i.01.i.i, 64
  %cmp.i79.i = icmp ult i32 %i.01.i.i, 15360
  br i1 %cmp.i79.i, label %if.end14.i.i.for.body.i.i_crit_edge, label %iqs5xx_bl_write.exit.thread.i

if.end14.i.i.for.body.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

iqs5xx_bl_write.exit.thread.i:                    ; preds = %if.end14.i.i
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %mbuf.i70.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84.i) #8
  %100 = getelementptr inbounds i8, ptr %msg.i84.i, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 131071, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mbuf.i85.i) #8
  %102 = getelementptr inbounds [3 x i8], ptr %mbuf.i85.i, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %102, align 1, !annotation !179
  %104 = getelementptr inbounds [3 x i8], ptr %mbuf.i85.i, i32 0, i32 2
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -1, ptr %104, align 2, !annotation !179
  %106 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %addr.i.i, align 2
  %108 = xor i16 %107, 64
  %109 = ptrtoint ptr %msg.i84.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %msg.i84.i, align 4
  %flags.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i87.i, align 2
  %buf.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 3
  %111 = ptrtoint ptr %buf.i89.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %mbuf.i85.i, ptr %buf.i89.i, align 4
  %112 = ptrtoint ptr %mbuf.i85.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 3, ptr %mbuf.i85.i, align 2
  %113 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter.i.i, align 8
  %call.i91.i = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %msg.i84.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91.i)
  %cmp.not.i92.i = icmp eq i32 %call.i91.i, 1
  br i1 %cmp.not.i92.i, label %if.end.i93.i, label %iqs5xx_bl_write.exit.thread.i.msg_fail.i100.i_crit_edge

iqs5xx_bl_write.exit.thread.i.msg_fail.i100.i_crit_edge: ; preds = %iqs5xx_bl_write.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msg_fail.i100.i

iqs5xx_bl_write.exit.i:                           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i78.i)
  %cmp16.i.i = icmp sgt i32 %call.i78.i, -1
  %spec.store.select.i80.i = select i1 %cmp16.i.i, i32 -5, i32 %call.i78.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.76, i32 noundef %add.i77.i, i32 noundef %spec.store.select.i80.i) #11
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %mbuf.i70.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69.i) #8
  br label %err_reset.i

if.end.i93.i:                                     ; preds = %iqs5xx_bl_write.exit.thread.i
  %115 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %100, align 4
  call void @msleep(i32 noundef 50) #8
  %116 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %flags.i87.i, align 2
  %117 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adapter.i.i, align 8
  %call21.i94.i = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %msg.i84.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i94.i)
  %cmp22.not.i95.i = icmp eq i32 %call21.i94.i, 1
  br i1 %cmp22.not.i95.i, label %if.end25.i96.i, label %if.end.i93.i.msg_fail.i100.i_crit_edge

if.end.i93.i.msg_fail.i100.i_crit_edge:           ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msg_fail.i100.i

if.end25.i96.i:                                   ; preds = %if.end.i93.i
  %119 = ptrtoint ptr %mbuf.i85.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %mbuf.i85.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp45.not.i.i = icmp eq i8 %120, 0
  br i1 %cmp45.not.i.i, label %if.end21.i, label %do.end50.i.i

do.end50.i.i:                                     ; preds = %if.end25.i96.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.29) #11
  br label %iqs5xx_bl_cmd.exit102.thread.i

msg_fail.i100.i:                                  ; preds = %if.end.i93.i.msg_fail.i100.i_crit_edge, %iqs5xx_bl_write.exit.thread.i.msg_fail.i100.i_crit_edge
  %ret.0.i97.i = phi i32 [ %call.i91.i, %iqs5xx_bl_write.exit.thread.i.msg_fail.i100.i_crit_edge ], [ %call21.i94.i, %if.end.i93.i.msg_fail.i100.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i97.i)
  %cmp53.i98.i = icmp sgt i32 %ret.0.i97.i, -1
  %spec.store.select.i99.i = select i1 %cmp53.i98.i, i32 -5, i32 %ret.0.i97.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 3, i32 noundef %spec.store.select.i99.i) #11
  br label %iqs5xx_bl_cmd.exit102.thread.i

iqs5xx_bl_cmd.exit102.thread.i:                   ; preds = %msg_fail.i100.i, %do.end50.i.i
  %retval.0.i101.ph.i = phi i32 [ %spec.store.select.i99.i, %msg_fail.i100.i ], [ -5, %do.end50.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i85.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84.i) #8
  br label %err_reset.i

if.end21.i:                                       ; preds = %if.end25.i96.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i85.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84.i) #8
  %add.ptr22.i = getelementptr i8, ptr %call1.i.i.i.i, i32 14912
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i103.i) #8
  %121 = getelementptr inbounds i8, ptr %msg.i103.i, i32 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4259839, ptr %121, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bl_data.i.i) #8
  %123 = call ptr @memset(ptr %bl_data.i.i, i32 255, i32 64)
  %124 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %addr.i.i, align 2
  %126 = xor i16 %125, 64
  %127 = ptrtoint ptr %msg.i103.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %msg.i103.i, align 4
  %flags.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103.i, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i105.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 1, ptr %flags.i105.i, align 2
  %buf.i107.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103.i, i32 0, i32 3
  %129 = ptrtoint ptr %buf.i107.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %bl_data.i.i, ptr %buf.i107.i, align 4
  %130 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %131 = getelementptr inbounds [3 x i8], ptr %mbuf.i.i.i, i32 0, i32 1
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  br label %for.body.i111.i

for.cond.i.i:                                     ; preds = %if.end15.i.i
  %add23.i.i = add nuw nsw i32 %i.08.i.i, 64
  %cmp.i108.i = icmp ult i32 %i.08.i.i, 448
  br i1 %cmp.i108.i, label %for.cond.i.i.for.body.i111.i_crit_edge, label %for.cond.i.i.iqs5xx_bl_verify.exit.i_crit_edge

for.cond.i.i.iqs5xx_bl_verify.exit.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iqs5xx_bl_verify.exit.i

for.cond.i.i.for.body.i111.i_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i111.i

for.body.i111.i:                                  ; preds = %for.cond.i.i.for.body.i111.i_crit_edge, %if.end21.i
  %i.08.i.i = phi i32 [ 0, %if.end21.i ], [ %add23.i.i, %for.cond.i.i.for.body.i111.i_crit_edge ]
  %add.i109.i = add nuw nsw i32 %i.08.i.i, 48640
  %conv7.i110.i = trunc i32 %add.i109.i to i16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %132 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 262143, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mbuf.i.i.i) #8
  %133 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %addr.i.i, align 2
  %135 = xor i16 %134, 64
  %136 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %msg.i.i.i, align 4
  %137 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %flags.i.i.i, align 2
  %138 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %mbuf.i.i.i, ptr %buf.i.i.i, align 4
  %139 = ptrtoint ptr %mbuf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %mbuf.i.i.i, align 2
  %140 = ptrtoint ptr %131 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %conv7.i110.i, ptr %131, align 1
  %141 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %iqs5xx_bl_cmd.exit.thread.i.i, label %iqs5xx_bl_cmd.exit.i.i

iqs5xx_bl_cmd.exit.thread.i.i:                    ; preds = %for.body.i111.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  %143 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adapter.i.i, align 8
  %call11.i.i = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i103.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i.i)
  %cmp12.not.i.i = icmp eq i32 %call11.i.i, 1
  br i1 %cmp12.not.i.i, label %if.end15.i.i, label %msg_fail.i116.i

iqs5xx_bl_cmd.exit.i.i:                           ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp53.i.i.i = icmp sgt i32 %call.i.i.i, -1
  %spec.store.select.i.i.i = select i1 %cmp53.i.i.i, i32 -5, i32 %call.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef %spec.store.select.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mbuf.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #8
  br label %iqs5xx_bl_verify.exit.i

if.end15.i.i:                                     ; preds = %iqs5xx_bl_cmd.exit.thread.i.i
  %add.ptr.i112.i = getelementptr i8, ptr %add.ptr22.i, i32 %i.08.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %bl_data.i.i, ptr noundef dereferenceable(64) %add.ptr.i112.i, i32 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool18.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool18.not.i.i, label %for.cond.i.i, label %do.end.i114.i

do.end.i114.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.78, i32 noundef %add.i109.i) #11
  br label %iqs5xx_bl_verify.exit.i

msg_fail.i116.i:                                  ; preds = %iqs5xx_bl_cmd.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11.i.i)
  %cmp24.i.i = icmp sgt i32 %call11.i.i, -1
  %spec.store.select.i115.i = select i1 %cmp24.i.i, i32 -5, i32 %call11.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.81, i32 noundef %add.i109.i, i32 noundef %spec.store.select.i115.i) #11
  br label %iqs5xx_bl_verify.exit.i

iqs5xx_bl_verify.exit.i:                          ; preds = %msg_fail.i116.i, %do.end.i114.i, %iqs5xx_bl_cmd.exit.i.i, %for.cond.i.i.iqs5xx_bl_verify.exit.i_crit_edge
  %retval.0.i117.i = phi i32 [ %spec.store.select.i115.i, %msg_fail.i116.i ], [ -5, %do.end.i114.i ], [ %spec.store.select.i.i.i, %iqs5xx_bl_cmd.exit.i.i ], [ 0, %for.cond.i.i.iqs5xx_bl_verify.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bl_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i103.i) #8
  br label %err_reset.i

err_reset.i:                                      ; preds = %iqs5xx_bl_verify.exit.i, %iqs5xx_bl_cmd.exit102.thread.i, %iqs5xx_bl_write.exit.i, %if.then8.i.err_reset.i_crit_edge
  %error.0.i = phi i32 [ %call9.i, %if.then8.i.err_reset.i_crit_edge ], [ %spec.store.select.i80.i, %iqs5xx_bl_write.exit.i ], [ %retval.0.i117.i, %iqs5xx_bl_verify.exit.i ], [ %retval.0.i101.ph.i, %iqs5xx_bl_cmd.exit102.thread.i ]
  %145 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %driver_data.i.i.i, align 4
  %reset_gpio.i.i = getelementptr inbounds %struct.iqs5xx_private, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %148, i32 noundef 1) #8
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %149 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %150, i32 noundef 0) #8
  call void @usleep_range_state(i32 noundef 15000, i32 noundef 15100, i32 noundef 2) #8
  %call24.i = call fastcc i32 @iqs5xx_dev_init(ptr noundef %3) #8
  %151 = ptrtoint ptr %bl_status.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bl_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool27.not.i = icmp eq i8 %152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool29.not.i = icmp eq i32 %call24.i, 0
  %153 = select i1 %tobool27.not.i, i1 %tobool29.not.i, i1 false
  %error_init.0.i = select i1 %153, i32 -22, i32 %call24.i
  %154 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %155) #8
  call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %iqs5xx_fw_file_write.exit

iqs5xx_fw_file_write.exit:                        ; preds = %err_reset.i, %iqs5xx_fw_file_parse.exit.thread120.i, %iqs5xx_fw_file_parse.exit.thread.i
  %error.1.i = phi i32 [ %error.0.i, %err_reset.i ], [ %call.i.i, %iqs5xx_fw_file_parse.exit.thread.i ], [ %error.1.i.ph.i, %iqs5xx_fw_file_parse.exit.thread120.i ]
  %error_init.1.i = phi i32 [ %error_init.0.i, %err_reset.i ], [ 0, %iqs5xx_fw_file_parse.exit.thread.i ], [ 0, %iqs5xx_fw_file_parse.exit.thread120.i ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool33.not.i = icmp eq i32 %error.1.i, 0
  %spec.select.i = select i1 %tobool33.not.i, i32 %error_init.1.i, i32 %error.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool13.not = icmp ne i32 %spec.select.i, 0
  %brmerge = select i1 %tobool13.not, i1 true, i1 %tobool.not
  %call12.mux = select i1 %tobool13.not, i32 %spec.select.i, i32 %count
  br i1 %brmerge, label %iqs5xx_fw_file_write.exit.cleanup_crit_edge, label %if.then17

iqs5xx_fw_file_write.exit.cleanup_crit_edge:      ; preds = %iqs5xx_fw_file_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %iqs5xx_fw_file_write.exit
  %156 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %input, align 4
  %call19 = call i32 @input_register_device(ptr noundef %157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.cleanup_crit_edge, label %do.end

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, i32 noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then17.cleanup_crit_edge, %iqs5xx_fw_file_write.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -36, %if.end.cleanup_crit_edge ], [ %call12.mux, %iqs5xx_fw_file_write.exit.cleanup_crit_edge ], [ %count, %if.then17.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %fw_file) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_info_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bl_status = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %bl_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bl_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_id_info = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_id_info to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_id_info, align 4
  %conv = zext i16 %5 to i32
  %proj_num = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %proj_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %proj_num, align 2
  %conv3 = zext i16 %7 to i32
  %major_ver = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %major_ver, align 4
  %conv5 = zext i8 %9 to i32
  %minor_ver = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %minor_ver, align 1
  %conv7 = zext i8 %11 to i32
  %exp_file = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %exp_file to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %exp_file, align 1
  %conv8 = zext i8 %13 to i32
  %arrayidx10 = getelementptr %struct.iqs5xx_private, ptr %1, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %15 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs5xx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input1 = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.if.end_crit_edge, label %device_may_wakeup.exit

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %lor.lhs.false
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %device_may_wakeup.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %3) #8
  br i1 %call3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call5 = tail call fastcc i32 @iqs5xx_set_state(ptr noundef %8, i8 noundef zeroext 1)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %error.0 = phi i32 [ %call5, %if.then4 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end6 ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs5xx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input1 = getelementptr inbounds %struct.iqs5xx_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.if.end_crit_edge, label %device_may_wakeup.exit

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %lor.lhs.false
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %device_may_wakeup.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %3) #8
  br i1 %call3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call5 = tail call fastcc i32 @iqs5xx_set_state(ptr noundef %8, i8 noundef zeroext 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %error.0 = phi i32 [ %call5, %if.then4 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end6 ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !161, !162, !164, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_iqs5xx__288_1099_iqs5xx_i2c_driver_init6, !1, !"__initcall__kmod_iqs5xx__288_1099_iqs5xx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1099, i32 1}
!2 = !{ptr @__exitcall_iqs5xx_i2c_driver_exit, !1, !"__exitcall_iqs5xx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1101, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1102, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1103, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1092, i32 12}
!12 = !{ptr @iqs5xx_i2c_driver, !13, !"iqs5xx_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1090, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1036, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1039, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @iqs5xx_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @iqs5xx_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @iqs5xx_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1043, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1053, i32 3}
!29 = !{ptr @iqs5xx_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @iqs5xx_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1059, i32 3}
!33 = !{ptr @iqs5xx_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @iqs5xx_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1066, i32 4}
!37 = !{ptr @iqs5xx_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @iqs5xx_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 580, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @iqs5xx_dev_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @iqs5xx_dev_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 591, i32 3}
!46 = !{ptr @iqs5xx_dev_init._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @iqs5xx_dev_init._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 169, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @iqs5xx_read_burst._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @iqs5xx_read_burst._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 352, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @iqs5xx_bl_open._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @iqs5xx_bl_open._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 304, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iqs5xx_bl_cmd._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @iqs5xx_bl_cmd._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 310, i32 3}
!65 = !{ptr @iqs5xx_bl_cmd._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @iqs5xx_bl_cmd._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 321, i32 3}
!69 = !{ptr @iqs5xx_bl_cmd._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @iqs5xx_bl_cmd._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 526, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @iqs5xx_axis_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @iqs5xx_axis_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 546, i32 3}
!78 = !{ptr @iqs5xx_axis_init._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @iqs5xx_axis_init._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 218, i32 2}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iqs5xx_write_burst._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @iqs5xx_write_burst._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 658, i32 3}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @iqs5xx_irq._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @iqs5xx_irq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 662, i32 4}
!92 = !{ptr @iqs5xx_irq._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @iqs5xx_irq._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @iqs5xx_attr_group, !95, !"iqs5xx_attr_group", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 977, i32 37}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 954, i32 8}
!98 = !{ptr @dev_attr_fw_file, !97, !"dev_attr_fw_file", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 928, i32 4}
!101 = !{ptr @fw_file_store._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @fw_file_store._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 726, i32 3}
!105 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @iqs5xx_fw_file_parse._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @iqs5xx_fw_file_parse._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 733, i32 4}
!110 = !{ptr @iqs5xx_fw_file_parse._entry.50, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 741, i32 4}
!114 = !{ptr @iqs5xx_fw_file_parse._entry.53, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.55, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 749, i32 4}
!118 = !{ptr @iqs5xx_fw_file_parse._entry.56, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @iqs5xx_fw_file_parse._entry.59, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 759, i32 4}
!122 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.60, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 767, i32 4}
!125 = !{ptr @iqs5xx_fw_file_parse._entry.61, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.63, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 775, i32 4}
!129 = !{ptr @iqs5xx_fw_file_parse._entry.64, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.66, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 788, i32 4}
!133 = !{ptr @iqs5xx_fw_file_parse._entry.67, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.69, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 799, i32 5}
!137 = !{ptr @iqs5xx_fw_file_parse._entry.70, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.72, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 811, i32 4}
!141 = !{ptr @iqs5xx_fw_file_parse._entry.73, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @iqs5xx_fw_file_parse._entry_ptr.75, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 390, i32 2}
!145 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @iqs5xx_bl_write._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @iqs5xx_bl_write._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 421, i32 4}
!150 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @iqs5xx_bl_verify._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @iqs5xx_bl_verify._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 434, i32 2}
!155 = !{ptr @iqs5xx_bl_verify._entry.80, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @iqs5xx_bl_verify._entry_ptr.82, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @iqs5xx_attrs, !158, !"iqs5xx_attrs", i1 false, i1 false}
!158 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 957, i32 26}
!159 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 955, i32 8}
!161 = !{ptr @dev_attr_fw_info, !160, !"dev_attr_fw_info", i1 false, i1 false}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 946, i32 35}
!164 = !{ptr @iqs5xx_of_match, !165, !"iqs5xx_of_match", i1 false, i1 false}
!165 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1082, i32 34}
!166 = !{ptr @iqs5xx_pm, !167, !"iqs5xx_pm", i1 false, i1 false}
!167 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1020, i32 8}
!168 = !{ptr @iqs5xx_id, !169, !"iqs5xx_id", i1 false, i1 false}
!169 = !{!"../drivers/input/touchscreen/iqs5xx.c", i32 1074, i32 35}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
