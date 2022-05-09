; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ilitek_ts_i2c.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ilitek_ts_i2c.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ilitek_protocol_map = type { i16, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ilitek_ts_data = type { ptr, ptr, ptr, %struct.touchscreen_properties, ptr, %struct.ilitek_protocol_info, [30 x i8], i16, i8, [8 x i8], i32, i32, i32, i32, i32, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.ilitek_protocol_info = type { i16, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_ilitek_ts_i2c__288_686_ilitek_ts_i2c_driver_init6 = internal global ptr @ilitek_ts_i2c_driver_init, section ".initcall6.init", align 4
@ilitek_ts_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ilitek_ts_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ilitek_ts_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ilitek_pm_ops, ptr null, ptr null }, ptr @ilitek_ts_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ilitek_ts_i2c_driver_exit = internal global ptr @ilitek_ts_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [28 x i8] c"ilitek_ts_i2c.author=ILITEK\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"ilitek_ts_i2c.description=ILITEK I2C Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"ilitek_ts_i2c.file=drivers/input/touchscreen/ilitek_ts_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"ilitek_ts_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ilitek_ts\00", [22 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2131\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2132\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2316\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2322\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2323\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2326\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili2521\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@ilitek_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ilitek_suspend, ptr @ilitek_resume, ptr @ilitek_suspend, ptr @ilitek_resume, ptr @ilitek_suspend, ptr @ilitek_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ilitek_ts\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i2c check functionality failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ilitek_ts_i2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/touchscreen/ilitek_ts_i2c.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry_ptr = internal global ptr @ilitek_ts_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"request gpiod failed: %d\00", [39 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry_ptr.9 = internal global ptr @ilitek_ts_i2c_probe._entry.7, section ".printk_index", align 4
@ilitek_ts_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"protocol init failed: %d\00", [39 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry_ptr.12 = internal global ptr @ilitek_ts_i2c_probe._entry.10, section ".printk_index", align 4
@ilitek_ts_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read tp info failed: %d\00", [40 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry_ptr.15 = internal global ptr @ilitek_ts_i2c_probe._entry.13, section ".printk_index", align 4
@ilitek_ts_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"input dev init failed: %d\00", [38 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry_ptr.18 = internal global ptr @ilitek_ts_i2c_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ilitek_touch_irq\00", [47 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request threaded irq failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry_ptr.22 = internal global ptr @ilitek_ts_i2c_probe._entry.20, section ".printk_index", align 4
@ilitek_attrs_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ilitek_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sysfs create group failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ilitek_ts_i2c_probe._entry_ptr.25 = internal global ptr @ilitek_ts_i2c_probe._entry.23, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ptl_func_map = internal constant { [8 x %struct.ilitek_protocol_map], [32 x i8] } { [8 x %struct.ilitek_protocol_map] [%struct.ilitek_protocol_map { i16 66, ptr @.str.26, ptr @api_protocol_get_ptl_ver }, %struct.ilitek_protocol_map { i16 64, ptr @.str.27, ptr @api_protocol_get_fw_ver }, %struct.ilitek_protocol_map { i16 33, ptr @.str.28, ptr @api_protocol_get_scrn_res }, %struct.ilitek_protocol_map { i16 32, ptr @.str.29, ptr @api_protocol_get_tp_res }, %struct.ilitek_protocol_map { i16 192, ptr @.str.30, ptr @api_protocol_get_ic_mode }, %struct.ilitek_protocol_map { i16 97, ptr @.str.31, ptr @api_protocol_get_mcu_ver }, %struct.ilitek_protocol_map { i16 48, ptr @.str.32, ptr @api_protocol_set_ic_sleep }, %struct.ilitek_protocol_map { i16 49, ptr @.str.33, ptr @api_protocol_set_ic_wake }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GET_PTL_VER\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GET_FW_VER\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GET_SCRN_RES\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GET_TP_RES\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GET_IC_MODE\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GET_MOD_VER\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_IC_SLEEP\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_IC_WAKE\00", [20 x i8] zeroinitializer }, align 32
@api_protocol_get_tp_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid MAX_TP:%d from FW\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"api_protocol_get_tp_res\00", [40 x i8] zeroinitializer }, align 32
@api_protocol_get_tp_res._entry_ptr = internal global ptr @api_protocol_get_tp_res._entry, section ".printk_index", align 4
@ilitek_input_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"initialize MT slots failed, err:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ilitek_input_dev_init\00", [42 x i8] zeroinitializer }, align 32
@ilitek_input_dev_init._entry_ptr = internal global ptr @ilitek_input_dev_init._entry, section ".printk_index", align 4
@ilitek_input_dev_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"register input device failed, err:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@ilitek_input_dev_init._entry_ptr.40 = internal global ptr @ilitek_input_dev_init._entry.38, section ".printk_index", align 4
@ilitek_i2c_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%s] err:%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ilitek_i2c_isr\00", [17 x i8] zeroinitializer }, align 32
@ilitek_i2c_isr._entry_ptr = internal global ptr @ilitek_i2c_isr._entry, section ".printk_index", align 4
@ilitek_process_and_report_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"get touch info failed, err:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ilitek_process_and_report_v6\00", [35 x i8] zeroinitializer }, align 32
@ilitek_process_and_report_v6._entry_ptr = internal global ptr @ilitek_process_and_report_v6._entry, section ".printk_index", align 4
@ilitek_process_and_report_v6._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FW report max point:%d > panel info. max:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ilitek_process_and_report_v6._entry_ptr.47 = internal global ptr @ilitek_process_and_report_v6._entry.45, section ".printk_index", align 4
@ilitek_process_and_report_v6._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"get touch info. failed, cnt:%d, err:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@ilitek_process_and_report_v6._entry_ptr.50 = internal global ptr @ilitek_process_and_report_v6._entry.48, section ".printk_index", align 4
@ilitek_process_and_report_v6._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.3, i32 199, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid position, X[%d,%u,%d], Y[%d,%u,%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ilitek_process_and_report_v6._entry_ptr.54 = internal global ptr @ilitek_process_and_report_v6._entry.51, section ".printk_index", align 4
@ilitek_sysfs_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_product_id, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fw version: [%02X%02X.%02X%02X.%02X%02X.%02X%02X]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"product id: [%04X], module: [%s]\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"ilitek_ts_i2c_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 676, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 678, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"ilitek_ts_i2c_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 661, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"ilitek_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 644, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"ilitek_ts_i2c_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 646, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 553, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 564, i32 48 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 567, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 575, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 581, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 587, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 593, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 595, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"ilitek_attrs_group\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 541, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 601, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"ptl_func_map\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 354, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 357, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 361, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 365, i32 31 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 369, i32 29 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 373, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 377, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 381, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 385, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 313, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 482, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 488, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 502, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 162, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 168, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 179, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 197, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"ilitek_sysfs_attrs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 535, i32 26 }
@___asan_gen_.230 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 522, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 516, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 533, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [45 x i8] c"../drivers/input/touchscreen/ilitek_ts_i2c.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 530, i32 35 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ilitek_ts_i2c_driver_exit, ptr @__initcall__kmod_ilitek_ts_i2c__288_686_ilitek_ts_i2c_driver_init6, ptr @api_protocol_get_tp_res._entry, ptr @api_protocol_get_tp_res._entry_ptr, ptr @ilitek_i2c_isr._entry, ptr @ilitek_i2c_isr._entry_ptr, ptr @ilitek_input_dev_init._entry, ptr @ilitek_input_dev_init._entry.38, ptr @ilitek_input_dev_init._entry_ptr, ptr @ilitek_input_dev_init._entry_ptr.40, ptr @ilitek_process_and_report_v6._entry, ptr @ilitek_process_and_report_v6._entry.45, ptr @ilitek_process_and_report_v6._entry.48, ptr @ilitek_process_and_report_v6._entry.51, ptr @ilitek_process_and_report_v6._entry_ptr, ptr @ilitek_process_and_report_v6._entry_ptr.47, ptr @ilitek_process_and_report_v6._entry_ptr.50, ptr @ilitek_process_and_report_v6._entry_ptr.54, ptr @ilitek_ts_i2c_driver_exit, ptr @ilitek_ts_i2c_probe._entry, ptr @ilitek_ts_i2c_probe._entry.10, ptr @ilitek_ts_i2c_probe._entry.13, ptr @ilitek_ts_i2c_probe._entry.16, ptr @ilitek_ts_i2c_probe._entry.20, ptr @ilitek_ts_i2c_probe._entry.23, ptr @ilitek_ts_i2c_probe._entry.7, ptr @ilitek_ts_i2c_probe._entry_ptr, ptr @ilitek_ts_i2c_probe._entry_ptr.12, ptr @ilitek_ts_i2c_probe._entry_ptr.15, ptr @ilitek_ts_i2c_probe._entry_ptr.18, ptr @ilitek_ts_i2c_probe._entry_ptr.22, ptr @ilitek_ts_i2c_probe._entry_ptr.25, ptr @ilitek_ts_i2c_probe._entry_ptr.9, ptr @ilitek_ts_i2c_driver, ptr @.str, ptr @ilitek_ts_i2c_match, ptr @ilitek_pm_ops, ptr @ilitek_ts_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @ilitek_attrs_group, ptr @.str.24, ptr @ptl_func_map, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @ilitek_sysfs_attrs, ptr @dev_attr_firmware_version, ptr @dev_attr_product_id, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_ts_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptl_func_map to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @api_protocol_get_tp_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_input_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_input_dev_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_i2c_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_process_and_report_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_process_and_report_v6._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_process_and_report_v6._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_process_and_report_v6._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilitek_sysfs_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ilitek_ts_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ilitek_ts_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ilitek_ts_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ilitek_ts_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilitek_ts_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %outbuf.i98 = alloca [256 x i8], align 1
  %outbuf.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 3) #6
  %reset_gpio = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %9) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  tail call fastcc void @ilitek_reset(ptr noundef nonnull %call.i, i32 noundef 1000)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %outbuf.i) #6
  %10 = call ptr @memset(ptr %outbuf.i, i32 255, i32 64)
  %ptl_cb_func.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ptl_func_map, ptr %ptl_cb_func.i, align 4
  %reset_time.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %reset_time.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 600, ptr %reset_time.i, align 4
  %call.i.i96 = call i32 @api_protocol_get_ptl_ver(ptr noundef nonnull %call.i, i16 noundef zeroext 66, ptr noundef null, ptr noundef nonnull %outbuf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %tobool.not.i = icmp eq i32 %call.i.i96, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.do.end22_crit_edge

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i:                                         ; preds = %if.end16
  %ver_major.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %ver_major.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ver_major.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp.i97 = icmp eq i8 %14, 3
  br i1 %cmp.i97, label %if.end.i.do.end22_crit_edge, label %lor.lhs.false.i

if.end.i.do.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

lor.lhs.false.i:                                  ; preds = %if.end.i
  %ptl.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %ptl.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ptl.i, align 4
  %17 = and i16 %16, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 262, i16 %17)
  %switch.i = icmp eq i16 %17, 262
  br i1 %switch.i, label %lor.lhs.false.i.do.end22_crit_edge, label %if.end23

lor.lhs.false.i.do.end22_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false.i.do.end22_crit_edge, %if.end.i.do.end22_crit_edge, %if.end16.do.end22_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.do.end22_crit_edge ], [ %call.i.i96, %if.end16.do.end22_crit_edge ], [ -22, %lor.lhs.false.i.do.end22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %outbuf.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %outbuf.i) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %outbuf.i98) #6
  %18 = call ptr @memset(ptr %outbuf.i98, i32 255, i32 256)
  %19 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptl_cb_func.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %func.i.i = getelementptr %struct.ilitek_protocol_map, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func.i.i, align 4
  %call.i.i99 = call i32 %24(ptr noundef nonnull %call.i, i16 noundef zeroext %22, ptr noundef null, ptr noundef nonnull %outbuf.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %tobool.not.i100 = icmp eq i32 %call.i.i99, 0
  br i1 %tobool.not.i100, label %if.end.i101, label %if.end23.ilitek_read_tp_info.exit.thread_crit_edge

if.end23.ilitek_read_tp_info.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_read_tp_info.exit.thread

if.end.i101:                                      ; preds = %if.end23
  %25 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptl_cb_func.i, align 4
  %arrayidx.i.i = getelementptr %struct.ilitek_protocol_map, ptr %26, i32 5
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i.i, align 4
  %func.i2.i = getelementptr %struct.ilitek_protocol_map, ptr %26, i32 5, i32 2
  %29 = ptrtoint ptr %func.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func.i2.i, align 4
  %call.i3.i = call i32 %30(ptr noundef nonnull %call.i, i16 noundef zeroext %28, ptr noundef null, ptr noundef nonnull %outbuf.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool3.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i101.ilitek_read_tp_info.exit.thread_crit_edge

if.end.i101.ilitek_read_tp_info.exit.thread_crit_edge: ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_read_tp_info.exit.thread

if.end5.i:                                        ; preds = %if.end.i101
  %31 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptl_cb_func.i, align 4
  %arrayidx.i5.i = getelementptr %struct.ilitek_protocol_map, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i5.i, align 4
  %func.i6.i = getelementptr %struct.ilitek_protocol_map, ptr %32, i32 1, i32 2
  %35 = ptrtoint ptr %func.i6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %func.i6.i, align 4
  %call.i7.i = call i32 %36(ptr noundef nonnull %call.i, i16 noundef zeroext %34, ptr noundef null, ptr noundef nonnull %outbuf.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool8.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool8.not.i, label %if.then12.i, label %if.end5.i.ilitek_read_tp_info.exit.thread_crit_edge

if.end5.i.ilitek_read_tp_info.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_read_tp_info.exit.thread

if.then12.i:                                      ; preds = %if.end5.i
  %37 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptl_cb_func.i, align 4
  %arrayidx.i9.i = getelementptr %struct.ilitek_protocol_map, ptr %38, i32 2
  %39 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i9.i, align 4
  %func.i10.i = getelementptr %struct.ilitek_protocol_map, ptr %38, i32 2, i32 2
  %41 = ptrtoint ptr %func.i10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func.i10.i, align 4
  %call.i11.i = call i32 %42(ptr noundef nonnull %call.i, i16 noundef zeroext %40, ptr noundef null, ptr noundef nonnull %outbuf.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool15.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool15.not.i, label %if.end18.i, label %if.then12.i.ilitek_read_tp_info.exit.thread_crit_edge

if.then12.i.ilitek_read_tp_info.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_read_tp_info.exit.thread

if.end18.i:                                       ; preds = %if.then12.i
  %43 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ptl_cb_func.i, align 4
  %arrayidx.i13.i = getelementptr %struct.ilitek_protocol_map, ptr %44, i32 3
  %45 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i13.i, align 4
  %func.i14.i = getelementptr %struct.ilitek_protocol_map, ptr %44, i32 3, i32 2
  %47 = ptrtoint ptr %func.i14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %func.i14.i, align 4
  %call.i15.i = call i32 %48(ptr noundef nonnull %call.i, i16 noundef zeroext %46, ptr noundef null, ptr noundef nonnull %outbuf.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool21.not.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool21.not.i, label %ilitek_read_tp_info.exit, label %if.end18.i.ilitek_read_tp_info.exit.thread_crit_edge

if.end18.i.ilitek_read_tp_info.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_read_tp_info.exit.thread

ilitek_read_tp_info.exit.thread:                  ; preds = %if.end18.i.ilitek_read_tp_info.exit.thread_crit_edge, %if.then12.i.ilitek_read_tp_info.exit.thread_crit_edge, %if.end5.i.ilitek_read_tp_info.exit.thread_crit_edge, %if.end.i101.ilitek_read_tp_info.exit.thread_crit_edge, %if.end23.ilitek_read_tp_info.exit.thread_crit_edge
  %retval.0.i102.ph = phi i32 [ %call.i15.i, %if.end18.i.ilitek_read_tp_info.exit.thread_crit_edge ], [ %call.i11.i, %if.then12.i.ilitek_read_tp_info.exit.thread_crit_edge ], [ %call.i7.i, %if.end5.i.ilitek_read_tp_info.exit.thread_crit_edge ], [ %call.i3.i, %if.end.i101.ilitek_read_tp_info.exit.thread_crit_edge ], [ %call.i.i99, %if.end23.ilitek_read_tp_info.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %outbuf.i98) #6
  br label %do.end29

ilitek_read_tp_info.exit:                         ; preds = %if.end18.i
  %49 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptl_cb_func.i, align 4
  %arrayidx.i17.i = getelementptr %struct.ilitek_protocol_map, ptr %50, i32 4
  %51 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i17.i, align 4
  %func.i18.i = getelementptr %struct.ilitek_protocol_map, ptr %50, i32 4, i32 2
  %53 = ptrtoint ptr %func.i18.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %func.i18.i, align 4
  %call.i19.i = call i32 %54(ptr noundef nonnull %call.i, i16 noundef zeroext %52, ptr noundef null, ptr noundef nonnull %outbuf.i98) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %outbuf.i98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool25.not = icmp eq i32 %call.i19.i, 0
  br i1 %tobool25.not, label %if.end30, label %ilitek_read_tp_info.exit.do.end29_crit_edge

ilitek_read_tp_info.exit.do.end29_crit_edge:      ; preds = %ilitek_read_tp_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

do.end29:                                         ; preds = %ilitek_read_tp_info.exit.do.end29_crit_edge, %ilitek_read_tp_info.exit.thread
  %retval.0.i102112 = phi i32 [ %retval.0.i102.ph, %ilitek_read_tp_info.exit.thread ], [ %call.i19.i, %ilitek_read_tp_info.exit.do.end29_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i102112) #9
  br label %cleanup

if.end30:                                         ; preds = %ilitek_read_tp_info.exit
  %call.i103 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %tobool.not.i104 = icmp eq ptr %call.i103, null
  br i1 %tobool.not.i104, label %if.end30.do.end36_crit_edge, label %if.end.i105

if.end30.do.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.end.i105:                                      ; preds = %if.end30
  %input_dev.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 2
  %55 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i103, ptr %input_dev.i, align 4
  %56 = ptrtoint ptr %call.i103 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str, ptr %call.i103, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i103, i32 0, i32 3
  %57 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 24, ptr %id.i, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i103, i32 0, i32 4
  %58 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %propbit.i, align 4
  %or.i.i = or i32 %59, 2
  store i32 %or.i.i, ptr %propbit.i, align 4
  %screen_min_x.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 13
  %60 = ptrtoint ptr %screen_min_x.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %screen_min_x.i, align 4
  %screen_max_x.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 11
  %62 = ptrtoint ptr %screen_max_x.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %screen_max_x.i, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call.i103, i32 noundef 53, i32 noundef %61, i32 noundef %63, i32 noundef 0, i32 noundef 0) #6
  %screen_min_y.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 14
  %64 = ptrtoint ptr %screen_min_y.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %screen_min_y.i, align 4
  %screen_max_y.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 12
  %66 = ptrtoint ptr %screen_max_y.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %screen_max_y.i, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call.i103, i32 noundef 54, i32 noundef %65, i32 noundef %67, i32 noundef 0, i32 noundef 0) #6
  %prop.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 3
  call void @touchscreen_parse_properties(ptr noundef nonnull %call.i103, i1 noundef zeroext true, ptr noundef %prop.i) #6
  %max_tp.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %call.i, i32 0, i32 15
  %68 = ptrtoint ptr %max_tp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_tp.i, align 4
  %call1.i = call i32 @input_mt_init_slots(ptr noundef nonnull %call.i103, i32 noundef %69, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call1.i) #9
  br label %do.end36

if.end4.i:                                        ; preds = %if.end.i105
  %call5.i = call i32 @input_register_device(ptr noundef nonnull %call.i103) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end37, label %do.end10.i

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %call5.i) #9
  br label %do.end36

do.end36:                                         ; preds = %do.end10.i, %do.end.i, %if.end30.do.end36_crit_edge
  %retval.0.i106.ph = phi i32 [ -12, %if.end30.do.end36_crit_edge ], [ %call5.i, %do.end10.i ], [ %call1.i, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i106.ph) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end4.i
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  %call39 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %73, ptr noundef null, ptr noundef nonnull @ilitek_i2c_isr, i32 noundef 8192, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call39) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %call46 = call i32 @devm_device_add_group(ptr noundef %dev1, ptr noundef nonnull @ilitek_attrs_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %do.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call46) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end45.cleanup_crit_edge, %do.end44, %do.end36, %do.end29, %do.end22, %if.then10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %9, %if.then10 ], [ %retval.0.i.ph, %do.end22 ], [ %retval.0.i102112, %do.end29 ], [ %retval.0.i106.ph, %do.end36 ], [ %call39, %do.end44 ], [ %call46, %do.end51 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ilitek_reset(ptr nocapture noundef readonly %ts, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool17.not30 = icmp eq i32 %delay, 0
  br i1 %tobool17.not30, label %if.then.if.end_crit_edge, label %if.then.while.body18_crit_edge

if.then.while.body18_crit_edge:                   ; preds = %if.then
  br label %while.body18

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body18:                                     ; preds = %while.body18.while.body18_crit_edge, %if.then.while.body18_crit_edge
  %__ms14.031 = phi i32 [ %dec16, %while.body18.while.body18_crit_edge ], [ %delay, %if.then.while.body18_crit_edge ]
  %dec16 = add i32 %__ms14.031, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  %tobool17.not = icmp eq i32 %dec16, 0
  br i1 %tobool17.not, label %while.body18.if.end_crit_edge, label %while.body18.while.body18_crit_edge

while.body18.while.body18_crit_edge:              ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body18

while.body18.if.end_crit_edge:                    ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %while.body18.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilitek_i2c_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %msgs.i113.i = alloca [2 x %struct.i2c_msg], align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf.i) #6
  %0 = call ptr @memset(ptr %buf.i, i32 255, i32 512)
  %input_dev.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %dev_id, i32 0, i32 2
  %1 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %input_dev.i, align 4
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i.i, align 2
  %9 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %5, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %13 = load i16, ptr %addr2.i.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 64, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf8.i.i, align 4
  %adapter51.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter51.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter51.i.i, align 8
  %call53.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef %arrayinit.element.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %cmp54.i.i = icmp slt i32 %call53.i.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  br i1 %cmp54.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.43, i32 noundef %call53.i.i) #9
  br label %ilitek_process_and_report_v6.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr inbounds [512 x i8], ptr %buf.i, i32 0, i32 61
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %21 to i32
  %max_tp.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %dev_id, i32 0, i32 15
  %22 = ptrtoint ptr %max_tp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_tp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv.i)
  %cmp.i = icmp slt i32 %23, %conv.i
  br i1 %cmp.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.46, i32 noundef %conv.i, i32 noundef %23) #9
  br label %ilitek_process_and_report_v6.exit

if.end8.i:                                        ; preds = %if.end.i
  %24 = zext i8 %21 to i16
  %div.lhs.trunc.i = add nuw nsw i16 %24, 9
  %div132.i = udiv i16 %div.lhs.trunc.i, 10
  %div.zext.i = zext i16 %div132.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %21)
  %cmp9133.i = icmp ugt i8 %21, 10
  br i1 %cmp9133.i, label %for.body.lr.ph.i, label %if.end8.i.for.cond19.preheader.i_crit_edge

if.end8.i.for.cond19.preheader.i_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond19.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %25 = getelementptr inbounds i8, ptr %msgs.i113.i, i32 4
  %flags.i115.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i113.i, i32 0, i32 1
  %buf.i117.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i113.i, i32 0, i32 3
  %arrayinit.element.i118.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i113.i, i32 1
  %flags5.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i113.i, i32 1, i32 1
  %len6.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i113.i, i32 1, i32 2
  %buf8.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i113.i, i32 1, i32 3
  %umax.i = call i32 @llvm.umax.i32(i32 %div.zext.i, i32 2) #6
  br label %for.body.i

for.cond19.preheader.i:                           ; preds = %for.inc.i.for.cond19.preheader.i_crit_edge, %if.end8.i.for.cond19.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp20135.not.i = icmp eq i8 %21, 0
  br i1 %cmp20135.not.i, label %for.cond19.preheader.i.ilitek_process_and_report_v6.exit_crit_edge, label %for.body22.lr.ph.i

for.cond19.preheader.i.ilitek_process_and_report_v6.exit_crit_edge: ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_process_and_report_v6.exit

for.body22.lr.ph.i:                               ; preds = %for.cond19.preheader.i
  %screen_max_x.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %dev_id, i32 0, i32 11
  %screen_min_x.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %dev_id, i32 0, i32 13
  %screen_max_y.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %dev_id, i32 0, i32 12
  %screen_min_y.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %dev_id, i32 0, i32 14
  %prop.i.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %dev_id, i32 0, i32 3
  br label %for.body22.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0134.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.0134.i, 6
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %mul.i
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i113.i) #6
  %28 = call ptr @memset(ptr %25, i32 255, i32 16)
  %addr2.i114.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %addr2.i114.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr2.i114.i, align 2
  %31 = ptrtoint ptr %msgs.i113.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %msgs.i113.i, align 4
  %32 = ptrtoint ptr %flags.i115.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i115.i, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %25, align 4
  %34 = ptrtoint ptr %buf.i117.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %buf.i117.i, align 4
  %35 = load i16, ptr %addr2.i114.i, align 2
  %36 = ptrtoint ptr %arrayinit.element.i118.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayinit.element.i118.i, align 4
  %37 = ptrtoint ptr %flags5.i119.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags5.i119.i, align 2
  %38 = ptrtoint ptr %len6.i120.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 64, ptr %len6.i120.i, align 4
  %39 = ptrtoint ptr %buf8.i121.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i, ptr %buf8.i121.i, align 4
  %adapter51.i122.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %40 = ptrtoint ptr %adapter51.i122.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter51.i122.i, align 8
  %call53.i123.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef %arrayinit.element.i118.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i123.i)
  %cmp54.i124.i = icmp slt i32 %call53.i123.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i113.i) #6
  br i1 %cmp54.i124.i, label %do.end17.i, label %for.inc.i

do.end17.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.49, i32 noundef %div.zext.i, i32 noundef %call53.i123.i) #9
  br label %ilitek_process_and_report_v6.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0134.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.cond19.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.cond19.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond19.preheader.i

for.body22.i:                                     ; preds = %for.inc66.i.for.body22.i_crit_edge, %for.body22.lr.ph.i
  %i.1136.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %inc67.i, %for.inc66.i.for.body22.i_crit_edge ]
  %mul23.i = mul nuw nsw i32 %i.1136.i, 5
  %add24.i = add nuw nsw i32 %mul23.i, 1
  %arrayidx25.i = getelementptr [512 x i8], ptr %buf.i, i32 0, i32 %add24.i
  %42 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %43 to i32
  %and.i = and i32 %conv26.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %for.body22.i.for.inc66.i_crit_edge, label %if.end29.i

for.body22.i.for.inc66.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.i

if.end29.i:                                       ; preds = %for.body22.i
  %and34.i = and i32 %conv26.i, 63
  %add.ptr37.i = getelementptr i8, ptr %buf.i, i32 %mul23.i
  %add.ptr38.i = getelementptr i8, ptr %add.ptr37.i, i32 2
  %44 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %add.ptr38.i, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45) #6
  %conv40.i = zext i16 %46 to i32
  %add.ptr44.i = getelementptr i8, ptr %add.ptr37.i, i32 4
  %47 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr44.i, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #6
  %conv46.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %screen_max_x.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %screen_max_x.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv40.i)
  %cmp47.i = icmp ult i32 %51, %conv40.i
  br i1 %cmp47.i, label %if.end29.i.do.end60.i_crit_edge, label %lor.lhs.false.i

if.end29.i.do.end60.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60.i

lor.lhs.false.i:                                  ; preds = %if.end29.i
  %52 = ptrtoint ptr %screen_min_x.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %screen_min_x.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv40.i)
  %cmp49.i = icmp ugt i32 %53, %conv40.i
  br i1 %cmp49.i, label %lor.lhs.false.i.do.end60.i_crit_edge, label %lor.lhs.false51.i

lor.lhs.false.i.do.end60.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60.i

lor.lhs.false51.i:                                ; preds = %lor.lhs.false.i
  %54 = ptrtoint ptr %screen_max_y.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %screen_max_y.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv46.i)
  %cmp52.i = icmp ult i32 %55, %conv46.i
  br i1 %cmp52.i, label %lor.lhs.false51.i.do.end60.i_crit_edge, label %lor.lhs.false54.i

lor.lhs.false51.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60.i

lor.lhs.false54.i:                                ; preds = %lor.lhs.false51.i
  %56 = ptrtoint ptr %screen_min_y.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %screen_min_y.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv46.i)
  %cmp55.i = icmp ugt i32 %57, %conv46.i
  br i1 %cmp55.i, label %lor.lhs.false54.i.do.end60.i_crit_edge, label %if.end65.i

lor.lhs.false54.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60.i

do.end60.i:                                       ; preds = %lor.lhs.false54.i.do.end60.i_crit_edge, %lor.lhs.false51.i.do.end60.i_crit_edge, %lor.lhs.false.i.do.end60.i_crit_edge, %if.end29.i.do.end60.i_crit_edge
  %58 = ptrtoint ptr %screen_min_x.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %screen_min_x.i, align 4
  %60 = ptrtoint ptr %screen_min_y.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %screen_min_y.i, align 4
  %62 = ptrtoint ptr %screen_max_y.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %screen_max_y.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.52, i32 noundef %59, i32 noundef %conv40.i, i32 noundef %51, i32 noundef %61, i32 noundef %conv46.i, i32 noundef %63) #9
  br label %for.inc66.i

if.end65.i:                                       ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input_dev.i, align 4
  call void @input_event(ptr noundef %65, i32 noundef 3, i32 noundef 47, i32 noundef %and34.i) #6
  %call.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %65, i32 noundef 0, i1 noundef zeroext true) #6
  call void @touchscreen_report_pos(ptr noundef %65, ptr noundef %prop.i.i, i32 noundef %conv40.i, i32 noundef %conv46.i, i1 noundef zeroext true) #6
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %if.end65.i, %do.end60.i, %for.body22.i.for.inc66.i_crit_edge
  %inc67.i = add nuw nsw i32 %i.1136.i, 1
  %exitcond138.not.i = icmp eq i32 %inc67.i, %conv.i
  br i1 %exitcond138.not.i, label %for.inc66.i.ilitek_process_and_report_v6.exit_crit_edge, label %for.inc66.i.for.body22.i_crit_edge

for.inc66.i.for.body22.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i

for.inc66.i.ilitek_process_and_report_v6.exit_crit_edge: ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_process_and_report_v6.exit

ilitek_process_and_report_v6.exit:                ; preds = %for.inc66.i.ilitek_process_and_report_v6.exit_crit_edge, %do.end17.i, %for.cond19.preheader.i.ilitek_process_and_report_v6.exit_crit_edge, %do.end6.i, %do.end.i
  %error.1.i = phi i32 [ %call53.i.i, %do.end.i ], [ -22, %do.end6.i ], [ %call53.i123.i, %do.end17.i ], [ 0, %for.cond19.preheader.i.ilitek_process_and_report_v6.exit_crit_edge ], [ 0, %for.inc66.i.ilitek_process_and_report_v6.exit_crit_edge ]
  call void @input_mt_sync_frame(ptr noundef %2) #6
  call void @input_event(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %cmp = icmp slt i32 %error.1.i, 0
  br i1 %cmp, label %do.end, label %ilitek_process_and_report_v6.exit.cleanup_crit_edge

ilitek_process_and_report_v6.exit.cleanup_crit_edge: ; preds = %ilitek_process_and_report_v6.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %ilitek_process_and_report_v6.exit
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %error.1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ilitek_process_and_report_v6.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %ilitek_process_and_report_v6.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_get_ptl_ver(ptr nocapture noundef %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr noundef %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outbuf, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %while.body.i.preheader

entry.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

while.body.i.preheader:                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  %25 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter21.i, align 8
  %call53.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef %arrayinit.element.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %if.end

while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

ilitek_i2c_write_and_read.exit.thread:            ; preds = %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call53.i, %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge ], [ %call23.i, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end:                                           ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %27 = ptrtoint ptr %outbuf to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %outbuf, align 1
  %ptl = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 5
  %29 = ptrtoint ptr %ptl to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %ptl, align 4
  %30 = load i8, ptr %outbuf, align 1
  %ver_major = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %ver_major to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %ver_major, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ilitek_i2c_write_and_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %ilitek_i2c_write_and_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_get_fw_ver(ptr nocapture noundef %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr noundef %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outbuf, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %while.body.i.preheader

entry.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

while.body.i.preheader:                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  %25 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter21.i, align 8
  %call53.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef %arrayinit.element.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %if.end

while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

ilitek_i2c_write_and_read.exit.thread:            ; preds = %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call53.i, %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge ], [ %call23.i, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end:                                           ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %firmware_ver = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 9
  %27 = ptrtoint ptr %outbuf to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %outbuf, align 1
  %29 = ptrtoint ptr %firmware_ver to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %firmware_ver, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ilitek_i2c_write_and_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %ilitek_i2c_write_and_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_get_scrn_res(ptr nocapture noundef %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr noundef %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outbuf, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %while.body.i.preheader

entry.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

while.body.i.preheader:                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  %25 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter21.i, align 8
  %call53.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef %arrayinit.element.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %if.end

while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

ilitek_i2c_write_and_read.exit.thread:            ; preds = %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call53.i, %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge ], [ %call23.i, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end:                                           ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %27 = ptrtoint ptr %outbuf to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %outbuf, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #6
  %conv2 = zext i16 %29 to i32
  %screen_min_x = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 13
  %30 = ptrtoint ptr %screen_min_x to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv2, ptr %screen_min_x, align 4
  %add.ptr = getelementptr i8, ptr %outbuf, i32 2
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32) #6
  %conv4 = zext i16 %33 to i32
  %screen_min_y = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 14
  %34 = ptrtoint ptr %screen_min_y to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv4, ptr %screen_min_y, align 4
  %add.ptr5 = getelementptr i8, ptr %outbuf, i32 4
  %35 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %add.ptr5, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #6
  %conv7 = zext i16 %37 to i32
  %screen_max_x = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 11
  %38 = ptrtoint ptr %screen_max_x to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv7, ptr %screen_max_x, align 4
  %add.ptr8 = getelementptr i8, ptr %outbuf, i32 6
  %39 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %add.ptr8, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #6
  %conv10 = zext i16 %41 to i32
  %screen_max_y = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 12
  %42 = ptrtoint ptr %screen_max_y to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv10, ptr %screen_max_y, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ilitek_i2c_write_and_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %ilitek_i2c_write_and_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_get_tp_res(ptr nocapture noundef %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr noundef %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 15, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outbuf, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %while.body.i.preheader

entry.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

while.body.i.preheader:                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  %25 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter21.i, align 8
  %call53.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef %arrayinit.element.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %if.end

while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

ilitek_i2c_write_and_read.exit.thread:            ; preds = %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call53.i, %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge ], [ %call23.i, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end:                                           ; preds = %while.body.i.preheader
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %arrayidx1 = getelementptr i8, ptr %outbuf, i32 8
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %28 to i32
  %max_tp = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 15
  %29 = ptrtoint ptr %max_tp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv2, ptr %max_tp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %28)
  %cmp = icmp ugt i8 %28, 40
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %conv2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %ilitek_i2c_write_and_read.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %ilitek_i2c_write_and_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_get_ic_mode(ptr nocapture noundef %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr noundef %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outbuf, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %while.body.i.preheader

entry.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

while.body.i.preheader:                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  %25 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter21.i, align 8
  %call53.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef %arrayinit.element.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %if.end

while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

ilitek_i2c_write_and_read.exit.thread:            ; preds = %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call53.i, %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge ], [ %call23.i, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end:                                           ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %27 = ptrtoint ptr %outbuf to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %outbuf, align 1
  %ic_mode = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 8
  %29 = ptrtoint ptr %ic_mode to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ic_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ilitek_i2c_write_and_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %ilitek_i2c_write_and_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_get_mcu_ver(ptr nocapture noundef %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr noundef %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 32, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outbuf, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %while.body.i.preheader

entry.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

while.body.i.preheader:                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  %25 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter21.i, align 8
  %call53.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef %arrayinit.element.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, label %if.end

while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %ilitek_i2c_write_and_read.exit.thread

ilitek_i2c_write_and_read.exit.thread:            ; preds = %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call53.i, %while.body.i.preheader.ilitek_i2c_write_and_read.exit.thread_crit_edge ], [ %call23.i, %entry.ilitek_i2c_write_and_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  br label %cleanup

if.end:                                           ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  %27 = ptrtoint ptr %outbuf to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %outbuf, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #6
  %mcu_ver = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 7
  %30 = ptrtoint ptr %mcu_ver to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %mcu_ver, align 2
  %product_id = getelementptr inbounds %struct.ilitek_ts_data, ptr %ts, i32 0, i32 6
  %31 = call ptr @memset(ptr %product_id, i32 0, i32 30)
  %add.ptr = getelementptr i8, ptr %outbuf, i32 6
  %32 = call ptr @memcpy(ptr %product_id, ptr %add.ptr, i32 26)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ilitek_i2c_write_and_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %ilitek_i2c_write_and_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_set_ic_sleep(ptr nocapture noundef readonly %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr nocapture noundef readnone %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  %20 = call i32 @llvm.smin.i32(i32 %call23.i, i32 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @api_protocol_set_ic_wake(ptr nocapture noundef readonly %ts, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %inbuf, ptr nocapture noundef readnone %outbuf) #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %conv = trunc i16 %cmd to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %buf8.i, align 4
  %adapter21.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter21.i, align 8
  %call23.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  %20 = call i32 @llvm.smin.i32(i32 %call23.i, i32 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #6
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %firmware_ver = getelementptr inbounds %struct.ilitek_ts_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %firmware_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %firmware_ver, align 1
  %conv = zext i8 %3 to i32
  %arrayidx2 = getelementptr %struct.ilitek_ts_data, ptr %1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %arrayidx5 = getelementptr %struct.ilitek_ts_data, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %arrayidx8 = getelementptr %struct.ilitek_ts_data, ptr %1, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %arrayidx11 = getelementptr %struct.ilitek_ts_data, ptr %1, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %arrayidx14 = getelementptr %struct.ilitek_ts_data, ptr %1, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %arrayidx17 = getelementptr %struct.ilitek_ts_data, ptr %1, i32 0, i32 9, i32 6
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %arrayidx20 = getelementptr %struct.ilitek_ts_data, ptr %1, i32 0, i32 9, i32 7
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21) #6
  ret i32 %call22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mcu_ver = getelementptr inbounds %struct.ilitek_ts_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mcu_ver to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mcu_ver, align 2
  %conv = zext i16 %3 to i32
  %product_id = getelementptr inbounds %struct.ilitek_ts_data, ptr %1, i32 0, i32 6
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.58, i32 noundef %conv, ptr noundef %product_id) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilitek_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end4_crit_edge

device_may_wakeup.exit.if.end4_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ptl_cb_func.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptl_cb_func.i, align 4
  %arrayidx.i = getelementptr %struct.ilitek_protocol_map, ptr %8, i32 6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 4
  %func.i = getelementptr %struct.ilitek_protocol_map, ptr %8, i32 6, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func.i, align 4
  %call.i = tail call i32 %12(ptr noundef %1, i16 noundef zeroext %10, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %device_may_wakeup.exit.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilitek_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end4_crit_edge

device_may_wakeup.exit.if.end4_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ptl_cb_func.i = getelementptr inbounds %struct.ilitek_ts_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ptl_cb_func.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptl_cb_func.i, align 4
  %arrayidx.i = getelementptr %struct.ilitek_protocol_map, ptr %6, i32 7
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 4
  %func.i = getelementptr %struct.ilitek_protocol_map, ptr %6, i32 7, i32 2
  %9 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, i16 noundef zeroext %8, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %reset_time = getelementptr inbounds %struct.ilitek_ts_data, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %reset_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_time, align 4
  tail call fastcc void @ilitek_reset(ptr noundef %1, i32 noundef %12)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %device_may_wakeup.exit.if.end4_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !112, !114, !116, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_ilitek_ts_i2c__288_686_ilitek_ts_i2c_driver_init6, !1, !"__initcall__kmod_ilitek_ts_i2c__288_686_ilitek_ts_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 686, i32 1}
!2 = !{ptr @__exitcall_ilitek_ts_i2c_driver_exit, !1, !"__exitcall_ilitek_ts_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 688, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 689, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 690, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 678, i32 11}
!12 = !{ptr @ilitek_ts_i2c_driver, !13, !"ilitek_ts_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 676, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 553, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ilitek_ts_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ilitek_ts_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 564, i32 48}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 567, i32 3}
!26 = !{ptr @ilitek_ts_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ilitek_ts_i2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 575, i32 3}
!30 = !{ptr @ilitek_ts_i2c_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ilitek_ts_i2c_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 581, i32 3}
!34 = !{ptr @ilitek_ts_i2c_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ilitek_ts_i2c_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 587, i32 3}
!38 = !{ptr @ilitek_ts_i2c_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ilitek_ts_i2c_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 593, i32 8}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 595, i32 3}
!44 = !{ptr @ilitek_ts_i2c_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ilitek_ts_i2c_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 601, i32 3}
!48 = !{ptr @ilitek_ts_i2c_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ilitek_ts_i2c_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 357, i32 30}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 361, i32 29}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 365, i32 31}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 369, i32 29}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 373, i32 30}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 377, i32 30}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 381, i32 31}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 385, i32 30}
!66 = !{ptr @ptl_func_map, !67, !"ptl_func_map", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 354, i32 41}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 313, i32 3}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @api_protocol_get_tp_res._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @api_protocol_get_tp_res._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 482, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ilitek_input_dev_init._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ilitek_input_dev_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 488, i32 3}
!80 = !{ptr @ilitek_input_dev_init._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ilitek_input_dev_init._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 502, i32 3}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ilitek_i2c_isr._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ilitek_i2c_isr._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 162, i32 3}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ilitek_process_and_report_v6._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ilitek_process_and_report_v6._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 168, i32 3}
!94 = !{ptr @ilitek_process_and_report_v6._entry.45, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ilitek_process_and_report_v6._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 179, i32 4}
!98 = !{ptr @ilitek_process_and_report_v6._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ilitek_process_and_report_v6._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 197, i32 4}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ilitek_process_and_report_v6._entry.51, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ilitek_process_and_report_v6._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @ilitek_attrs_group, !106, !"ilitek_attrs_group", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 541, i32 31}
!107 = !{ptr @ilitek_sysfs_attrs, !108, !"ilitek_sysfs_attrs", i1 false, i1 false}
!108 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 535, i32 26}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 522, i32 8}
!111 = !{ptr @dev_attr_firmware_version, !110, !"dev_attr_firmware_version", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 516, i32 5}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 533, i32 8}
!116 = !{ptr @dev_attr_product_id, !115, !"dev_attr_product_id", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 530, i32 35}
!119 = !{ptr @ilitek_ts_i2c_match, !120, !"ilitek_ts_i2c_match", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 661, i32 34}
!121 = !{ptr @ilitek_pm_ops, !122, !"ilitek_pm_ops", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 644, i32 8}
!123 = !{ptr @ilitek_ts_i2c_id, !124, !"ilitek_ts_i2c_id", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/ilitek_ts_i2c.c", i32 646, i32 35}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
